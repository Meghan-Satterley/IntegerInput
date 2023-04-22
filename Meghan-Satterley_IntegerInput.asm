;Meghan Satterley
;CSIS250
;Spring 2022
;This program prompts the user on a loop to enter a positive number
;then keeps track of the running total, min and max values, number of even and odd entries
;and the number of total entered values before displaying them back to the user

TITLE Integer Input (Meghan-Satterley_IntegerInput.asm)

INCLUDE Irvine32.inc

.data

;declare variables to store the number of user entries, sum, odd and even values, max and min values

inputCnt   DWORD  0
inputSum   DWORD  0
oddCnt     DWORD  0
evenCnt    DWORD  0
maxVal     DWORD -1	
minVal     DWORD -1

;declare necessary prompt and display lines

prompt     BYTE	  0Dh,0Ah,"Enter positive integer: ",0
cntOutput  BYTE	  0Dh,0Ah,"         Integer count: ",0
sumOutput  BYTE	  0Dh,0Ah,"       Sum of integers: ",0
oddOutput  BYTE	  0Dh,0Ah,"           Odd entries: ",0
evenOutput BYTE	  0Dh,0Ah,"          Even entries: ",0
maxOutput  BYTE	  0Dh,0Ah,"         Highest value: ",0
minOutput  BYTE	  0Dh,0Ah,"          Lowest value: ",0

.code
main PROC

Continue:
	
	call Crlf				
	mov  edx,OFFSET prompt	;prompt user for entry 
	call WriteString 
	call ReadInt
	cmp  eax,0 			;if entry less than zero jump to finish
	jl   Finish

	inc  inputCnt		;increase entry count by one	

	add  inputSum,eax		;add entered value to the sum	

	cmp  inputCnt,1		;compare input count to one 
	jg   CheckEvenOdd		;jump to check even odd if greater
	mov  minVal,eax		;set minVal to first entered number

CheckEvenOdd:

	test eax,00000001h	;check if entered value is even or odd	
	jz   SetEven		;jump to increase even value
	jg   SetOdd			;jump to increase odd value
	
SetEven:
	
	inc  evenCnt		;increase even value		
	jnl  CheckMax		;jump to check max value

SetOdd:

	inc  oddCnt			;increase odd value	

CheckMax: 

	cmp  eax,maxVal		;compare entered value to max value	
	jng  CheckMin		;jump to check min if not greater 
	mov  maxVal,eax		;set entered value to max value

CheckMin:

	cmp  eax,minVal 		;compare entered value to min value	
	jnle Continue    		;jump to continue if not less than or equal
	mov  minVal,eax  		;move entered value to min value
 
	jmp Continue		;jump to continue to restart loop
	
	
Finish: 

	mov  edx,OFFSET cntOutput ;display number of entries
	call WriteString
	mov  eax,inputCnt
	call WriteInt

	mov  edx,OFFSET sumOutput ;display the sum of entered values
	call WriteString
	mov  eax,inputSum
	call WriteInt

	mov  edx,OFFSET oddOutput ;display number of odd entries
	call WriteString
	mov  eax,oddCnt
	call WriteInt

	mov  edx,OFFSET evenOutput ;display number of even entries
	call WriteString
	mov  eax,evenCnt
	call WriteInt

	mov  edx,OFFSET maxOutput ;display max value
	call WriteString
	mov  eax,maxVal
	call WriteInt

	mov  edx,OFFSET minOutput ;display min value
	call WriteString
	mov  eax,minVal
	call WriteInt

	call Crlf		
	call Crlf			
	call WaitMsg			

	exit
main ENDP
END main
