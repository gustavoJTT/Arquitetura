.text

input:
	addi $2 $0 5
	syscall
	add $8 $0 $2
	addi $2 $0 5
	syscall
	add $9 $0 $2
	addi $2 $0 5
	syscall
	add $10 $0 $2
	
main:
	addi $25 $0 6
	addi $24 $0 60
	sll $9 $9 1
	sll $11 $10 1
	add $10 $11 $10
	
	add $8 $8 $9
	add $8 $8 $10
	div $8 $25
	mflo $9
	
	sub $10 $9 $24
	srl $11 $10 31
	beq $11 $0 pass
	bne $11 $0 stay
	
pass:
	add $4 $0 $9
	addi $2 $0 1
	syscall
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	addi $4 $0 'A'
	addi $2 $0 11
	syscall
	j fim
	
stay:
	add $4 $0 $9
	addi $2 $0 1
	syscall
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	addi $4 $0 'R'
	addi $2 $0 11
	syscall
	
fim:
	addi $2 $0 10
	syscall