.text

inicio:
	addi $10 $0 0
	
l1:
	addi $2 $0 5
	syscall
	add $8 $0 $2
	
	beq $8 $0 print
	
	jal teste
	
	add $10 $10 $8
	
	j l1

print:
	add $4 $0 $10
	addi $2 $0 1
	syscall
	
final:
	addi $2 $0 10
	syscall
	
teste:
	srl $25 $8 31
	bne $25 $0 menos
	jr $31
	
menos:
	addi $8 $0 0
	jr $31