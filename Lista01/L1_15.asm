.text

input:
	addi $2 $0 5
	syscall
	add $8 $0 $2
	
main:
	addi $25 $0 32
	addi $24 $0 16
	addi $23 $0 -1
	addi $22 $0 10
	
	div $8 $22
	mfhi $9	#unidade
	mflo $10
	div $10 $22
	mfhi $10 #dezena
	mflo $11
	div $11 $22
	mfhi $11 #centena
	mflo $12 #milhar
	
	mul $13 $9 $23
	srl $13 $13 31
	mul $14 $13 $24
	add $15 $9 $14
	add $15 $15 $25
	add $22 $0 $15
	
	mul $13 $10 $23
	srl $13 $13 31
	mul $14 $13 $24
	add $15 $10 $14
	add $15 $15 $25
	add $21 $0 $15
	
	mul $13 $11 $23
	srl $13 $13 31
	mul $14 $13 $24
	add $15 $11 $14
	add $15 $15 $25
	add $20 $0 $15
	
	mul $13 $12 $23
	srl $13 $13 31
	mul $14 $13 $24
	add $15 $12 $14
	add $15 $15 $25
	add $19 $0 $15
	
print:
	add $4 $0 $19
	addi $2 $0 11
	syscall
	
	add $4 $0 $20
	syscall
	
	add $4 $0 $21
	syscall
	
	add $4 $0 $22
	syscall

fim:
	addi $2 $0 10
	syscall