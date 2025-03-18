extern printf
extern scanf

section .data
txt1 db "1 for add",10,0
txt2 db "2 for sub",10,0
txt3 db "3 for mul",10,0
txt4 db "4 for div",10,0
txt5 db "a+b=%d",10,0
scan1 db "%d",0
scan2 db "%d",0
scan3 db "%d",0

section .bss
scan11 resq 1
scan22 resq 1
scan33 resq 1

section .text
global main
main:
push rbp
mov rbp,rsp

mov rdi,txt1
call printf

mov rdi,txt1
call printf

mov rdi,txt2
call printf

mov rdi,txt3
call printf

mov rdi,txt4
call printf

mov rdi,scan1
mov rsi,scan11
call scanf

mov rbx,scan1
cmp rbx,1
je L1
L1:
mov rdi,scan2
mov rsi,scan22
call scanf
mov rdi,scan3
mov rsi,scan33
call scanf
mov rax,[scan3]
add rax,[scan3]
mov rsi,rax
mov rdi,txt5
call printf

mov rax,0
mov rsp,rbp
pop rbp
ret 
