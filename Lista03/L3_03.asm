.text

inicio:
	addi $8 $0 11
	addi $9 $0 0
	
l1:
	beq $8 $9 final
	
	add $4 $0 $9
	addi $2 $0 1
	syscall
	
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	
	addi $9 $9 1
	j l1
	
final:
	addi $2 $0 10
	syscall