.text

main: lui $8, 0x1001 #INICIALIZANDO NO ENDEREÇO 1001
########## CORES ##############
coresCeu:     
      add $20, $0, 0xffff00 #COR AMARELA 0
      #feec04   1
      #fdda03   2
      #fcc803   3
      #fbb802   4
      #faa302   5
      #f87f01   6
      #f75b00   7
      
coresChao:      
      add $21, $0 , 0x3E9E2C #COR VERDE
      #422600 1 MARROM
      
coresCoelho:
	add $22, $0, 0x6CF305 #COR DO CORPO
	#80461c #SOBRANCELHA
	#ebe8e6 #OLHOS
	#3e3f3d #PUPILA
	
########## CORES ##############

       
                     
quantidadePixels:     
soma0:addi $11, $0, 1024  #LINHAS AMARELA
      addi $12, $0, 128 #LINHAS VERDE
      
      
      
      
########## IMPRIMINDO POR DO SOL ##############      
cor0: beq $11, $0, soma1
     sw $20, 0($8) #MOSTRAR PIXEL NA TELA
     
     addi $8, $8, 4 #PASSA PARA O PRÓXIMO PIXEL
     addi $11, $11, -1 #REDUZIR VALOR PARA O LAÇO
      j cor0


	   	   	   	   
soma1: jal somalinhas #PULA PARA SOMAR O REG $11 COM MAIS 5 LINHAS
       add $20, $0, 0xfeec04 #SEGUNDA COR AMARELA
cor2:beq $11, $0, soma2
     sw $20, 0($8) #MOSTRAR PIXEL NA TELA
     
     addi $8, $8, 4 #PASSA PARA O PRÓXIMO PIXEL
     addi $11, $11, -1 #REDUZIR VALOR PARA O LAÇO
      j cor2
 
      
                
soma2: jal somalinhas #PULA PARA SOMAR O REG $11 COM MAIS 5 LINHAS
       add $20, $0, 0xfdda03 #TERCEIRA COR AMARELA
cor3:beq $11, $0, soma3
     sw $20, 0($8) #MOSTRAR PIXEL NA TELA
     
     addi $8, $8, 4 #PASSA PARA O PRÓXIMO PIXEL
     addi $11, $11, -1 #REDUZIR VALOR PARA O LAÇO
      j cor3



soma3: jal somalinhas #PULA PARA SOMAR O REG $11 COM MAIS 5 LINHAS
       add $20, $0, 0xfcc803 #QUARTA COR AMARELA
cor4:beq $11, $0, soma4
     sw $20, 0($8) #MOSTRAR PIXEL NA TELA
     
     addi $8, $8, 4 #PASSA PARA O PRÓXIMO PIXEL
     addi $11, $11, -1 #REDUZIR VALOR PARA O LAÇO
      j cor4
      
      
soma4: jal somalinhas #PULA PARA SOMAR O REG $11 COM MAIS 5 LINHAS
       add $20, $0, 0xfaa302 #QUINTA COR AMARELA
cor5:beq $11, $0, soma5
     sw $20, 0($8) #MOSTRAR PIXEL NA TELA
     
     addi $8, $8, 4 #PASSA PARA O PRÓXIMO PIXEL
     addi $11, $11, -1 #REDUZIR VALOR PARA O LAÇO
      j cor5



soma5: jal somalinhas #PULA PARA SOMAR O REG $11 COM MAIS 5 LINHAS
       add $20, $0, 0xf87f01 #SEXTA COR AMARELA
cor6:beq $11, $0, soma6
     sw $20, 0($8) #MOSTRAR PIXEL NA TELA
     
     addi $8, $8, 4 #PASSA PARA O PRÓXIMO PIXEL
     addi $11, $11, -1 #REDUZIR VALOR PARA O LAÇO
      j cor6
 
      
                
soma6: jal somalinhas #PULA PARA SOMAR O REG $11 COM MAIS 5 LINHAS
       add $20, $0, 0xf75b00 #SÉTIMA COR AMARELA
cor7:beq $11, $0, somaB1
     sw $20, 0($8) #MOSTRAR PIXEL NA TELA
     
     addi $8, $8, 4 #PASSA PARA O PRÓXIMO PIXEL
     addi $11, $11, -1 #REDUZIR VALOR PARA O LAÇO
      j cor7
########## IMPRIMINDO POR DO SOL ############## 




########## IMPRIMINDO CHAO ##############
somaB1: jal somalinhas2
solo:beq $11, $0, somaB2
     sw $21, 0($8) #MOSTRAR PIXEL NA TELA
     
     addi $8, $8, 4 #PASSA PARA O PRÓXIMO PIXEL
     addi $11, $11, -1 #REDUZIR VALOR PARA O LAÇO
      j solo


somaB2: addi $11, $0, 1280
	add $21, $0, 0x422600 #ACRESCENTANDO COR MARROM
solo2: beq $11, $0, sprite
       sw $21, 0($8)
       
       addi $8, $8, 4 #PASSA PARA O PRÓXIMO PIXEL
       addi $11, $11, -1
       j solo2
########## IMPRIMINDO CHAO ##############       


sprite:      lui $9, 0x1001 #INICIALIZAR VALOR PARA IMPRIMIR SPRITES 
	     add $17, $0, 5





########## SPRITE DE COELHO #############
 cimacabeca:beq $17, $0, ladocabeca
       sw $22, 1032($9)
       add $9, $9, 4
       add $17, $17, -1
       j cimacabeca
 
 ladocabeca: add $9, $9, 1544
 	     sw $22, 0($9)
 	     
 	     add $9, $9, 516
 	     sw $22, 0($9)
 	     add $9, $9, 512
 	     sw $22, 0($9)
 	     add $9, $9, 512
 	     sw $22, 0($9)
 	     add $9, $9, 512
 	     sw $22, 0($9)

