.text

input:
	addi $2 $0 5
	syscall
	add $8 $0 $2	#dia
	addi $2 $0 5
	syscall
	add $9 $0 $2	#mes
	addi $2 $0 5
	syscall
	add $10 $0 $2	#ano
	
main:
	