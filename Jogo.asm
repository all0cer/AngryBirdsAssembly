.text

main: lui $8, 0x1001 #INICIALIZANDO NO ENDEREÇO 1001
      lui $4, 0xffff
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
	add $22, $0, 0x6CF305 #CORPO
	add $24, $0, 0xebe8e6 #OLHOS
	add $27, $0, 0x141212 #PUPILA
	add $26, $0, 0x5fa629 #CORPO CLARO
	
	
coresBomba: add $23, $0 , 0x000000 #COR PRETA
            add $18, $0, 0x5f3716 #MARROM
            add $16, $0, 0xf8f5f1 #OLHOS
            add $15, $0, 0xf10e0e #PUPILA
            add $14, $0, 0xf5e800 #BICO
            add $13, $0, 0x595050 #BARRIGA
            
            

	
########## CORES ##############

       
                     
quantidadePixels:     
soma0:addi $11, $0, 1024  #LINHAS AMARELA
      addi $12, $0, 128 #LINHAS VERDE
      
      
      
      
########## IMPRIMINDO POR DO SOL ##############  
          
cor0: beq $11, $0, soma1
     sw $20, 0($8) #MOSTRAR PIXEL NA TELA
     sw $20, 34000($8) #GUARDA CÓPIA DO CENÁRIO
     
     addi $8, $8, 4 #PASSA PARA O PRÓXIMO PIXEL
     addi $11, $11, -1 #REDUZIR VALOR PARA O LAÇO
      j cor0


	   	   	   	   
soma1: jal somalinhas #PULA PARA SOMAR O REG $11 COM MAIS 5 LINHAS
       add $20, $0, 0xfeec04 #SEGUNDA COR AMARELA
cor2:beq $11, $0, soma2
     sw $20, 0($8) #MOSTRAR PIXEL NA TELA
     sw $20, 34000($8)
     
     addi $8, $8, 4 #PASSA PARA O PRÓXIMO PIXEL
     addi $11, $11, -1 #REDUZIR VALOR PARA O LAÇO
      j cor2
 
      
                
soma2: jal somalinhas #PULA PARA SOMAR O REG $11 COM MAIS 5 LINHAS
       add $20, $0, 0xfdda03 #TERCEIRA COR AMARELA
cor3:beq $11, $0, soma3
     sw $20, 0($8) #MOSTRAR PIXEL NA TELA
     sw $20, 34000($8)
     addi $8, $8, 4 #PASSA PARA O PRÓXIMO PIXEL
     addi $11, $11, -1 #REDUZIR VALOR PARA O LAÇO
      j cor3



soma3: jal somalinhas #PULA PARA SOMAR O REG $11 COM MAIS 5 LINHAS
       add $20, $0, 0xfcc803 #QUARTA COR AMARELA
cor4:beq $11, $0, soma4
     sw $20, 0($8) #MOSTRAR PIXEL NA TELA
     sw $20, 34000($8)
     addi $8, $8, 4 #PASSA PARA O PRÓXIMO PIXEL
     addi $11, $11, -1 #REDUZIR VALOR PARA O LAÇO
      j cor4
      
      
soma4: jal somalinhas #PULA PARA SOMAR O REG $11 COM MAIS 5 LINHAS
       add $20, $0, 0xfaa302 #QUINTA COR AMARELA
cor5:beq $11, $0, soma5
     sw $20, 0($8) #MOSTRAR PIXEL NA TELA
     sw $20, 34000($8)
     addi $8, $8, 4 #PASSA PARA O PRÓXIMO PIXEL
     addi $11, $11, -1 #REDUZIR VALOR PARA O LAÇO
      j cor5



soma5: jal somalinhas #PULA PARA SOMAR O REG $11 COM MAIS 5 LINHAS
       add $20, $0, 0xf87f01 #SEXTA COR AMARELA
cor6:beq $11, $0, soma6
     sw $20, 0($8) #MOSTRAR PIXEL NA TELA
     sw $20, 34000($8)
     
     addi $8, $8, 4 #PASSA PARA O PRÓXIMO PIXEL
     addi $11, $11, -1 #REDUZIR VALOR PARA O LAÇO
      j cor6
 
      
                
soma6: jal somalinhas #PULA PARA SOMAR O REG $11 COM MAIS 5 LINHAS
       add $20, $0, 0xf75b00 #SÉTIMA COR AMARELA
cor7:beq $11, $0, somaB1
     sw $20, 0($8) #MOSTRAR PIXEL NA TELA
     sw $20, 34000($8)
     addi $8, $8, 4 #PASSA PARA O PRÓXIMO PIXEL
     addi $11, $11, -1 #REDUZIR VALOR PARA O LAÇO
      j cor7
