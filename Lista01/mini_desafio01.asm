.text
num:
	addi $8 $0 2
	addi $9 $0 3
	addi $10 $0 4
	
main:
	add $11 $8 $9
	add $12 $11 $10 #final add
	add $4 $0 $12
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	sub $13 $8 $9
	sub $14 $11 $10 #final sub
	add $4 $0 $14
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	mul $15 $8 $9
	mul $16 $11 $10 #final mult
	add $4 $0 $16
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	div $8 $9
	mflo $17
	div $17 $10
	mflo $18 #final div
	add $4 $0 $18
	addi $2 $0 1
	syscall
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall