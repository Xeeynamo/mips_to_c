.set noat # allow use of $at
.set noreorder # don't insert nops after branches
.set gp=64 # allow use of 64bit registers
.macro glabel label
    .global \label
    \label:
.endm

glabel test
addiu $sp, $sp, -0x34
sw $s0, 0X30($sp)
beq $zero, $zero, .label
lui $v0, (0x12345678 >> 0x10)
.label:
jr $ra
addiu $sp, $sp, 0x34