########## IMPRIMINDO POR DO SOL ############## 




########## IMPRIMINDO CHAO ##############
somaB1: jal somalinhas2
solo:beq $11, $0, somaB2
     sw $21, 0($8) #MOSTRAR PIXEL NA TELA
     sw $21, 34000($8)
     addi $8, $8, 4 #PASSA PARA O PRÓXIMO PIXEL
     addi $11, $11, -1 #REDUZIR VALOR PARA O LAÇO
     j solo


somaB2: add $11, $0, 1280
	add $21, $0, 0x422600 #ACRESCENTANDO COR MARROM
solo2: beq $11, $0, sprite
       sw $21, 0($8)
       sw $21, 34000($8)
       
       addi $8, $8, 4 #PASSA PARA O PRÓXIMO PIXEL
       addi $11, $11, -1
       j solo2
########## IMPRIMINDO CHAO ##############       


sprite:      lui $9, 0x1001 #INICIALIZAR VALOR PARA IMPRIMIR SPRITES 
	     


########## SPRITE DE COELHO #############
 
 
 ladocabeca0: add $9, $9, 4160
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
 	    
 	 
ladocabeca1: add $9, $9, -516
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
 	    
 	     add $9, $9, 4 
 	     sw $22, 0($9)
 	     add $9, $9, 4 
 	     sw $22, 0($9)
 	     add $9, $9, 4 
 	     sw $22, 0($9)
 	     add $9, $9, 4 
 	     sw $22, 0($9)
 	     add $9, $9, 4 
 	     sw $22, 0($9)
 	     add $9, $9, 516 
 	     sw $22, 0($9)
 	     add $9, $9, -4 
 	     sw $22, 0($9)
 	     add $9, $9, -4 
 	     sw $22, 0($9)
 	     add $9, $9, -4 
 	     sw $22, 0($9)
 	     add $9, $9, -4 
 	     sw $22, 0($9)
 	     add $9, $9, -4 
 	     sw $22, 0($9)
 	     add $9, $9, -4 
 	     sw $22, 0($9)
 	     add $9, $9, 512 
 	     sw $22, 0($9)
 	     add $9, $9, 4 
 	     sw $24, 0($9) #COLOCAR BRANCO AQUI
 	     add $9, $9, 4 #COLOCAR BRANCO AQ
 	     sw $24, 0($9)
 	     add $9, $9, 4 
 	     sw $22, 0($9)
 	     add $9, $9, 4 
 	     sw $24, 0($9) #COLOCAR BRANCO AQUI
 	     add $9, $9, 4 
 	     sw $24, 0($9) #COLOCAR BRANCO AQUI
 	     add $9, $9, 4 
 	     sw $22, 0($9)
 	     add $9, $9, 512
 	     sw $22, 0($9)
 	     add $9, $9, -4  #COLOCAR PRETO AQUI
 	     sw $27, 0($9) ##########################
 	     add $9, $9, -4  #COLOCAR BRANCO AQUI
 	     sw $24, 0($9)
 	     add $9, $9, -4 
 	     sw $22, 0($9)
 	     add $9, $9, -4  #COLOCAR PRETO AQUI
 	     sw $27, 0($9)
 	     add $9, $9, -4  #COLOCAR BRANCO AQUI
 	     sw $24, 0($9)
 	     add $9, $9, -4 
 	     sw $22, 0($9)
 	     add $9, $9, 512
 	     sw $22, 0($9)
 	     add $9, $9, 4 #VERDE CLARO AQUI
 	     sw $26, 0($9)
 	     add $9, $9, 4 #VERDE CLARO AQUI
 	     sw $26, 0($9)
 	     add $9, $9, 4 #VERDE CLARO AQUI
 	     sw $26, 0($9)
 	     add $9, $9, 4 #VERDE CLARO AQUI
 	     sw $26, 0($9)
 	     add $9, $9, 4 #VERDE CLARO AQUI
 	     sw $26, 0($9)
 	     add $9, $9, 4 
 	     sw $22, 0($9)
 	     add $9, $9, 516
 	     sw $22, 0($9)
 	     add $9, $9, -8 
 	     sw $26, 0($9)
 	     add $9, $9, -4 #VERDE CLARO AQUI
 	     sw $27, 0($9)
 	     add $9, $9, -4  #COLOCAR PRETO AQUI
 	     sw $26, 0($9)
 	     add $9, $9, -4 #VERDE CLARO AQUI
 	     sw $27, 0($9)
 	     add $9, $9, -4  #COLOCAR PRETO AQUI
 	     sw $26, 0($9)
 	     add $9, $9, -8  
 	     sw $22, 0($9)
 	     add $9, $9, 512 
 	     sw $22, 0($9)
 	     add $9, $9, 4 
 	     sw $22, 0($9)
 	     add $9, $9, 4 #VERDE CLARO AQUI
 	     sw $26, 0($9)
 	     add $9, $9, 4 #VERDE CLARO AQUI
 	     sw $26, 0($9)
 	     add $9, $9, 4 #VERDE CLARO AQUI
 	     sw $26, 0($9)
 	     add $9, $9, 4 #VERDE CLARO AQUI
 	     sw $26, 0($9)
 	     add $9, $9, 4 #VERDE CLARO AQUI
 	     sw $26, 0($9)
 	     add $9, $9, 4 
 	     sw $22, 0($9)
 	     add $9, $9, 4 
 	     sw $22, 0($9)
 	   

 	    
 	     
 	     
 	     
 	      
 	     
 	     

