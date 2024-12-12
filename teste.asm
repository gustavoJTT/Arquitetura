.text

#Fazer uma moldura na tela 16x16
main:
	lui $8 0x1001
	ori $9 $0 0xff00 #cor
	addi $20 $0 32 #contador ites acesos
	
topo: #linha de cima
	beq $20 $0 fim_t
	
	sw $9 0($8)#salva na pulha o endereço $9
	addi $8 $8 4 #salta para a instrução seguinte da pilha
	addi $20 $20 -1	#decrementa o contador
	j topo
	
fim_t:	
	lui $8 0x1001 #endereço inicial
	
	addi $10 $0 128	#para dar tipo uma quebra de linha na tela
	mul $10 $10 15	#vai "quebrando a linha" até o inicio da ultima linha
	add $8 $8 $10		#guarda o endereço no $8
	
	ori $9 $0 0xff00	#cor
	addi $20 $0 32		#contador
	
baixo: #linha de baixo(funciona igual a do topo)
	beq $20 $0 fim_b
	
	sw $9 0($8)
	addi $8 $8 4
	addi $20 $20 -1
	j baixo
	
fim_b:
	lui $8 0x1001 #endereço inicial
	
	ori $9 $0 0xff00 #cor
	addi $20 $0 16 #contador da coluna
	
esquerda: #coluna da esquerda
	beq $20 $0 fim_e
	
	sw $9 0($8) #colori o endereço
	addi $8 $8 128 #"quebra a linha"
	addi $20 $20 -1 #decrementa do contador
	j esquerda
	
fim_e:
	lui $8 0x1001 #endereço inicial
	
	addi $10 $0 124 #para chegar ao ultimo pixel da linha
	add $8 $8 $10		#coloca o valor do ultimo pixel no endereço
	ori $9 $0 0xff00 #cor
	addi $20 $0 16	# contador
	
direita:	#coluna da direita(funciona igual a da esquerda)
	beq $20 $0 fim_d
	
	sw $9 0($8)
	addi $8 $8 128
	addi $20 $20 -1
	j esquerda
	
fim_d:
	addi $2 $0 10
	syscall