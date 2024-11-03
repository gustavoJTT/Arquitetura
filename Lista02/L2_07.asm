.text

input:
	addi $2 $0 5
	syscall
	add $8 $0 $2
	
main:
	addi $9 $0 4
	div $8 $9
	mfhi $10
	beq $10 $0 bs
	j nbs
	
bs:
	addi $4 $0 'S'
	addi $2 $0 11
	syscall
	j fim
	
nbs:
	addi $4 $0 'N'
	addi $2 $0 11
	syscall
	
fim:
	addi $2 $0 10
	syscall