.text

inicio:
	addi $2 $0 5
	syscall
	add $8 $0 $2
	addi $9 $0 0
	
l1:
	beq $8 $9 print
	
	addi $2 $0 5
	syscall
	add $10 $0 $2	#maior
	
	beq $8 $0 zero
	j maior

maior:
	slt $

zero:
	add $8 $2 $0 # maior
	addi $9 $0 1 # ocorrencias
	j incremento