########## SPRITE DE COELHO #############    






########## SPRITE DO SEGUNDO COELHO #############

 lui $9, 0x1001
 ladocabeca111: add $9, $9, 936
 	     sw $22, 0($9)
 	     
 	     
 	     add $9, $9, 516
 	     sw $22, 0($9)
 	    
 	     add $9, $9, 512
 	     sw $22, 0($9)
 	     
 	     add $9, $9, 512
 	     sw $22, 0($9)
 	     
 	     add $9, $9, 512
 	     sw $22, 0($9)
 	     

baixocabeca1: add $9, $9, 508
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
 	    
 	 
ladocabeca11: add $9, $9, -516
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
 	    
 	     add $9, $9, 4 
 	     sw $22, 0($9)
 	     add $9, $9, 4 
 	     sw $22, 0($9)
 	     add $9, $9, 4 
 	     sw $22, 0($9)
 	     add $9, $9, 4 
 	     sw $22, 0($9)
 	     add $9, $9, 4 
 	     sw $22, 0($9)
 	     add $9, $9, 516 
 	     sw $22, 0($9)
 	     add $9, $9, -4 
 	     sw $22, 0($9)
 	     add $9, $9, -4 
 	     sw $22, 0($9)
 	     add $9, $9, -4 
 	     sw $22, 0($9)
 	     add $9, $9, -4 
 	     sw $22, 0($9)
 	     add $9, $9, -4 
 	     sw $22, 0($9)
 	     add $9, $9, -4 
 	     sw $22, 0($9)
 	     add $9, $9, 512 
 	     sw $22, 0($9)
 	     add $9, $9, 4 
 	     sw $24, 0($9) #COLOCAR BRANCO AQUI
 	     add $9, $9, 4 #COLOCAR BRANCO AQ
 	     sw $24, 0($9)
 	     add $9, $9, 4 
 	     sw $22, 0($9)
 	     add $9, $9, 4 
 	     sw $24, 0($9) #COLOCAR BRANCO AQUI
 	     add $9, $9, 4 
 	     sw $24, 0($9) #COLOCAR BRANCO AQUI
 	     add $9, $9, 4 
 	     sw $22, 0($9)
 	     add $9, $9, 512
 	     sw $22, 0($9)
 	     add $9, $9, -4  #COLOCAR PRETO AQUI
 	     sw $27, 0($9) ##########################
 	     add $9, $9, -4  #COLOCAR BRANCO AQUI
 	     sw $24, 0($9)
 	     add $9, $9, -4 
 	     sw $22, 0($9)
 	     add $9, $9, -4  #COLOCAR PRETO AQUI
 	     sw $27, 0($9)
 	     add $9, $9, -4  #COLOCAR BRANCO AQUI
 	     sw $24, 0($9)
 	     add $9, $9, -4 
 	     sw $22, 0($9)
 	     add $9, $9, 512
 	     sw $22, 0($9)
 	     add $9, $9, 4 #VERDE CLARO AQUI
 	     sw $26, 0($9)
 	     add $9, $9, 4 #VERDE CLARO AQUI
 	     sw $26, 0($9)
 	     add $9, $9, 4 #VERDE CLARO AQUI
 	     sw $26, 0($9)
 	     add $9, $9, 4 #VERDE CLARO AQUI
 	     sw $26, 0($9)
 	     add $9, $9, 4 #VERDE CLARO AQUI
 	     sw $26, 0($9)
 	     add $9, $9, 4 
 	     sw $22, 0($9)
 	     add $9, $9, 516
 	     sw $22, 0($9)
 	     add $9, $9, -8 
 	     sw $26, 0($9)
 	     add $9, $9, -4 #VERDE CLARO AQUI
 	     sw $27, 0($9)
 	     add $9, $9, -4  #COLOCAR PRETO AQUI
 	     sw $26, 0($9)
 	     add $9, $9, -4 #VERDE CLARO AQUI
 	     sw $27, 0($9)
 	     add $9, $9, -4  #COLOCAR PRETO AQUI
 	     sw $26, 0($9)
 	     add $9, $9, -8  
 	     sw $22, 0($9)
 	     add $9, $9, 512 
 	     sw $22, 0($9)
 	     add $9, $9, 4 
 	     sw $22, 0($9)
 	     add $9, $9, 4 #VERDE CLARO AQUI
 	     sw $26, 0($9)
 	     add $9, $9, 4 #VERDE CLARO AQUI
 	     sw $26, 0($9)
 	     add $9, $9, 4 #VERDE CLARO AQUI
 	     sw $26, 0($9)
 	     add $9, $9, 4 #VERDE CLARO AQUI
 	     sw $26, 0($9)
 	     add $9, $9, 4 #VERDE CLARO AQUI
 	     sw $26, 0($9)
 	     add $9, $9, 4 
 	     sw $22, 0($9)
 	     add $9, $9, 4 
 	     sw $22, 0($9)
 	   
 
 	    
