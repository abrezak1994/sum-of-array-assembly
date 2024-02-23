.data
	array:	.word 8, 1, 4, 5, 6, 3, 2, 9, 7
.text
.globl main
	main:	la $t0,array	#load array address to register t0
		addi $t1,$0,0	#index (i)
		addi $t2,$0,9	#array size (k)
		addi $t3,$0,0	#sum
		addi $t4,$0,4	#int - 4 byte
		loop:
			mul $t5,$t1,$t4	#multiply index with integer size and store it at t5 register
			add $t6,$t0,$t5	#store the current index address of array at t6 register
			lw $t7,0($t6)	#load value from t6 register and store it at t7 register
			add $t3,$t3,$t7	#increment the sum with current array element
			addi $t1,$t1,1	#increment the index (i) by 1
			bne $t1,$t2,loop#while t1 != t2, continue to loop
		addi $v0,$0,1		#print the sum value
		add $a0,$0,$t3		#print the sum value
		syscall			#print the sum value