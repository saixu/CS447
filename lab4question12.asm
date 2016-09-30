# MIPS program for Problem 12 in the lab #4 handout, 9/30/16
.data 
msgA: .asciiz "Message A"
msgB: .asciiz "Message B"

.text
addi $v0, $zero, 50	# manipulate this line to test different values of $v0
# segment in handout started here:
addi $t0, $zero, 15
addi $t1, $zero, 80
slt $t2, $t0, $v0	
beq $t2, $zero, blockB  
slt $t3, $v0, $t1
beq $t3, $zero, blockB
# print message A
blockA:
la $a0, msgA
li $v0, 4
syscall
j end
blockB:
# print message B
la $a0, msgB
li $v0, 4
syscall

end: 
li $v0, 10
syscall
