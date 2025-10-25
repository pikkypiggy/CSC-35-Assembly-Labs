#Kathleen Collier
#Lab 5

.intel_syntax noprefix
.data

Intro:
 .ascii "\nSutter's Mill daily Report\n\0"

Question:
.ascii "How many trees did we process today?\n\0"

calc1:
  .ascii "2x4s produced: \n\0"
calc2:
 .ascii  "\n3x4s produced: \n\0"
calc3: 
.ascii "\n1x6s produced: \n\0"

total:
.ascii "\nTotal planks produced: \n\0"

Quota:
.ascii "\nWhat was the quota for today? \n\0"

Fulfilled:
.ascii "Quota Fulfilled! \n\0"

NotFulfilled:
.ascii "Quota is Not Met! \n\0"

Trees:
.quad 100

.text
.global Start

Start:
lea rbx , Intro
call StrPrint

lea rbx, Question
call StrPrint

call IntScan
mov Trees, rbx       #moves input value into Trees
mov rax, Trees

Calc2x4:
imul rax, 5         #multiplies the value by 5

lea rbx, calc1
call StrPrint

mov rbx, rax
call IntPrint
mov rax, rbx


Calc1x4:
lea rbx, calc2
call StrPrint

mov rcx, Trees
imul rcx, 4
mov rbx, rcx
call IntPrint
mov rcx, rbx

Calc1x6:
lea rbx, calc3
call StrPrint

mov rdx, Trees
imul rdx, 2
mov rbx, rdx
call IntPrint
mov rdx, rbx

TotalCalc:
add rax, rcx
add rax, rdx

lea rbx, total
call StrPrint

mov rbx, rax
call IntPrint

mov rax, rbx

QuotaCalc:
lea rbx, Quota
call StrPrint
call IntScan

cmp rax, rbx
jge QuotaMet

jl QuotaNot

QuotaMet:
lea rbx, Fulfilled
call StrPrint
jmp End

QuotaNot:
lea rbx, NotFulfilled
call StrPrint
jmp End

End:
call StopProgram




