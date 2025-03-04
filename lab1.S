.global lab1
.syntax unified
#define A #4
#define B #3
#define C #2
lab1:
 push {lr}
 // calculate
 mov r0, A
 mov r1, B
 mov r2, C
 b compare
compare:
 mul r3, r0, r1
 cmp r3, #10
 bge GE_condition
 b LT_condition
GE_condition:
 orr r5, r0, r1
 mul r5, r5, r2
 pop {pc}
LT_condition:
 and r5, r0, r1
 mul r5, r5, r2
 pop {pc}
