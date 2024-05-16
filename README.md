# ASM

## Learning Assembly for Linux-x64

```assembly
global _start            ; Declare _start as the entry point

section .text            ; Begin the text section

_start:                  ; Define the start label
    mov eax, 0x4         ; Move the syscall number for sys_write into EAX
    mov ebx, 1           ; Move the file descriptor for stdout into EBX
    mov ecx, msg         ; Move the memory address of the message into ECX
    mov edx, msg_len     ; Move the length of the message into EDX
    int 0x80             ; Invoke the kernel to perform sys_write

    mov eax, 1           ; Move the syscall number for sys_exit into EAX
    mov ebx, 0           ; Move the exit status code (success) into EBX
    int 0x80             ; Invoke the kernel to perform sys_exit

section .data            ; Begin the data section

msg: db "learning ASM with Radoslav!", 0xA  ; Define the message terminated by newline
msg_len equ $-msg                           ; Calculate the length of the message
```
