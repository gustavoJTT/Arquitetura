.text

input:
	addi $2 $0 5	# pede o primeiro n�mero
	syscall			  
	add $8 $0 $2	#salva o prieiro n�mero no $8

	addi $2 $0 5	#pede o segundo n�mero
	syscall
	add $9 $0 $2	#salva o segundo n�mero no $9

main:
	mul $10 $8 $9	#multiplica os dois n�meros ($8 e $9) e salva no $10

print:
	add $4 $0 $10	#salva o que vai ser printado no $4

	addi $2 $0 1	#faz o print
	syscall

fim:
	addi $2 $0 10	#finaliza o programa
	syscall