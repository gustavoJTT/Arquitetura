.text

input:
	addi $2 $0 5	# pede o primeiro número
	syscall			  
	add $8 $0 $2	#salva o prieiro número no $8

	addi $2 $0 5	#pede o segundo número
	syscall
	add $9 $0 $2	#salva o segundo número no $9

main:
	mul $10 $8 $9	#multiplica os dois números ($8 e $9) e salva no $10

print:
	add $4 $0 $10	#salva o que vai ser printado no $4

	addi $2 $0 1	#faz o print
	syscall

fim:
	addi $2 $0 10	#finaliza o programa
	syscall