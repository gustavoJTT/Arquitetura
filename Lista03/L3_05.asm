.text

inicio:
	addi $8 $0 1
	addi $9 $0 11
	addi $10 $0 0
	
l1:
	beq $8 $9 print
	
	addi $2 $0 5
	syscall
	
	add $10 $10 $2
	
	addi $8 $8 1
	
	j l1
	
print:
	add $4 $0 $10
	addi $2 $0 1
	syscall
	
final:
	addi $2 $0 10
	syscall