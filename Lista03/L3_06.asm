.text

inicio:
	addi $10 $0 0
	
l1:
	addi $2 $0 5
	syscall
	add $8 $0 $2
	
	jal teste
	
	bne $25 $0 print
	
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
	jr $31