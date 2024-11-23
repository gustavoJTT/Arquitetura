.text

input:
	addi $2 $0 5
	syscall
	add $8 $0 $2
	addi $2 $0 5
	syscall
	add $9 $0 $2
	addi $2 $0 5
	syscall
	add $10 $0 $2
	
main:
	addi $25 $0 2
	addi $24 $0 3
	addi $23 $0 5
	addi $22 $0 10
	
	mul $11 $8 $25
	mul $12 $9 $24
	add $13 $11 $12
	div $13 $23
	mflo $13	#media
	
	div $10 $23
	mflo $14
	mul $14 $14 $22 #pontos perdidos
	sub $15 $13 $14
	
print:
	add $4 $0 $15
	addi $2 $0 1
	syscall
	
fim:
	addi $2 $0 10
	syscall