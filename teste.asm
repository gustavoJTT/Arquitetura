.text

input:
	addi $2 $0 5
	syscall
	add $8 $0 $2
	addi $9 $0 90
print:
	add $4 $0 $8
	addi $2 $0 1
	syscall
	add $4 $0 $9
	addi $2 $0 1
	syscall
	
fim:
	addi $2 $0 10
	syscall