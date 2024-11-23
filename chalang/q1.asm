.text
inicio:
	addi $8 $0 10
	addi $9 $0 1
	
l1:
	beq $9 $8 f_l1
	
	addi $10 $0 11
	addi $11 $0 1
	
l2:
	beq $11 $10 f_l2

	addi $12 $0 3
	addi $13 $0 0
	
l3:
	beq $13 $12 f_l3
	
	add $20 $9 $13
	add $21 $0 $20
	
	add $4 $0 $21
	addi $2 $0 1
	syscall
	
	addi $4 $0 '*'
	addi $2 $0 11
	syscall
	
	add $21 $0 $11
	
	add $4 $0 $21
	addi $2 $0 1
	syscall
	
	jal alinhar_
	
	addi $4 $0 '='
	addi $2 $0 11
	syscall
	
	jal espaco
	
	mul $20 $20 $11
	add $21 $0 $20
	
	jal alinhar_
	add $4 $0 $21
	addi $2 $0 1
	syscall
	jal espaco
	jal espaco
	jal espaco
	
	addi $13 $13 1	#incrementa c++
	j l3	#reinicia o laço 3
	
f_l3:
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	addi $11 $11 1	#incrementa b++
	j l2	#volta pro anterior
	
f_l2:
	addi $4 $0 '\n'
	addi $2 $0 11
	syscall
	addi $9 $9 3	#increenta a++
	j l1	#volta pro anterior
f_l1:
	addi $2 $0 10
	syscall

#======================================== funções =========================================

espaco:
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	jr $31
	
alinhar_:
	div $21 $8
	mflo $22
	beq $22 $0 alinhar_s
	jr $31
	
alinhar_s:
	addi $4 $0 ' '
	addi $2 $0 11
	syscall
	jr $31