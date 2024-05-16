; helloworld.asm
;
; Author: Radoslav A
; Date: 15-May-2024

global _start             ; Declare _start as a global symbol (entry point)

section .text:            ; Start of the text section

_start:                   ; Label indicating the start of the program
    mov eax, 0x4          ; Move the system call number for sys_write (4) into EAX
    mov ebx, 1            ; Move the file descriptor for standard output (1) into EBX
    mov ecx, msg          ; Move the memory address of the message into ECX
    mov edx, msg_len      ; Move the length of the message into EDX
    int 0x80              ; Invoke the kernel to perform a system call

    mov eax, 1            ; Move the system call number for sys_exit (1) into EAX
    mov ebx, 0            ; Move the exit status code (0) into EBX
    int 0x80              ; Invoke the kernel to perform a system call for exit

section .data:            ; Start of the data section

	msg: db "learning ASM with Radoslav!", 0xA  ; Define a string terminated by newline
	msg_len equ $-msg                           ; Calculate the length of the message
