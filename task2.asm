extern printf
extern scanf

section .data
txt1 db "enter your positive integer:",10,0
txt2 db "the sum is %d",10,0
num db "%d",0

section .bss
num1 resq 1

section .text
global main
main:
push rbp
mov rbp,rsp

mov rdi,txt1
call printf

mov rdi,num
mov rsi,num1
call scanf

movsx rcx,[num]
mov rax,0
mov rbx,0

L1:
inc rax
add rbx,rax
loop L1

mov rdi,txt2
mov rsi,rbx
call printf

mov rax,0
mov rsp,rbp
pop rbp
ret
