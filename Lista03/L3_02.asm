.text

input:
	addi $2 $0 5
	syscall
	add $8 $0 $2
	
	addi $2 $0 5
	syscall
	add $9 $0 $2
	
	addi $9 $9 1
	addi $25 $0 1
	
l1:
	beq $9 $25 final
	
	mul $4 $25 $8
	addi $2 $0 1
	syscall
	
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	
	addi $25 $25 1
	j l1
	
final:
	addi $2 $0 10
	syscall
