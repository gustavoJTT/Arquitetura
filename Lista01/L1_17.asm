.text

input:
	addi $2 $0 5
	syscall
	add $8 $0 $2
	
	addi $2 $0 5
	syscall
	add $9 $0 $2

main:
	addi $10 $0 2
	addi $11 $0 10
	add $12 $8 $9
	div $12 $10
	mflo $13
	mfhi $14
	mul $15 $14 $11
	div $15 $10
	mflo $16

print:
	add $4 $0 $13
	addi $2 $0 1
	syscall
	
	addi $4 $0 ','
	addi $2 $0 11
	syscall
	
	add $4 $0 $16
	addi $2 $0 1
	syscall
	
fim:
	addi $2 $0 10
	syscall
