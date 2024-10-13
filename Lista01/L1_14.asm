.text

input:
	addi $2 $0 5
	syscall
	add $8 $0 $2
	
main:
	addi $9 $0 2
	div $8 $9
	mfhi $10
	
print:
	add $4 $0 $10
	addi $2 $0 1
	syscall
	
fim:
	addi $2 $0 10
	syscall