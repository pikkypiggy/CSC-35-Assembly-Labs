#lab 3
#Kathleen Collier

.intel_syntax noprefix
.data

Intro: 
.ascii "Welcome to the Snack Finder\n\0"

Question1: 
.ascii "Do you want sweet or savory?(1) Sweet. (2) Savory. \n\0"

Question2:
.ascii "Do you want pastry or frozen dessert? (1) Pastry. (2) Frozen Dessert. \n\0"

Question3:
.ascii "Do you want crunchy or soft? (1) Crunchy. (2) Soft. \n\0"

Danish:
.ascii "You should have a Danish!\n\0"

Froyo:
.ascii "You should have some Froyo!\n\0"

Chips:
.ascii "You should have some Chips!\n\0"

Cheese:
.ascii "You should have String Cheese!\n\0"

.text
.global Start

Start:
lea rbx, Intro
call StrPrint

QuestionResult1:
lea rbx, Question1
call StrPrint
call IntScan

cmp rbx, 1
je QuestionResult2

cmp rbx, 2
je QuestionResult3

jmp QuestionResult1

QuestionResult2:
lea rbx, Question2
call StrPrint
call IntScan

cmp rbx, 1
je DanishResult

cmp rbx, 2 
je FroyoResult

jmp QuestionResult2

QuestionResult3:
lea rbx, Question3
call StrPrint
call IntScan

cmp rbx, 1
je ChipResult

cmp rbx, 2
je CheeseResult

jmp QuestionResult3

DanishResult:
lea rbx, Danish
call StrPrint

jmp End
FroyoResult:
lea rbx, Froyo
call StrPrint

jmp End
ChipResult:
lea rbx, Chips
call StrPrint

jmp End
CheeseResult:
lea rbx, Cheese
call StrPrint

jmp End

End:
Call StopProgram
