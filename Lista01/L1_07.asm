.text

input:
	addi $2 $0 5	#pede um número
	syscall
	add $8 $0 $2	#salva o número no $8
	
main:
	addi $9 $0 10
	div $8 $9			#divide po 10 para pegar a unidade
	mfhi $10 #unidade	#salva a unidade no $10
	mflo $11			#salva a parte da centena, dezena e milhar sem a unidade no $11
	div $11 $9			#divide por 10 para pegar a dezena
	mfhi $12 #dezena		#salva a dezena no $10
	mflo $13			#salva a parte da centena e milhar sem a dezena e sem a unidade no $13
	div $13 $9			#divide por 10 para pegar a centena e a milhar
	mfhi $14 #centena	#salva a centena no $14
	mflo $15 #milhar		#salva a milhar no $15

print:
	add $4 $0 $10	#salva a unidade no $4
	addi $2 $0 1	#printa a unidade
	syscall
	addi $4 $0 '\n'	#salva a quebra de linha(\n) no $4
	addi $2 $0 11	#printa a quebra de linha(código de caractere)
	syscall

	
	add $4 $0 $12	#salva a dezena no $4
	addi $2 $0 1	#printa a dezena
	syscall
	addi $4 $0 '\n'	#salva a quebra de linha no $4
	addi $2 $0 11	#printa a quebra de linha
	syscall
	
	
	add $4 $0 $14	#salva a centena no $4
	addi $2 $0 1	#prina a centena
	syscall
	addi $4 $0 '\n'	#salva a quebra de linha no $4
	addi $2 $0 11	#printa a quebra de linha
	syscall
	
	
	add $4 $0 $15	#salva a milhar no $4
	addi $2 $0 1	#printa a milhar
	syscall

fim:
	addi $2 $0 10	#finaliza o programa
	syscall