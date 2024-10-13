.text

input:
	addi $2 $0 5
	syscall
	add $8 $0 $2
	add $9 $0 $2
	
main:
	mul $10 $8 $9
	add $4 $0 $10
	
print:
	addi $2 $0 1
	syscall