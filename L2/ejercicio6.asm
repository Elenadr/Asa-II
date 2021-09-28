  .text
  addi x0, x0, 0 	#-- 0x00000013
  addi x0, x0, 0xFA 	#-- 0x0fa00013
 addi x0, x0, 0xBB	#-- 0x0bb00013
 
  addi x0, x1, 0        #-- 0x00008013  Binario  0000 0000 0000 0000 1000 0000 0001 0011
  addi x0, x2, 0	#-- 0x00010013  Binario  0000 0000 0000 0001 0000 0000 0001 0011
 			#--       		 ==== ==== ==== ===x x=== ==== ==== ====
  
  addi x0, x0, 0	#-- 0x00000013  Binario  0000 0000 0000 0000 0000 0000 0001 0011
addi x31, x0, 0		#-- 0x00000f93  Binario  0000 0000 0000 0000 0000 1111 1001 0011
			#--       		 ==== ==== ==== ==== ==== xxxx x=== ====
			#-- Parece que el número de registro se codifica los bits 7-11 (5 bits)

#--El registro 0 tiene esos 5 bits a 0: 00000
#--El registro 31 tiene esos 5 bits a 1: 11111