#Lab 4
#Kathleen Collier

.intel_syntax noprefix
.data

Intro:
.ascii "Let's Play Chuck a luck!\n\0"

Ask:
.ascii "\n\Play a round? 0 = no. \n\0"

First:
.ascii "First die is:\0"

Second:
.ascii "\n\Second die is:\0"

Third:
.ascii "\n\Third die is:\0"

Total:
.ascii "\n\Total is:\0 "

Win:
.ascii "\n\You win!\n\0"

Lose: 
.ascii "\n\You lose!\n\0"

.text
.global Start

Start:
lea rbx, Intro
call StrPrint

Ask1:
lea rbx, Ask
call StrPrint
call IntScan

cmp rbx, 0
jle End 

cmp rbx, 1
je Random1



Random1:
lea rbx, First
call StrPrint
mov rbx, 6
call GetRandom
add rbx, 1
call IntPrint

mov rcx, rbx

lea rbx, Second
call StrPrint
mov rbx, 6
call GetRandom
add rbx, 1
call IntPrint
add rcx, rbx

lea rbx, Third
call StrPrint
mov rbx, 6
call GetRandom
add rbx, 1
call IntPrint

add rcx, rbx

TotalResult:
lea rbx, Total
call StrPrint
mov rbx, rcx
call IntPrint

cmp rbx, 12
jge winner
jl loser

winner:
lea rbx, Win
call StrPrint
jmp Ask1
loser:
lea rbx, Lose
call StrPrint
jmp Ask1

End:
call StopProgram
