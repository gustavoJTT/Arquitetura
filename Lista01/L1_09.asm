.text

input:
	addi $2 $0 5
	syscall
	add $8 $0 $2

main:
	addi $9 $0 3600
	addi $10 $0 60
	div $8 $9
	mflo $11 #horas
	mfhi $12
	div $12 $10
	mflo $13 #minutos
	mfhi $14 #segundos 
	
print:
	add $4 $0 $11
	addi $2 $0 1
	syscall
	addi $4 $0 ':'
	addi $2 $0 11
	syscall
	
	add $4 $0 $13
	addi $2 $0 1
	syscall
	addi $4 $0 ':'
	addi $2 $0 11
	syscall
	
	add $4 $0 $14
	addi $2 $0 1
	syscall
	
fim:
	addi $2 $0 10
	syscall