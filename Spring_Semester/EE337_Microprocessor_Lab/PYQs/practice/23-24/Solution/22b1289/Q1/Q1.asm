ORG 0H
LJMP MAIN
ORG 100H

MAIN:

CLR P1.0
ACALL delay_1ms
ACALL delay_800us

SETB P1.0
ACALL delay_7ms
ACALL delay_200us

SJMP MAIN

delay_800us:
	push 00h
	mov r0, #4
	h5: acall delay_200us
	djnz r0, h5
	pop 00h
	ret

delay_7ms:
	push 00h
	mov r0, #7
	h3: acall delay_1ms
	djnz r0, h3
	pop 00h
	ret

delay_1ms:
	push 00h
	mov r0, #4
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

delay_200us:
	push 00h
	mov r0, #200
	h0: djnz r0, h0
	pop 00h
	ret

END