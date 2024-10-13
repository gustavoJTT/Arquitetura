.text

main:
	addi $8 $0 'H' #1
	addi $9 $0 'e' #2
	addi $10 $0 'l' #3, 4, 10
	addi $11 $0 'o' #5, 8
	addi $12 $0 ' ' #6
	addi $13 $0 'W' #7
	addi $14 $0 'r' #9
	addi $15 $0 'd' #11
	
print:
	add $4 $0 $8
	addi $2 $0 11
	syscall
	
	add $4 $0 $9
	addi $2 $0 11
	syscall
	
	add $4 $0 $10
	addi $2 $0 11
	syscall
	addi $2 $0 11
	syscall
	
	add $4 $0 $11
	addi $2 $0 11
	syscall
	
	add $4 $0 $12
	addi $2 $0 11
	syscall
	
	add $4 $0 $13
	addi $2 $0 11
	syscall
	
	add $4 $0 $11
	addi $2 $0 11
	syscall
	
	add $4 $0 $14
	addi $2 $0 11
	syscall
	
	add $4 $0 $10
	addi $2 $0 11
	syscall
	
	add $4 $0 $15
	addi $2 $0 11
	syscall
	
fim:
	addi $2 $0 10
	syscall