.text

main:
	lui $8 0x1001
	lui $9 0x1001
	ori $10 $0 0xff0000
	
	addi $25 $0 128
	addi $24 $0 64
	
colori:
	beq $25 $0 fim
	
	sw $10 0($8)
	sw $10 32256($8)
	
	jal coluna
	
	addi $8 $8 4
	addi $25 $25 -1
	
	j colori

fim:
	addi $2 $0 10
	syscall
	
#=================================================== função =========================================================================
coluna:
	bne $24 $0 s_coluna
	jr $31
	
s_coluna:
	addi $9 $9 512
	sw $10 0($9)
	sw $10 -4($9)
	
	addi $24 $24 -1
	jr $31
