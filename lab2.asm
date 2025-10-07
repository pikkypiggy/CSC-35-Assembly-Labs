
#lab 2
#Kathleen Collier
#Supplements

.intel_syntax noprefix
.data

Intro:
 .ascii "Sutter's Fort Finance Calculator\n\0"

How:
.ascii "How much did the Fort Collect?\n\0"

Salary: 
.ascii "How much was spent on employee salaries?\n\0"

Repairs:
.ascii "How much was spent on repairs?\n\0"

Flow: 
.ascii "Mr. Sutter, your cash flow is $\n\0"

WarnYes:
.ascii "\n\WARNING! Mr.Sutter, we are running out of money!\n\0"

.text
.global Start

Start:
lea rbx, Intro
call StrPrint
lea rbx, How
call StrPrint
call IntScan
mov rcx, rbx


NextSal:
lea rbx, Salary
call StrPrint
call IntScan
sub rcx, rbx

NextRep:
lea rbx, Repairs
call StrPrint
call IntScan
sub rcx, rbx

NextFlow:
lea rbx, Flow
call StrPrint
mov rbx, rcx
call IntPrint

cmp rbx, 0
jg End

YesWarn:
lea rbx, WarnYes
call StrPrint

End:
call StopProgram

