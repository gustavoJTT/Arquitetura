.text

input:
	addi $2 $0 5
	syscall
	add $8 $0 $2
	addi $2 $0 5
	syscall
	add $9 $0 $2
	
	addi $9 $9 1
	
l1:
	beq $8 $9 final
	
	jal teste
	
	addi $8 $8 1
	j l1
	
final:
	addi $2 $0 10
	syscall

teste:
	addi $25 $0 2
	div $8 $25
	mfhi $25
	beq $25 $0 par
	jr $31
	
par:
	add $4 $0 $8
	addi $2 $0 1
	syscall
	
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	jr $31