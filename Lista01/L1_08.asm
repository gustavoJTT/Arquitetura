.text
input:
	addi $2 $0 5
	syscall
	add $8 $0 $2 #horas
	addi $2 $0 5
	syscall
	add $9 $0 $2 #minutos
	addi $2 $0 5
	syscall
	add $10 $0 $2 #segundos
	
main:
	addi $11 $0 60
	addi $12 $0 3600
	mul $13 $8 $12
	mul $14 $9 $11
	add $15 $13 $14
	add $16 $15 $10
	add $4 $0 $16
	
print:
	addi $2 $0 1
	syscall

fim:
	addi $2 $0 10
	syscall