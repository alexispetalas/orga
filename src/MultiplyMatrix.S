#include <mips/regdef.h>
#include <sys/syscall.h>

#define SF 24
#define FP 20
#define GP 16
#define fp $30

#define COL_MAT_1 24
#define COL_MAT_2 28
#define ROW_MAT_1 32
#define ROW_MAT_2 36
#define VAL_MAT_1 40
#define VAL_MAT_2 44
#define VAL_MAT_RES 48  
#define ROW1 12
#define COL2 8
#define K 4
#define SUM 0 

.text
.align 2


.globl  multiplyMatrixes
.ent    multiplyMatrixes

multiplyMatrixes:
        .frame  fp,SF,ra
        .set    noreorder
        .cpload t9
        .set    reorder

        #stack frame creation
        subu    sp,sp,SF

        .cprestore GP
        sw fp, FP(sp)
        move fp, sp
        
        #Guardo los argumentos
        sw a0, ROW_MAT_1(fp)       # FilasM1
        sw a1, COL_MAT_1(fp)       # ColumnasM1
        sw a2, ROW_MAT_2(fp)       # FilasM2
        sw a3, COL_MAT_2(fp)       # ColumnasM2
    	#    sw t7, VAL_MAT_1(fp)       # ValuesM1
   	#    sw t8, VAL_MAT_2(fp)       # ValuesM2
  	#    sw t9, VAL_MAT_RES(fp)     # ValuesMR

		sw zero, ROW1(fp)			# row1 = 0
		lw t0, ROW_MAT_1(fp)		# t0 = filasM1
		lw t1, ROW1(fp)			# t1 = row1
		
FOR_ROWS:								# for(row1=0# row1<filasM1# ++row1)
		beq 	t1, t0, EXIT_FOR_ROWS 	# if row1 == filas1 we are done
		sw		zero, COL2(fp)			# col2 = 0
		lw		t2, COL_MAT_2(fp)		# t2 = ColumnasM2
		lw		t3, COL2(fp)			# t3 = column2

FOR_COLS:
		beq		t3, t2, EXIT_FOR_COLS	# for(column2=0# column2<columnasM2# ++column2)
		sw		zero, SUM(fp)			# sum = 0
		l.s		$f4, SUM(fp)
		sw		zero, K(fp) 			# k=0
		lw		t4, COL_MAT_1(fp)		# t4 = ColumnasM1
		lw		t5, K(fp)				# t5 = k
		#j EXIT_FOR_SUM
FOR_SUM:
		beq		t5, t4, EXIT_FOR_SUM	# for(k=0# k<columnasM1# k++)
		#valoresM1[(row1*columnasM1) + k]
		lw	t6, VAL_MAT_1(fp )		# valoresM1
		mul		t7, t1, t4				# t7 = row1*columnasM1
		addu	t7, t7, t5				# t7 = (row1*columnasM1) + k
		sll		t7, t7, 2				# Aligned t7 * 4
		addu	t6, t6, t7				# valoresM1[(row1*columnasM1) + k]
		l.s   	$f0, 0(t6)				# f0 = valoresM1[(row1*columnasM1) + k]
		#valoresM2[(k *columnasM2) + column2]
		lw	t6, VAL_MAT_2(fp)			# valoresM2
		mul		t7, t5, t2				# t7 = k *columnasM2
		addu	t7, t7, t3				# (k *columnasM2) + column2
		sll		t7, t7, 2				# Aligned t7 * 4
		addu	t6, t6, t7				# valoresM2[(k *columnasM2) + column2]
		l.s   	$f2, 0(t6)					# f1 = valoresM2[(k *columnasM2) + column2]
		#sum=sum + valoresM1[(row1*columnasM1) + k] * valoresM2[(k *columnasM2) + column2]#
		mul.s	$f6, $f0, $f2				# valoresM1[(row1*columnasM1) + k] * valoresM2[(k *columnasM2) + column2]
		add.s	$f4, $f4, $f6				# sum=sum + valoresM1[(row1*columnasM1) + k] * valoresM2[(k *columnasM2) + column2]#
		s.s		$f4, SUM(fp)				#
		addi 	t5, t5, 1 				# add 1 to t5 (k)
		j FOR_SUM						# jump back to the top

EXIT_FOR_SUM:
		#valoresMR[(row1*columnasM2) + column2]=sum#
		lw    t6, VAL_MAT_RES(fp)
		#addu	t6, fp, VAL_MAT_RES		# valoresMR
		mul		t7, t1, t2				# t7 = row1*columnasM2
		addu	t7, t7, t3				# t7 = (row1*columnasM2) + column2
		sll		t7, t7, 2				# Aligned t7 * 4
		addu	t6, t6, t7				# t6 = valoresMR[(row1*columnasM2) + column2]
		l.s		$f4, SUM(fp)				# f4 = sum
		s.s		$f4, 0(t6)					# valoresMR[(row1*columnasM2) + column2] = sum
		addi 	t3, t3, 1 				# add 1 to t3 (column2)
		j FOR_COLS						# jump back to the top

EXIT_FOR_COLS:
		addi 	t1, t1, 1 				# add 1 to t1 (row1)
		j FOR_ROWS						# jump back to the top

EXIT_FOR_ROWS:
		move	sp, fp
		lw	fp, FP(sp)
		lw	gp, GP(sp)

		addu	sp, sp, SF
		j	ra

.end multiplyMatrixes