########## SPRITE DO SEGUNDO COELHO #############
              

                           





########## SPRITE DO BOMBA #############
sprite3:     lui $9, 0x1001 
	     add $17, $0, 5
	     add $9, $9, 21536
             
cimacabeca3:beq $17, $0, ladocabeca3 #m
            sw $23, 0($9)
            add $9, $9, 4
            add $17, $17, -1
            j cimacabeca3

ladocabeca3: add $9, $9, 512
 	     sw $23, 0($9)
 	     
 	     add $9, $9, 516
 	     sw $23, 0($9)
 	     add $9, $9, 512
 	     sw $23, 0($9)
 	     add $9, $9, 512
 	     sw $23, 0($9)
 	     add $9, $9, 512
 	     sw $23, 0($9)

baixocabeca3: add $9, $9, 508
 	     sw $23, 0($9)
 	     add $9, $9, 508
 	     sw $23, 0($9)
 	     add $9, $9, -4
 	     sw $23, 0($9)
 	     add $9, $9, -4
 	     sw $23, 0($9)
 	     add $9, $9, -4
 	     sw $23, 0($9)
 	     add $9, $9, -4
 	     sw $23, 0($9)

ladocabeca33: add $9, $9, -516
 	     sw $23, 0($9)
 	     add $9, $9, -516
 	     sw $23, 0($9)
 	     add $9, $9, -512
 	     sw $23, 0($9)
 	     add $9, $9, -512
 	     sw $23, 0($9)
 	     add $9, $9, -512
 	     sw $23, 0($9)
 	     add $9, $9, -508
 	     sw $23, 0($9)
 	     add $9, $9, 4
 	     sw $23, 0($9)
 	     add $9, $9, 4
 	     sw $23, 0($9)
 	     add $9, $9, 4
 	     sw $23, 0($9)
 	     add $9, $9, 4
 	     sw $23, 0($9)
 	     add $9, $9, 4
 	     sw $23, 0($9)
 	     
 	     add $9, $9, 512
 	     sw $18, 0($9)
 	     add $9, $9, -4
 	     sw $23, 0($9)
	     add $9, $9, -4
 	     sw $23, 0($9)
 	     add $9, $9, -4
 	     sw $23, 0($9)
 	     add $9, $9, -4 #colocar marrom aqui
 	     sw $18, 0($9)
 	     add $9, $9, -4 
 	     sw $23, 0($9)
 	     add $9, $9, 512 #colocar branco aqui
 	     sw $16, 0($9)
 	     add $9, $9, 4 #colocar branco aqui
 	     sw $16, 0($9)
 	     add $9, $9, 4 #colocar marrom aqui
 	     sw $18, 0($9)
 	      add $9, $9, 4
 	     sw $23, 0($9)
 	     add $9, $9, 4 #colocar marrom aqui
 	     sw $18, 0($9)
 	     add $9, $9, 4 #colocar branco aqui
 	     sw $16, 0($9)
 	     add $9, $9, 4 #colocar branco aqui
 	     sw $16, 0($9)
 	     add $9, $9, 512 #colocar vermelho aqui
 	     sw $15, 0($9)
 	     add $9, $9, -4 #colocar branco aqui
 	     sw $16, 0($9)
 	      add $9, $9, -4
 	     sw $23, 0($9)
 	      add $9, $9, -4
 	     sw $23, 0($9)
 	      add $9, $9, -4
 	     sw $23, 0($9)
 	      add $9, $9, -4 #colocar vermelho aqui
 	     sw $15, 0($9)
 	     add $9, $9, -4 #colocar branco aqui
 	     sw $16, 0($9)
 	     add $9, $9, 512
 	     sw $23, 0($9)
 	      add $9, $9, 4
 	     sw $23, 0($9)
 	      add $9, $9, 4
 	     sw $23, 0($9)
 	     add $9, $9, 4 #colocar amarelo aqui
 	     sw $14, 0($9)
 	     add $9, $9, 4 #colocar amarelo aqui
 	     sw $14, 0($9)
 	      add $9, $9, 4
 	     sw $23, 0($9)
 	      add $9, $9, 4
 	     sw $23, 0($9)
 	      add $9, $9, 512
 	     sw $23, 0($9)
 	     add $9, $9, -4 #colocar amarelo aqui
 	     sw $14, 0($9)
 	     add $9, $9, -4 #colocar amarelo aqui
 	     sw $14, 0($9)
 	     add $9, $9, -4 #colocar amarelo aqui
 	     sw $14, 0($9)
 	     add $9, $9, -4 #colocar Cinza aqui
 	     sw $13, 0($9)
 	     add $9, $9, -4 
 	     sw $23, 0($9)
 	     add $9, $9, 512 #colocar Cinza aqui
 	     sw $13, 0($9)
 	      add $9, $9, 4 #colocar Cinza aqui
 	     sw $13, 0($9)
 	      add $9, $9, 4 #colocar Cinza aqui
 	     sw $13, 0($9)
 	      add $9, $9, 4 #colocar Cinza aqui
 	     sw $13, 0($9)
 	      add $9, $9, 4 #colocar Cinza aqui
 	     sw $13, 0($9)
 	     
 	     
