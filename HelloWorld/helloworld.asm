; helloworld.asm
;
; Author: Radoslav A
; Date: 15-May-2024

global _start

section .text:

_start:
	mov eax, 0x4 
	mov ebx, 1
	mov ecx, msg
	mov edx, msg_len
	int 0x80

	mov eax, 1
	mov ebx, 0
	int 0x80

section .data:
	msg: db "learning ASM with Radoslav!", 0xA
	msg_len equ $-msg
