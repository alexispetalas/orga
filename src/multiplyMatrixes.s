#include <mips/regdef.h>
#include <sys/syscall.h>

#define SF 28
#define FP 24
#define GP 20

#define COL_MAT_1 28
#define COL_MAT_2 32 
#define ROW_MAT_1 36
#define ROW_MAT_2 40 
#define VAL_MAT_1 44
#define VAL_MAT_2 48   
#define VAL_MAT_RES 52    

.text
.align 2


.globl  multiplyMatrixes
.ent    multiplyMatrixes

multiplyMatrixes:
        .frame  $fp,SF,ra
        .set    noreorder
        .cpload t9
        .set    reorder

        #stack frame creation
        subu    sp,sp,SF

        .cprestore GP
        sw      $fp, FP(sp)
        move    $fp, sp
        
        #Guado los argumentos
        sw      a0, COL_MAT_1(sp)       ; FilasM1
        sw      a1, COL_MAT_2(sp)       ; ColumnasM1
        sw      a2, ROW_MAT_1(sp)       ; FilasM2
        sw      a3, ROW_MAT_2(sp)       ; ColumnasM2
        sw      a4, VAL_MAT_1(sp)       ; ValuesM1
        sw      a5, VAL_MAT_2(sp)       ; ValuesM2
        sw      a6, VAL_MAT_RES(sp)     ; ValuesMR

        lw a0, PTO_MAT_1
        lw , strlen
        jalr t0
        move t1, v0
        lw a0, PTO_MAT_2(sp)
        la t0, strlen
        jalr t0
        move t2, v0

        addu t1, t1, t2
        li t3, 45
        addu t1, t1,t3

        lw    a0, t1
        jal mymalloc

        lw a0, t3
        jal strcat

        lw a0, mensaje
        jal strcat

        lw a0, t4
        jal strcat

loop_filas:
        lw      t4, PTO_MAT_2(sp)
        lw      t1, PTO_MAT_1(sp)
        sll     t2,t2,t4
        addu    t1,t1,t2
        lw      t2,0(t3)
        lb  t0, PTO_MAT_1(sp)       
        lb  t1, fin_string
        beq     t2,t3,fin_loop





.end multiplyMatrixes

#.data