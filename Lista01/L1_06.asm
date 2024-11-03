.text

input:
	addi $2 $0 5	#pede um número
	syscall
	add $8 $0 $2	#salva o número no $8
	
main:
	addi $9 $0 10
	div $8 $9			#divide po 10 para pegar a unidade
	mfhi $10 #unidade	#salva a unidade no $10
	mflo $11			#salva a parte da centena e dezena sem a unidade no $11
	div $11 $9			#divide por 10 de novo para pegar a centena e a dezena
	mfhi $12 #dezena		#salva a dezena no $12
	mflo $13 #centena	#salva a centena no $13

print:
	add $4 $0 $13	#salva a centena no $4
	addi $2 $0 1	#printa a centena
	syscall
	add $4 $0 $12	#salva a dezena no $4
	addi $2 $0 1	#printa a dezena
	syscall
	add $4 $0 $10	#salva a unidade no $4
	addi $2 $0 1	#printa a unidade
	syscall

fim:
	addi $2 $0 10	#finaliza o programa
	syscall