pavio: lui $9, 0x1001
       add $9, $9, 21032
       sw $23, 0($9)
       add $9, $9, -512
       sw $23, 0($9)
       add $9, $9, -512
       sw $23, 0($9)
       add $9, $9, -512
       sw $23, 0($9)
       add $13, $0 , 0x0059f7
       add $9, $9, -508
       sw $13, 0($9)
       
       
       
       ##### digitos ######

      
      
      
      
########## MIRA1 ##########
mira1:lui $9, 0x1001
add $9, $9, 20016 #INICIO DA MIRA
sw $18, 0($9)
add $9, $9, -508
sw $18, 0($9)
########## MIRA1 ##########	                      	                       
 	 
 	  
########## SPRITE DO BOMBA #############                                                    
   
       
             

digitos:   addi $6, $0, 's'
           addi $29, $0, 'w'
           addi $17, $0, 'a'
           addi $18, $0, 'd'
                                                                       
                                                       

######### MOVIMENTAÇÃO1############ 
atirar:  lui $9, 0x1001
      add $9, $9, 19000#INICIO DO DISPARO #colocar para somar com reg que controla a mira
dig:  lw $28, 0($4)
      beq $28, $0, naodig
      lw $28, 4($4)
      beq $28, $6, digS   
      beq $28, $29, digW 
      beq $28, $17, digA
      beq $28, $18, digD
      
sumuv:  add $3, $0, $7#QUANTIDADE DE PASSOS
        add $9, $9, $5   #AVANÇA  # ANGULO DO TIRO
fmv:
      beq $3, $0, atirar
      lw $23, 34000($9) #PEGA CÓPIA DO CENÁRIO
      sw $23, 0($9)  #COLOCA A COR DE VOLTA
      add $9, $9, 4   #AVANÇA  # ANGULO DO TIRO
      sw $18, 0($9) #COLOCA A COR NO PIXEL
      jal sleep  
      addi $3, $3, -1 
      j fmv
      j atirar
######### MOVIMENTAÇÃO ############      
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
##Função: Armazenar valor alto no reg $15 e zerar para sair do laço
# efeito: Fazer com que o movimento seja visível ao mudar posição do pixel
sleep: addi $15, $0, 2
forsleep: beq $15, $0, fimsleep
          nop
          nop
          nop
          nop
          addi $15, $15, -1
          j forsleep  
fimsleep: jr $31


digS: add $5, $5, 512
      j naodig
      
digW: add $5, $5, -512
      j naodig
     
      
digD: add $7, $7, 4
naodig:      
      jal sleep
      j sumuv
