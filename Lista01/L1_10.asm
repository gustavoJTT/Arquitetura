.text

input:
	addi $2 $0 12 #pede 1 caractere
	syscall
	add $8 $0 $2
	
main:
	addi $9 $0 32
	sub $10 $8 $9

print:
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	add $4 $0 $10
	addi $2 $0 11 #printa 1 caractere
	syscall

fim:
	addi $2 $0 10
	syscall