baixocabeca: add $9, $9, 508
 	     sw $22, 0($9)
 	     add $9, $9, 508
 	     sw $22, 0($9)
 	     add $9, $9, -4
 	     sw $22, 0($9)
 	     add $9, $9, -4
 	     sw $22, 0($9)
 	     add $9, $9, -4
 	     sw $22, 0($9)
 	     add $9, $9, -4
 	     sw $22, 0($9)
 	 
ladocabeca2: add $9, $9, -516
 	     sw $22, 0($9)
 	     add $9, $9, -516
 	     sw $22, 0($9)
 	     add $9, $9, -512
 	     sw $22, 0($9)
 	     add $9, $9, -512
 	     sw $22, 0($9)
 	     add $9, $9, -512
 	     sw $22, 0($9)
 	     add $9, $9, -508
 	     sw $22, 0($9)
 	     
 	     lui $9, 0x1001 
 	     
 	     add $9, $9, 1544
 	     sw $22, 0($9)
 	     
 	     add $17,$0, 5
 	     
preencher1: beq $17, $0, preencher2
            sw $22, 0($9)
            add $9, $9, 4
            add $17, $17, -1
            j preencher1
            
preencher2:  add $17,$0, 7
 	     add $9, $9, 488
 	     jal preencher
 	     
 	     add $17,$0, 7
 	     add $9, $9, 484
 	     jal preencher
 	     
 	     add $17,$0, 8
 	     add $9, $9, 480
 	     jal preencher
 	     
 	     add $17,$0, 9
 	     add $9, $9, 476
 	     jal preencher
 	     
 	     add $17,$0, 6
 	     add $9, $9, 484
 	     jal preencher
 	     
imprimirsobrancelha: add $22, $0, 0x80461c #COLOCANDO COR SOBRANCELHA
	             lui $9, 0x1001 #REINICIANDO PARA IMPRIMIR SOBRANCELHA
	     
	             add $9, $9, 2056
 	             sw $22, 0($9)
 	             
 	             add $9, $9, 516
 	             sw $22, 0($9)
 	             
 	             add $9, $9, 8
 	             sw $22, 0($9)
 	             
 	             add $9, $9, -508
 	             sw $22, 0($9)
 	            
 	            
 	             add $22, $0, 0xebe8e6 #COLOCANDO COR DOS OLHOS
	             lui $9, 0x1001 #REINICIANDO PARA IMPRIMIR OLHOS
	             
	             add $9, $9, 2568
 	             sw $22, 0($9)
 	             add $9, $9, 512
 	             sw $22, 0($9)
 	             add $9, $9, 12
 	             sw $22, 0($9)
 	             add $9, $9, -508
 	             sw $22, 0($9)
 	             
 	             add $22, $0, 0x3e3f3d #COLOCANDO COR DA PUPILA
	             lui $9, 0x1001 #REINICIANDO PARA IMPRIMIR PUPILA
	             
	             add $9, $9, 3084
 	             sw $22, 0($9)
 	             add $9, $9, 12
 	             sw $22, 0($9)
 	             
 	             
dentinho:	   add $22, $0, 0xebe8e6 #COLOCANDO COR DO DENTINHO
	           lui $9, 0x1001 #REINICIANDO PARA IMPRIMIR DENTINHO 
	            
	           add $9, $9, 4112
 	           sw $22, 0($9)

orelhas:           add $22, $0, 0x6CF305 #COLOCANDO COR DA ORELHA
	           lui $9, 0x1001  #REINICIANDO PARA IMPRIMIR ORELHA
	           
	           add $9, $9, 8
 	           sw $22, 0($9)
 	           add $9, $9, 4
 	           sw $22, 0($9)
 	           add $9, $9, 508
 	           sw $22, 0($9)
 	           add $9, $9, 4
 	           sw $22, 0($9)
 	           
 	           
 	           add $9, $9, 8
 	           sw $22, 0($9)
 	           add $9, $9, 4
 	           sw $22, 0($9)
 	           add $9, $9, -512
 	           sw $22, 0($9)
 	           add $9, $9, -4
 	           sw $22, 0($9)
	             
	             
########## SPRITE DE COELHO #############    

       
              
                     
                            
                                   
       
fim: addi $2, $0, 10
     syscall
     
     
     
############# FUNÇÕES ###################  
# --------------------------------------#
# Função: acrescentar o valor 896 (inteiro) no reg $11
# efeito: retornar para imprimir 5 linhas com a nova cor acrescentada no reg $20   
somalinhas: addi $11, $0, 896 #SOMANDO PARA IMPRIMIR 5 LINHAS 
	    jr $31
	    
# --------------------------------------#
# Função: acrescentar o valor 512 (inteiro) no reg $11
# efeito: retornar para imprimir 3 linhas com a nova cor acrescentada no reg $21	    
somalinhas2: addi $11, $0, 512 #SOMANDO PARA IMPRIMIR 5 LINHAS 
	     jr $31
	    			
# --------------------------------------#
##Função: acrescentar a cor no end de memoria em $9 no valor que está em $17
# efeito: Preenche o corpo do sprite do coelho com a cor verde
preencher:  beq $17, $0, volta
            sw $22, 0($9)
            add $9, $9, 4
            add $17, $17, -1
            j preencher
	    volta: jr $31
