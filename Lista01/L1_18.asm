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
	srl $11 $10 31
	mul $12 $11 $10
	add $13 $9 $12
	
print:
	add $4 $0 $13
	addi $2 $0 1
	syscall
	
fim:
	addi $2 $0 10
	syscall