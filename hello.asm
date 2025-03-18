extern printf
section .data
text db "hello bolorin", 10, 0

section .text
global main
main: push rbp
      mov rbp,rsp
      
mov rdi,text
call printf

mov rsp,rbp
pop rbp
mov eax,0
ret

