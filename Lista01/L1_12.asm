.text

input:
	addi $2 $0 5
	syscall
	add $8 $0 $2 #peso 3
	addi $2 $0 5
	syscall
	add $9 $0 $2 #peso 9
	addi $2 $0 5
	syscall
	add $10 $0 $2 #peso 15

main:
	sll $11 $8 1
	add $12 $11 $8 #nota final 1
	
	sll $13 $9 3
	add $14 $13 $9 #nota final 2
	
	sll $15 $10 4
	sub $16 $15 $10 #nota final 3
	
	add $17 $12 $14
	add $18 $17 $16
	
	addi $19 $0 27 #soma pesos
	div $18 $19
	mflo $20
	mfhi $21
	
print:
	add $4 $0 $20
	addi $2 $0 1
	syscall
	addi $4 $0 ','
	addi $2 $0 11
	syscall
	add $4 $0 $21
	addi $2 $0 1
	syscall
		
fim:
	addi $2 $0 10
	syscall