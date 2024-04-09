.globl main 
.data
  	space:  .asciiz " "	 	
.text


main:
	li	$s3, 1
  	addi	$sp, $sp, -64
  	move	$s0, $sp 	#result
  	move	$s1, $sp	#matriz 1
  	move	$s2, $sp	#matriz 2
  	li	$t0, 0
  	for_i:
  	li	$t1, 4
  	bge	$t0, $t1, end_i
  	li	$t2, 0	#j
  	for_j:
  	bge	$t2, $t1, end_j
  	sll	$t3, $t0, 5
  	sll	$s7, $t2, 2
  	add	$t3, $t3, $s7
  	add	$t3, $t3, $s1
  	sw	$s3, 0($t3)
  	addi	$t2, $t2, 1
  	j	for_j
  	end_j:
  	addi	$t0, $t0, 1
  	j	for_i
  	end_i:
  	li	$t0, 0
  	loop_i:
  	li	$t1, 4
  	bge	$t0, $t1, end_loopi
  	li	$t2, 0	#j
  	loop_j:
  	bge	$t2, $t1, end_loopj
  	sll	$t3, $t0, 5
  	sll	$s7, $t2, 2
  	add	$t3, $t3, $s7
  	add	$t3, $t3, $s2
  	sw	$s3, 4($t3)
  	addi	$t2, $t2, 1
  	j	loop_j
  	end_loopj:
  	addi	$t0, $t0, 1
  	j	loop_i
  	end_loopi:
  	li	$t0, 0
  	loop_for_i:
  	li	$t1, 4
  	bge	$t0, $t1, end_loop_i
  	li	$t2, 0	#j
  	loop_for_j:
  	bge	$t2, $t1, end_loop_j
  	sll	$t3, $t0, 5
  	sll	$s7, $t2, 2
  	add	$t3, $t3, $s7
  	add	$t3, $t3, $s0
  	sw	$zero, 8($t3)
  	lw	$t9, 8($t3)
  	li	$t4, 0
  	loop_for_k:
  	bge	$t4, $t1, end_loop_k
  	sll	$t5, $t0, 5
  	sll	$s7, $t4, 2
  	add	$t5, $t5, $s7
  	add	$t5, $t5, $s1
  	lw	$t6, 0($t5)
  	sll	$t7, $t4, 5
  	sll	$s7, $t2, 2
  	add	$t7, $t7, $s7
  	add	$t7, $t7, $s2
  	lw	$t8, 4($t7)
  	mul	$t8, $t8, $t6
  	add	$t8, $t9, $t8
  	sw	$t8, 8($t3)
  	addi	$t4, $t4, 1
  	j	loop_for_k
  	end_loop_k:
  	addi	$t2, $t2, 1
  	j	loop_for_j
  	end_loop_j:
  	addi	$t0, $t0, 1
  	j	loop_for_i
  	end_loop_i:
  	
  	li	$t0, 0
  	for_i_3:
  	li	$t1, 4
  	bge	$t0, $t1, end_i_3
  	li	$t2, 0	#j
  	for_j_3:
  	bge	$t2, $t1, end_j_3
  	sll	$t3, $t0, 5
  	sll	$s7, $t2, 2
  	add	$t3, $t3, $s7
  	add	$t3, $t3, $s0
  	lw	$a0, 8($t3)
  	li	$v0, 1
  	syscall
  	la	$a0, space
  	li	$v0, 4
  	syscall
  	addi	$t2, $t2, 1
  	j	for_j_3
  	end_j_3:
  	addi	$t0, $t0, 1
  	j	for_i_3
  	end_i_3:
  	li $v0, 10        
	syscall
