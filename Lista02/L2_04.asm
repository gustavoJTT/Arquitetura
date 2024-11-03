.text

input:
	addi $2 $0 5
	syscall
	add $8 $0 $2
	addi $2 $0 5
	syscall
	add $9 $0 $2
	
main:
	sub $10 $8 $9
	beq $10 $0 zero
	srl $11 $10 31
	beq $11 $0 posit
	bne $11 $0 nega

zero:
	add $4 $0 $8
	addi $2 $0 1
	syscall
	addi $4 $0 '='
	addi $2 $0 11
	syscall
	add $4 $0 $9
	addi $2 $0 1
	syscall
	j fim
		
posit:
	add $4 $0 $8
	addi $2 $0 1
	syscall
	addi $4 $0 '>'
	addi $2 $0 11
	syscall
	add $4 $0 $9
	addi $2 $0 1
	syscall
	j fim
	
nega:
	add $4 $0 $8
	addi $2 $0 1
	syscall
	addi $4 $0 '<'
	addi $2 $0 11
	syscall
	add $4 $0 $9
	addi $2 $0 1
	syscall

fim:
	addi $2 $0 10
	syscall