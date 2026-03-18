2024-25 qn1



ORG 0H
LJMP MAIN
ORG 100H
MAIN:
MOV P1, #00h
CALL delay_2ms
CALL delay_250us
CALL delay_50us
CALL delay_50us
CALL delay_50us
MOV P1, #01h
CALL delay_1ms
CALL delay_250us
CALL delay_250us
CALL delay_50us
CALL delay_50us
JMP MAIN

ORG 130H
// *****************

// ADD YOUR CODE 
delay_1ms:
push 00h
mov r0, #4
h4: acall delay_250us
djnz r0, h4
pop 00h
ret

delay_0_1ms:
push 00h          ///////////////////////
mov r0, #10
h3: acall delay_250us
djnz r0, h3
pop 00h
ret

delay_2ms:
push 00h
mov r0, #8
h2: acall delay_250us
djnz r0, h2
pop 00h
ret

delay_250us:
push 00h
mov r0, #244
h1: djnz r0, h1
pop 00h
ret

delay_50us:
push 00h
mov r0, #44
h5: djnz r0, h5
pop 00h

RET
END