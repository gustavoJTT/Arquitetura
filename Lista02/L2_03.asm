.text

input:
	addi $2 $0 5
	syscall
	add $8 $0 $2
	addi $2 $0 5
	syscall
	add $9 $0 $2

sinal:
	sub $10 $8 $9
	srl $11 $10 31
	beq $11 $0 posit
	bne $11 $0 nega
	
posit:
	mul $12 $11 $10
	sub $12 $8 $12
	j print
	
nega:
	sub $10 $9 $8
	srl $11 $10 31
	mul $12 $11 $10
	sub $12 $9 $12
	j print
	
print:
	add $4 $0 $12
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	add $4 $0 $10
	addi $2 $0 1
	syscall
	
fim:
	addi $2 $0 10
	syscall