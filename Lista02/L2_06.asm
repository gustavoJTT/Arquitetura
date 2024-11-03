.text

input:
	addi $2 $0 5
	syscall
	add $8 $0 $2
	addi $2 $0 5
	syscall
	add $9 $0 $2
	
main:
	addi $25 $0 65	#idade minima
	addi $24 $0 40	#trabalho minimo
	addi $23 $0 60
	addi $22 $0 35
	
	sub $10 $8 $25
	srl $10 $10 31
	beq $10 $0 apos
	
	sub $10 $9 $24
	srl $10 $10 31
	beq $10 $0 apos
	
	sub $10 $8 $23
	srl $10 $10 31
	beq $10 $0 mais60
	j napos
	
mais60:
	sub $10 $9 $22
	srl $10 $10 31
	bne $10 $0 napos
	j apos
	
apos:
	addi $4 $0 'S'
	addi $2 $0 11
	syscall
	j fim

napos:
	addi $2 $0 'N'
	addi $2 $0 11
	syscall
	
fim:
	addi $2 $0 10
	syscall