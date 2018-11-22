nop
ori $1, $1, 0x0001
ori $2, $2, 0x8000
ori $3, $2, 0x7fff
addu $4, $1, $2
subu $5, $2, $1
lui $6, 0x0fff
lui $6, 0xffff
ori $7, 0x0004
sw $1, 0($7)
sw $2, 4($7)
sw $3, -4($7)
lw $1, 0($7)
lw $2, 4($7)
lw $3, -4($7)
ori $8, $8, 1
ori $9, $9, 2
beq $1, $0, next
ori $1, 0x2333
beq $0, $0, next
ori $1, 0x0001
next:
addu $1, $1, $1
subu $9, $9, $8 
beq $9, $8, next