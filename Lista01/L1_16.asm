.text
input:
	addi $2 $0 5
	syscall
	add $8 $0 $2
	
main:
	addi $9 $0 2
	addi $10 $0 -1
	div $8 $9
	mfhi $11
	mul $12 $11 $10

print:
	add $4 $0 $12
	addi $2 $0 1
	syscall

fim:
	addi $2 $0 10
	syscall