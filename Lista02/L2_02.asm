.text

input:
	addi $2 $0 5
	syscall
	add $8 $0 $2
	
main:
	srl $9 $8 31
	beq $9 $0 nega
	bne $9 $0 posit

nega:
	mul $10 $8 $8
	j print

posit:
	add $10 $8 $8
	j print
	
print:
	add $4 $0 $10
	addi $2 $0 1
	syscall
	
fim:
	addi $2 $0 10
	syscall