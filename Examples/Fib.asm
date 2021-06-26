addi $t1, $t1, 0
addi $t2, $t2, 1
addi $t3, $t3, 0
addi $t4, $t4, 0
addi $t5, $t5, 5
l:
beq $t4, $t5, ll
add $t3, $t2, $t1

addi $t1, $t2, 0
addi $t2, $t3, 0
addi $t4, $t4, 1

jmp l
ll:
addi $t6, $t1, 0