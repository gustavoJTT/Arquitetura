.text

input:
	addi $2 $0 5
	syscall
	add $8 $0 $2

main:
	addi $9 $0 10
	div $8 $9
	mfhi $10 #unidade
	mflo $11
	div $11 $9
	mfhi $12 #dezena
	mflo $13 #centena
	
print:
	add $4 $0 $10
	addi $2 $0 1
	syscall
	
	add $4 $0 $12
	addi $2 $0 1
	syscall
	
	add $4 $0 $13
	addi $2 $0 1
	syscall
	
fim:
	addi $2 $0 10
	syscall