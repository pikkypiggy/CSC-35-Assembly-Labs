# lab1.asm
# Kathleen Collier
#
# 1. Assemble	: as -o lab1.o lab1.asm
# 2. Link	: ld -o a.out lab1.o csc35.o 
# 3. Execute 	: ./a.out

.intel_syntax noprefix		#Use Intel formatting 
.data 				#Start the data section 
Greeting: 			#Message is an address
  .ascii "Howdy!\n\0"	#Create a buffer of ASCII

Welcome:
.ascii "Welcome, Kathleen Collier to Sacramento!\n\0"

Quote: 
.ascii "Do or Do not there is no try.\n\0"

Warni:
.ascii "Do not skip class.\n\0"

.text
.global Start

Start:
 lea rbx, Greeting
call StrPrint

lea rbx, Welcome
call StrPrint

lea rbx, Quote
call StrPrint

lea rbx, Warni
call StrPrint

Call StopProgram


