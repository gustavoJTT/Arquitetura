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
	add $14 $10 $12
	add $15 $14 $13
	add $4 $0 $15

print:
	addi $2 $0 1
	syscall