; SIMPLE I/O TEST
; TARGET : Z80 BREADBOARD COMPUTER
; ASSEMBLER : ZASM

IO00:   EQU 0
IO01:	EQU 1
IO02:	EQU 2

	ORG    0H0000

LOOP:	LD	A,0

SW1:	IN	A,IO02
	CP	1
	JP	Z,SW12
	LD	A,00H
	JP	SW13
SW12:	LD	A,80H
SW13: 	OUT	IO00,A

SW2:	IN	A,IO02
	CP	2
	JP	Z,SW22
	LD	A,00H
	JP	SW23
SW22:	LD	A,80H
SW23:	OUT	IO01,A

  JP	LOOP

  END
