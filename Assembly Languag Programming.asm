		.model small
        .stack 100h
        .386
        .data

;========= TO DO: ================
;[DONE] FILTER: invalid, error in input, press any key to continue...
;FILTER: Subtrahend greater than minuend, divisor greater than dividend

		dot db, "00.$"

		inputA1 db 0 	; input A first digit
		inputA2 db 0 	; input A second digit
		inputA3 db 0 	; input A third digit

		inputB1 db 0 	; input B first digit
		inputB2 db 0 	; input B second digit
		inputB3 db 0 	; input B third digit

		addition db 0dh,0ah, "	            ================== Addition ====================== $"
	subctraction db 0dh,0ah, "	          ================== subctraction ================== $"
	multplication db 0dh,0ah, "	      ================== multplication ================= $"
		division db 0dh,0ah, "	      ================== division ====================== $"

        ;Main  Menu string
        menu1 db 0dh,0ah, "               ================== MAIN MENU =================== $"
        msg1 db 0dh,0ah,  "                          [1] Calculator             $"
        msg2 db 0dh,0ah,  "                          [2] Converter              $"
        msg3 db 0dh,0ah,  "                          [3] Exit                   $"
        inpt1 db 0dh,0ah, "                          Pick your Choice: $"
		des1 db 0dh,0ah,  "               ================================================ $" ;design1
		
;===================================== ALL CALCULATOR STRINGS =======================================;

        ;Calculator menu string
        menu2 db 0dh,0ah, "	      ================== CALCULATOR MENU ================== $"
        madd db 0dh,0ah,  "     		         [1] Addition                        $"
        msub db 0dh,0ah,  "    			 [2] Subtraction                     $"
        mmul db 0dh,0ah,  "    			 [3] Multiplication                  $"
        mdiv db 0dh,0ah,  "   			 [4] Division                        $"
        bmm1 db 0dh,0ah,  "    			 [5] Back to MAIN MENU               $"			;back to main menu
        inpt2 db 0dh,0ah, "    			 Pick your Choice: $"
		
		;Calculator Sub Menu: Base Options
		menu21 db 0dh,0ah, "    		================== CALCULATOR SUB-MENU ================== $"
		b3cal db 0dh,0ah,  " 	            	[1] Base 03               $"
        b14cal db 0dh,0ah, "   			[2] Base 14             $"
        b6cal db 0dh,0ah,  "   			[3] Base 06              $"
        b2cal db 0dh,0ah,  "   			[4] Back to CALCULATOR MENU              $"
        inpt3 db 0dh,0ah,  "     			Pick your Choice: $"
		
		;Base 3 Add String
		menu211 db 0dh,0ah, " 	 ================== ADDITION: BASE 03 ================== $"
		anum1 db 0dh,0ah,   " 			Addend [00.000-0.222]: $"
		anum2 db 0dh,0ah,   " 			Augend [00.000-0.222]: $"
		
		res1 db 0dh,0ah,    " 			Sum is: $"
		aloop1 db 0dh,0ah, 	" 			Add again? [Y/N]: $"
		
		;Base 14 Add String
		menu212 db 0dh,0ah, " 	 ================== ADDITION: BASE 14 ================== $"
		anum3 db 0dh,0ah, 	" 			Addend [00.000-0.DDD]: $"
		anum4 db 0dh,0ah, 	" 			Augend [00.000-0.DDD]: $"
		
		res2 db 0dh,0ah, 	" 			Sum is: $"
		aloop2 db 0dh,0ah, 	" 			Add again? [Y/N]: $"
		
		;Base 6 Add String
		menu213 db 0dh,0ah, " 	 ================== ADDITION: BASE 06 ================== $"
		anum5 db 0dh,0ah, 	" 			Addend [00.000-0.555]: $"
		anum6 db 0dh,0ah, 	" 			Augend [00.000-0.555]: $"
		
		res3 db 0dh,0ah, 	" 			Sum is: $"
		aloop3 db 0dh,0ah, 	" 			Add again? [Y/N]: $"
		
		
        ;Base 3 Sub String
        menu221 db 0dh,0ah, "	 	================= SUBTRACTION: BASE 03 =================$"
        snum1 db 0dh,0ah, 	"     				Minuend [00.000-00.222]   : $"
        snum2 db 0dh,0ah, 	"      				Subtrahend [00.000-00.222]: $"
		
        res4 db 0dh,0ah, 	"      				Difference is     : $"
        sloop1 db 0dh,0ah,  "       				Subtract Again? [Y/N]: $"

        ;Base 14 Sub String
        menu222 db 0dh,0ah, "		================= SUBTRACTION: BASE 14 =================$"
        snum3 db 0dh,0ah,   "      				Minuend [00-DD]   : $"
        snum4 db 0dh,0ah,   "      				Subtrahend [00-DD]: $"
		
        res5 db 0dh,0ah, 	"      				Difference is     : $"
        sloop2 db 0dh,0ah, 	"       				Subtract Again? [Y/N]: $"    

        ;Base 6 Sub String
        menu223 db 0dh,0ah, "		================= SUBTRACTION: BASE 06 =================$"
        snum5 db 0dh,0ah, 	"     				Minuend [00.000-00.555]   : $"
        snum6 db 0dh,0ah, 	"      				Subtrahend [00.000-00.555]: $"
		
        res6 db 0dh,0ah, 	"      				Difference is     : $"
        sloop3 db 0dh,0ah, 	"       				Subtract Again? [Y/N]: $"		
	     
		;Base 3 Mult String
		menu231 db 0dh,0ah, "		================= MULTIPLICATION: BASE 03 =================$"
        mnum1 db 0dh,0ah, 	"     				Multiplicand [00-22]   : $"
        mnum2 db 0dh,0ah, 	"      				Multiplier [00-22]: $"
		
        res7 db 0dh,0ah, 	"      				Product is     : $"
        mloop1 db 0dh,0ah, 	"       				Multiply Again? [Y/N]: $"	
		
		;Base 14 Mult string
		menu232 db 0dh,0ah, "		================= MULTIPLICATION: BASE 14 =================$"
        mnum3 db 0dh,0ah, 	"     				Multiplicand [00-DD]   : $"
        mnum4 db 0dh,0ah, 	"      				Multiplier [00-DD]: $"
		
        res8 db 0dh,0ah, 	"      				Product is     : $"
        mloop2 db 0dh,0ah, 	"       				Multiply Again? [Y/N]: $"		
		
		;Base 6 Mult string
		menu233 db 0dh,0ah, "		================= MULTIPLICATION: BASE 06 =================$"
        mnum5 db 0dh,0ah, 	"     				Multiplicand [00-55]   : $"
        mnum6 db 0dh,0ah, 	"      				Multiplier [00-55]: $"
		
        res9 db 0dh,0ah, 	"      				Product is     : $"
        mloop3 db 0dh,0ah, 	"       				Multiply Again? [Y/N]: $"		
	  
        ;Base 3 Div String
		menu241 db 0dh,0ah, "		================= DIVISION: BASE 03 =================$"
        dnum1 db 0dh,0ah, 	"     				Dividend [00-22]   : $"
        dnum2 db 0dh,0ah, 	"      				Divisor [00-22]: $"
		
        res10 db 0dh,0ah, 	"      				Product is     : $"
		rem1 db 0dh,0ah, 	" 					Remainder:       $"
        dloop1 db 0dh,0ah, 	"       				Divide Again? [Y/N]: $"

        ;Base 14 Div String
		menu242 db 0dh,0ah, "		================= DIVISION: BASE 14 =================$"
        dnum3 db 0dh,0ah, 	"     				Dividend [00-DD]   : $"
        dnum4 db 0dh,0ah, 	"      				Divisor [00-DD]: $"
		
        res11 db 0dh,0ah, 	"      				Product is     : $"
		rem2 db 0dh,0ah, 	" 					Remainder:       $"
        dloop2 db 0dh,0ah, 	"       				Divide Again? [Y/N]: $"	

        ;Base 6 Div String
		menu243 db 0dh,0ah, "		================= DIVISION: BASE 06 =================$"
        dnum5 db 0dh,0ah, 	"     				Dividend [00-55]   : $"
        dnum6 db 0dh,0ah, 	"      				Divnisor [00-55]: $"
		
        res12 db 0dh,0ah, 	"      				Product is     : $"
		rem3 db 0dh,0ah, 	" 					Remainder:       $"
        dloop3 db 0dh,0ah, 	"       				Divide Again? [Y/N]: $"			
			

;===================================== ALL CONVERSION STRINGS =======================================;

        ;Conversion Menu String
        menu3 db 0dh,0ah,  "	   ================== CONVERSION MENU ================== $"
        b3con db 0dh,0ah,  " 	            	[1] Base 03               $"
        b14con db 0dh,0ah, "   			[2] Base 14             $"
        b6con db 0dh,0ah,  "   			[3] Base 06              $"
        bmm2 db 0dh,0ah,  "   			[4] Back to MAIN MENU              $"         ;back to main menu
        inpt4 db 0dh,0ah,  "     			Pick your Choice: $"

        ;========== CONVERSIONS AVAILABLE FOR BASE 3, 14 , AND 6 ==============;
		
		;Conversion Sub Menu string
		menu31 db 0dh,0ah,"     ==================== CONVERSION: BASE 03 ==================== $"
		b3op1 db 0dh,0ah, "                        [1] Base 3 to Base 14 $" 						;base 3 to base 14 option
		b3op2 db 0dh,0ah, "                        [2] Base 3 to Base 6 $" 						;base 3 to base 14 option
		b3op3 db 0dh,0ah, "                        [3] Back to Conversion Menu $" 				;back to CONV_MAIN
		ch1 db 0dh,0ah,   "                        Pick your choice: $"
		
		;Conversion Sub Menu string
		menu32 db 0dh,0ah, "     ==================== CONVERSION: BASE 14 ==================== $"
		b14op1 db 0dh,0ah, "                        [1] Base 14 to Base 3 $" 						;base 14 to base 3 option
		b14op2 db 0dh,0ah, "                        [2] Base 14 to Base 6 $" 						;base 14 to base 6 option
		b14op3 db 0dh,0ah, "                        [3] Back to Conversion Menu $" 				;back to CONV_MAIN
		ch2 db 0dh,0ah,   "                        Pick your choice: $"
		
		;Conversion Sub Menu string
		menu33 db 0dh,0ah, "     ==================== CONVERSION: BASE 06 ==================== $"
		b6op1 db 0dh,0ah, "                        [1] Base 6 to Base 3 $" 						;base 6 to base 3 option
		b6op2 db 0dh,0ah, "                        [2] Base 6 to Base 14 $" 						;base 6 to base 14 option
		b6op3 db 0dh,0ah, "                        [3] Back to Conversion Menu 0$" 				;back to CONV_MAIN
		ch3 db 0dh,0ah,   "                        Pick your choice: $"
		
		;============ BASE 3 TO OTHER BASE WITH INPUT ============;
        ;Conversion base 3 to 14 String
        menu41 db 0dh,0ah, "     ==================== CONVERSION: BASE 03 ==================== $"
        b3b14 db 0dh,0ah,  "                     	  Base 3 to Base 14 $"
        b3one db 0dh, 0ah, "          		Base 3 [00-22]    : $"
        b14one db 0dh,0ah, "          		Base 14 Equivalent: $"
        cloop1 db 0dh,0ah, "             		Convert Again[Y/N]? : $"
		
		;Conversion base 3 to 6 String
        menu42 db 0dh,0ah, "     ==================== CONVERSION: BASE 03 ==================== $"
        b3b6 db 0dh,0ah,   "                     	  Base 3 to Base 6 $"
        b3two db 0dh, 0ah, "          		Base 3 [00-22]    : $"
        b6one db 0dh,0ah,  "          		Base 6 Equivalent : $"
        cloop2 db 0dh,0ah, "             	Convert Again[Y/N]? : $"
		
		;============ BASE 14 TO OTHER BASE WITH INPUT ============;
		
		;Conversion base 14 to 3 string
		con db "   ===================================$"
        c14to3 db "CONVERSION - BASE 14 to BASE 03$"
		Base14two db "Input a number [0.000-0.DDD]: 0.$"
		b3three db "Base 03 equivalent :$"
		cloop3 db "Convert again[Y/N]: $"
		
		;Conversion base 14 to 6 string
		c14to6 db "CONVERSION - BASE 14 to BASE 06$"
		Base14one db "Input a number [0.000-0.DDD]: 0.$"
		b6two db "Base 06 equivalent :$"
		cloop4 db "Convert again[Y/N]: $"		
				
		;============ BASE 6 TO OTHER BASE WITH INPUT ============;
		
        ;Conversion base 6 to 3 String
		c6to3 db "CONVERSION - BASE 06 to BASE 03$"
		Base6one db "Input a number [0.000-0.555]: 0.$"
		b3four db "Base 03 equivalent :$"
		cloop5 db "Convert again[Y/N]: $"

        ;Conversion base 6 to 14 String
        c6to14 db "CONVERSION - BASE 06 to BASE 03$"
		Base6two db "Input a number [0.000-0.555]: 0.$"
		b3five db "Base 03 equivalent :$"
        cloop6 db "Convert Again[Y/N]? : $"	
		
        ;EXIT STATEMENTS AND OTHERS
		inv db 0dh, 0ah,   "           		Invalid input number! $"
		qa db"			Are you sure to close the program?[Y/N]: $"
		any db 0dh, 0ah, "			Press any key to continue.... $"
        ext db 0dh,0ah, "                      Presented by : HITAMUKINA TEAM                  $"
		extt db "                       		Narvasa, J. and Genova L.                  $"
        exttt db 0dh,0ah, "                     Thank you for using our System....                      $"

        .code

main proc
    
        mov ax,@data
        mov ds,ax  

        call cls				;call clear screen function
        call MAIN_MENU    		;call main menu

cls:							;clear screen function
        mov ax,0600h
        mov bh,0Eh
        mov cx,0000h
        mov dx,184Fh
        int 10h

        mov ah,02h
        mov bh,00h
        mov dx,07c0h
        int 10h

        ret						;return value
		
linefeed:
		mov ah,02h
        mov dl,0dh
        mov dl,0ah
        int 21h
		
		ret
;==================== MAIN MENU PROCESS ======================
MAIN_MENU proc					;main menu
        call cls				;call clear screen function
         
        mov ax,0600h
        mov bh,70h
        mov cx,0000h
        mov dx,184fh
        int 10h
        mov bh,00h
        mov ah,02h
        mov dx,011Eh
        int 10h
        
        mov ah,09h
        lea dx,menu1
        int 21h

        call linefeed

        mov ah,09h
        lea dx,msg1  ; calculator
        int 21h

        mov ah,09h
        lea dx,msg2
        int 21h

        mov ah,09h
        lea dx,msg3
        int 21h
		
		call linefeed

        mov ah,09h
        lea dx,des1
        int 21h

        mov ah,09h
        lea dx,inpt1
        int 21h

        mov ah,1
        int 21h
        mov bh,al
        sub bh,48
        
        cmp bh,1
        je CALC_MAIN

        cmp bh,2
        je CONV_MAIN

        cmp bh,3
        je confirm
		jg invalid	
MAIN_MENU endp
;==================== CALC MAIN PROCESS======================
CALC_MAIN proc
		
        call cls
        
        mov ax,0600h
        mov bh,70h
        mov cx,0000h
        mov dx,184fh
        int 10h
        mov bh,00h
        mov ah,02h
        mov dx,011Eh
        int 10h

		call linefeed

        mov ah,09h
        lea dx,menu2
        int 21h

		call linefeed

        mov ah,09h
        lea dx,madd  ;addition
        int 21h

        mov ah,09h
        lea dx,msub  ;subtraction
        int 21h

        mov ah,09h
        lea dx,mmul
        int 21h

        mov ah,09h
        lea dx,mdiv
        int 21h

        mov ah,09h
        lea dx,bmm1
        int 21h

		call linefeed

		call linefeed

        mov ah,09h
        lea dx,inpt2
        int 21h

        mov ah,1
        int 21h
        mov bh,al
        sub bh,48
		
		cmp bh,1
		je CALC_ADDITION_CHOOSE_BASE
		
		cmp bh,2
		je CALC_SUBTRACTION_CHOOSE_BASE
		
		; cmp bh,3
		; je CALC_MULTIPLICATION_CHOOSE_BASE
		
		; cmp bh,4
		; je CALC_DIVISION_CHOOSE_BASE
		
		cmp bh,5
		je MAIN_MENU
		jg invalid	
CALC_MAIN endp
;==================== CALC ADDTION: CHOOSE BASE PROCESS======================			
CALC_ADDITION_CHOOSE_BASE proc
				
        call cls
        
        mov ax,0600h
        mov bh,70h
        mov cx,0000h
        mov dx,184fh
        int 10h
        mov bh,00h
        mov ah,02h
        mov dx,011Eh
        int 10h

		call linefeed
		
		mov ah,09h
        lea dx,addition
        int 21h

        mov ah,09h
        lea dx,menu21
        int 21h
		
		call linefeed
		
        mov ah,09h
        lea dx,b3cal  ; base 3 calculator
        int 21h
		
        ; mov ah,09h
        ; lea dx,b14cal ; base 14 calculator
        ; int 21h
		
		mov ah,09h
		lea dx,b6cal  ; base 6 calculator
		int 21h
		
		mov ah,09h
		lea dx,b2cal
		int 21h
		
		call linefeed
		
		mov ah,09h
		lea dx,inpt3
		int 21h
		
		mov ah,01h 				; mov ah,1 = dapat 01h to
        int 21h
        ; mov bh,al = rekta na al

		; NOTE: di na kekalangan nito , bawat choices dapat may '' ganto
        ; sub bh,48
		
		cmp al,'1'				; cmp bh,1 mali to
		je ADD_BASE3
		
		; cmp al,'2'				; cmp bh,2 mali to
		; je ADD_BASE14

		cmp al,'3'				; cmp bh,3 mali to
		je ADD_BASE6
		
		cmp al,'4'				; cmp bh,4 mali to
		je CALC_MAIN
		
		; cmp bh,5 di na kelangan to
		jge invalid_calc_choose_base

CALC_ADDITION_CHOOSE_BASE endp

;==================== CALC SUBTRACTION: CHOOSE BASE PROCESS======================			
CALC_SUBTRACTION_CHOOSE_BASE proc
				
        call cls
        
        mov ax,0600h
        mov bh,70h
        mov cx,0000h
        mov dx,184fh
        int 10h
        mov bh,00h
        mov ah,02h
        mov dx,011Eh
        int 10h

		call linefeed

		mov ah,09h
        lea dx,subctraction
        int 21h
		
        mov ah,09h
        lea dx,menu21
        int 21h
		
		call linefeed
		
        mov ah,09h
        lea dx,b3cal  ; base 3 calculator
        int 21h
		
        ; mov ah,09h
        ; lea dx,b14cal ; base 14 calculator
        ; int 21h
		
		mov ah,09h
		lea dx,b6cal  ; base 6 calculator
		int 21h
		
		mov ah,09h
		lea dx,b2cal
		int 21h
		
		call linefeed
		
		mov ah,09h
		lea dx,inpt3
		int 21h
		
		mov ah,01h 						; mov ah,1 = dapat 01h to
        int 21h
        ; mov bh,al = rekta na al

		; NOTE: di na kekalangan nito , bawat choices dapat may '' ganto
        ; sub bh,48
		
		cmp al,'1'					; cmp bh,1 mali to
		je SUB_BASE3
		
		; cmp al,'2'					; cmp bh,2 mali to
		; je SUB_BASE14

		cmp al,'3'						; cmp bh,3 mali to
		je SUB_BASE6
		
		cmp al,'4'						; cmp bh,4 mali to
		je CALC_MAIN
		
		; cmp bh,5 di na kelangan to
		; jge invalid_calc_choose_base

		jmp CALC_SUBTRACTION_CHOOSE_BASE ; kapag wala sa condition

CALC_SUBTRACTION_CHOOSE_BASE endp

;================= ADDITION TO OTHER BASE ================;		
;================= BASE 3 ADDITION STARTS HERE ==============;
ADD_BASE3 proc

; pang clear screeen
		mov ax,0600h
        mov bh,70h
        mov cx,0000h
        mov dx,184fh
        int 10h
        mov bh,00h
        mov ah,02h
        mov dx,011Eh
        int 10h

		call linefeed


		mov ah,00
		mov ah,02
		int 10h

		mov ah,09h
		lea dx,menu211  ;==== ADDITION BASE 03 =====
		int 21h


; first input
		addendb3_first:
		lea dx,anum1
		int 21h

		; Print dot character
        lea dx, dot     		; Load dot character = '00.'
        int 21h

		; input first digit
		mov ah,01h
		int 21h
		mov [inputA1],al

		;=== FILTER INPUT ===
		cmp [inputA1],'0'         ; reject input less than 0 | NOTE : NIREKTA BALIK KO SA FUNCTION
		jl ADD_BASE3

		cmp [inputA1],'2'
		jg ADD_BASE3	   		; reject input higher than 2| NOTE : NIREKTA BALIK KO SA FUNCTION

		sub [inputA1],30h 		; subtract 0 from input

; second input 
	addendb3_second:
		mov ah,01h
		int 21h
		mov [inputA2] ,al

		;=== FILTER INPUT ===
		cmp [inputA2] ,30h 		; reject input less than 0
		jl ADD_BASE3       		; reject input less than 0 | NOTE : NIREKTA BALIK KO SA FUNCTION

		cmp [inputA2] ,32h
		jg ADD_BASE3	   		; reject input higher than 2| NOTE : NIREKTA BALIK KO SA FUNCTION

		sub [inputA2],30h 				; subtract 0 from input

; third input
	addendb3_third:
		mov ah,01h
		int 21h
		mov [inputA3] ,al

		;=== FILTER INPUT ===
		cmp [inputA3],30h 		; reject input less than 0
		jl ADD_BASE3       		; reject input less than 0 | NOTE : NIREKTA BALIK KO SA FUNCTION

		cmp [inputA3],32h
		jg ADD_BASE3	   		; reject input higher than 2| NOTE : NIREKTA BALIK KO SA FUNCTION

		sub [inputA3],30h 		; subtract 0 from input

; ================= ITO YUNG LASON SA CODE NYO ================= ;
; Explanation : nag rurun parin tong line of code nato kahit percect naman ang input
		; ab3:
		; jmp faddb3

		; faddb3:			;for first input
		; call ADD_BASE3
		
		; saddb3:
		; call AUGEND_B3

; ============================================================= ;
ADD_BASE3 endp

AUGEND_B3 proc

	augendb3_first:

; first input
		mov ah,09h
		lea dx,anum2
		int 21h

		; Print dot character
        lea dx, dot     		; Load dot character = '0.'
        int 21h

		mov ah,01  				; input second number
		int 21h
		mov [inputB1],al

        ; filter input
		cmp [inputB1],30h 				; reject input less than 0 
		jl ADD_BASE3

		cmp [inputB1],32h 				; reject input higher than 2
		jg ADD_BASE3

		sub [inputB1],30h 				; subtract 0 from 

; second input
	augendb3_second:

		mov ah,01
		int 21h
		mov [inputB2] ,al

        ; filter input
		cmp [inputB2],30h 						; reject input less than 0 
		jl ADD_BASE3

		cmp [inputB2],32h 						; reject input higher than 2
		jg ADD_BASE3

		sub [inputB2],30h 						; subtract 0 from 

; third input
	augendb3_third:

		mov ah,01h
		int 21h
		mov [inputB3],al

        ; filter input
		cmp [inputB3],30h 						; reject input less than 0 
		jl ADD_BASE3

		cmp [inputB3],32h 						; reject input higher than 2
		jg ADD_BASE3

		sub [inputB3],30h 						; subtract 0 from 

; ==================== hindi nyo na kelangan to pang pahaba lang ng code to ==================== ;
		; jmp SUM_B3 ;jump to sum function
		
		; aub3:
		; call faugb3

		; faugb3:
		; call ADD_BASE3
; ==================== ============================================================ ============= ;

; Total
		; Addend = 0. inputA1 inputA2 inputA3 
		; Augend = 0. inputB1 inputB2 inputB3 

		SUM_B3: 
; -------------------- Total in base 3 ------------------------------ ;

; =============== addtion of inputA3 + inputB3 =============== ;
		mov al,[inputA3]
		add al,[inputB3]
		mov [inputB3],al   ; result of the total inputA3 + inputB3

		; division of result
		mov ah,00h
		mov al,00h
		mov al,[inputB3]	; transfer the total to al
		mov bl,03h			; base 3
		div bl

		; result
		mov [inputA3],al    ; quotient
		mov [inputB3],ah    ; ramainder = last digit

; =============== addition of quotient + inputA2 + inputB2 =============== ;
		mov bl,[inputA3]  	; move the quotient to bl
		mov al,[inputA2]	; move the inputA2  to al
		add al,bl			; add quotient + inputA2
		add al,[inputB2]   	; add al total = inputB2 
		mov [inputB2],al    ; result of the total inputA2 + inputB2
 
		; division of result
		mov ah,00h
		mov al,[inputB2]	; transfer the total to al
		mov bl,03h			; base 3
		div bl

		; result
		mov [inputA2],al    ; quotient
		mov [inputB2],ah    ; remainder = third digit 

; =============== addition of quotient + inputA1 + inputB1 =============== ;
		mov bl,[inputA2]  	; move the quotient to bl
		mov al,[inputA1]	; move the inputA2  to al
		add al,bl			; add quotient + inputA2
		add al,[inputB1]   	; add al total = inputB2  
		mov [inputB1],al    ; result of the total inputA2 + inputB2

		; division of result
		mov ah,00h
		mov al,[inputB1]	; transfer the total to al
		mov bl,03h			; base 3
		div bl		

		; result
		mov [inputB1],ah    ; ramainder = second digit
		mov [inputA1],al    ; quotient  = first digit
		
		; print out the result
		mov ah,09h      	;Print out
    	lea dx,res1
    	int 21h

		mov ah, 02h 		 ; pang print out ito

		mov dl,[inputA1] 	 ; first digit
		add dl,'0'
    	int 21h

		; Print dot character
        mov dl, '.'     	 ; dot'
        int 21h

		mov dl,[inputB1]     ; second digit
		add dl,'0'
    	int 21h

		mov dl,[inputB2]	 ; third digit
		add dl,'0'
    	int 21h

		mov dl,[inputB3]	 ; last digit
		add dl,'0'
    	int 21h



; ================================================================================ ;

	ADD_BASE3_AGAIN:
		mov ah,09h
		lea dx,aloop1
		int 21h
		mov ah,01h 
		int 21h 
		
		cmp al,'Y'
		je Y_BASE3
		cmp al,'y' ;if 'y' is selected
		je Y_BASE3
		
		cmp al,'N' ;if 'n' is selected
		je N_BASE3
		cmp al,'n' ;if 'n' is selected
		je N_BASE3
		
		mov ah,09h
		lea dx,inv
		int 21h
		lea dx,any
		int 21h
		mov ah,01h
		int 21h
		
		Y_BASE3:
		jmp ADD_BASE3
		N_BASE3:
		jmp CALC_ADDITION_CHOOSE_BASE

AUGEND_B3 endp
		
ADD_BASE14 proc

; pang clear screeen
		mov ax,0600h
        mov bh,70h
        mov cx,0000h
        mov dx,184fh
        int 10h
        mov bh,00h
        mov ah,02h
        mov dx,011Eh
        int 10h

		call linefeed

        mov ah,09h
        lea dx,menu212  ;==== ADDITION BASE 14 =====
        int 21h

; -------------- first input -------------- ;
        mov ah,09h
        lea dx,anum3
        int 21h

		; Print dot character
        lea dx, dot     			; Load dot character = '00.'
        int 21h

		; ======================== input first digit ======================== ;
		mov ah,01h
		int 21h
		mov inputA1,al

		;=== FILTER INPUT ===
		cmp [inputA1],'0'         		
		jl CHECK_LETTERS_1_1				; CHECK_LETTERS if input is less than 0

		cmp [inputA1],'9'
		jg CHECK_LETTERS_1_1	   			; CHECK_LETTERS if input is less than 9

		jmp ACCEPT_INPUT_1_1				; jump to accept if input are numbers

		CHECK_LETTERS_1_1:
			cmp [inputA1],'a'         		; reject input less than 0 | NOTE : NIREKTA BALIK KO SA FUNCTION
			jl ADD_BASE14

			cmp [inputA1],'d'
			jg ADD_BASE14	   				; reject input higher than 2| NOTE : NIREKTA BALIK KO SA FUNCTION

			jmp first_second_digit 			; jump to next input

		ACCEPT_INPUT_1_1:
			; convert ascii to decimal
			sub [inputA1],'0'


		; ======================== input second digit ======================== ;
		first_second_digit:
		mov ah,01h
		int 21h
		mov inputA2,al

		;=== FILTER INPUT ===
		cmp [inputA2],'0'         		
		jl CHECK_LETTERS_1_2				; CHECK_LETTERS if input is less than 0

		cmp [inputA2],'9'
		jg CHECK_LETTERS_1_2	   			; CHECK_LETTERS if input is less than 9

		jmp ACCEPT_INPUT_1_2				; jump to accept if input are numbers

		CHECK_LETTERS_1_2:
			cmp [inputA2],'a'         	; reject input less than 0 | NOTE : NIREKTA BALIK KO SA FUNCTION
			jl ADD_BASE14

			cmp [inputA2],'d'
			jg ADD_BASE14	   			; reject input higher than 2| NOTE : NIREKTA BALIK KO SA FUNCTION

			jmp first_third_digit 		; jump to next input
		ACCEPT_INPUT_1_2:
			; convert ascii to decimal
			sub [inputA2],'0'

		; ======================== input third digit ======================== ;
		first_third_digit:
		mov ah,01h
		int 21h
		mov inputA3,al

		;=== FILTER INPUT ===
		cmp [inputA3],'0'         		
		jl CHECK_LETTERS_1_3				; CHECK_LETTERS if input is less than 0

		cmp [inputA3],'9'
		jg CHECK_LETTERS_1_3	   			; CHECK_LETTERS if input is less than 9

		jmp ACCEPT_INPUT_1_3				; jump to accept if input are numbers

		CHECK_LETTERS_1_3:
			cmp [inputA3],'a'         	; reject input less than 0 | NOTE : NIREKTA BALIK KO SA FUNCTION
			jl ADD_BASE14

			cmp [inputA3],'d'
			jg ADD_BASE14	   			; reject input higher than 2| NOTE : NIREKTA BALIK KO SA FUNCTION

		ACCEPT_INPUT_1_3:
			; convert ascii to decimal
			sub [inputA3],'0'

; second input
        mov ah,09h
        lea dx,anum4
        int 21h

		; Print dot character
        lea dx, dot     			; Load dot character = '00.'
        int 21h

		; ======================== input first digit ======================== ;
		mov ah,01h
		int 21h
		mov inputB1,al

		;=== FILTER INPUT ===
		cmp [inputB1],'0'         		
		jl CHECK_LETTERS_2_1				; CHECK_LETTERS if input is less than 0

		cmp [inputB1],'9'
		jg CHECK_LETTERS_2_1	   			; CHECK_LETTERS if input is less than 9

		jmp ACCEPT_INPUT_2_1				; jump to accept if input are numbers

		CHECK_LETTERS_2_1:
			cmp [inputB1],'a'         		; reject input less than 0 | NOTE : NIREKTA BALIK KO SA FUNCTION
			jl ADD_BASE14

			cmp [inputB1],'d'
			jg ADD_BASE14	   				; reject input higher than 2| NOTE : NIREKTA BALIK KO SA FUNCTION

		ACCEPT_INPUT_2_1:
			; convert ascii to decimal
			sub [inputB1],'0'

		; ======================== input second digit ======================== ;
		mov ah,01h
		int 21h
		mov inputB2,al

		;=== FILTER INPUT ===
		cmp [inputB2],'0'         		
		jl CHECK_LETTERS_2_2				; CHECK_LETTERS if input is less than 0

		cmp [inputB2],'9'
		jg CHECK_LETTERS_2_2	   			; CHECK_LETTERS if input is less than 9

		jmp ACCEPT_INPUT_2_2				; jump to accept if input are numbers

		CHECK_LETTERS_2_2:
			cmp [inputB2],'a'         		; reject input less than 0 | NOTE : NIREKTA BALIK KO SA FUNCTION
			jl ADD_BASE14

			cmp [inputB2],'d'
			jg ADD_BASE14	   				; reject input higher than 2| NOTE : NIREKTA BALIK KO SA FUNCTION

		ACCEPT_INPUT_2_2:
			; convert ascii to decimal
			sub [inputB2],'0'


		; ======================== input third digit ======================== ;
		mov ah,01h
		int 21h
		mov inputB3,al

		;=== FILTER INPUT ===
		cmp [inputB3],'0'         		
		jl CHECK_LETTERS_2_3				; CHECK_LETTERS if input is less than 0

		cmp [inputB3],'9'
		jg CHECK_LETTERS_2_3	   			; CHECK_LETTERS if input is less than 9

		jmp ACCEPT_INPUT_2_3				; jump to accept if input are numbers

		CHECK_LETTERS_2_3:
			cmp [inputB3],'a'         		; reject input less than 0 | NOTE : NIREKTA BALIK KO SA FUNCTION
			jl ADD_BASE14

			cmp [inputB3],'d'
			jg ADD_BASE14	   				; reject input higher than 2| NOTE : NIREKTA BALIK KO SA FUNCTION

		ACCEPT_INPUT_2_3:
			; convert ascii to decimal
			sub [inputB3],'0'			

		call linefeed

; =================== =================== =================== ;

		; Addend = 0. inputA1 inputA2 inputA3 
		; Augend = 0. inputB1 inputB2 inputB3 

		; -------------------- Total in base 3 ------------------------------ ;
		; mov al,[inputA3]
		; add al,[inputB3]
		; mov [inputB3],al   					; result of the total inputA3 + inputB3

		; ; division of result
		; mov ah,00h
		; mov al,00h
		; mov al,[inputB3]					; transfer the total to al
		; mov bl,14h							; base 3
		; div bl

		; ; result
		; mov [inputA3],al    				; quotient
		; mov [inputB3],ah    				; ramainder = last digit

		; print the result
        mov ah,09h
        lea dx,res2
        int 21h

		mov ah, 02h 		 ; pang print out ito
		mov dl,[inputA3]	 ; last digit
    	int 21h

ADD_BASE14 endp

ADD_BASE14_AGAIN proc

        mov ah,09h
        lea dx,aloop2
        int 21h
		mov ah,01h		
        int 21h
        mov bh,al
		int 21h
		
		cmp bh,'Y' 		;if 'y' is selected
		je Y_BASE14
		cmp bh,'y'
		je Y_BASE14
		cmp bh,'N'
		je N_BASE14
		cmp bh,'n'		;if 'n' is selected
		je N_BASE14
		
		mov ah,09h
		lea dx,inv
		int 21h
		lea dx,any
		int 21h
		mov ah,01h
		int 21h
		
		Y_BASE14:
			jmp ADD_BASE14
		N_BASE14:
			jmp CALC_ADDITION_CHOOSE_BASE

ADD_BASE14_AGAIN endp

ADD_BASE6 proc
		
; pang clear screeen
		mov ax,0600h
        mov bh,70h
        mov cx,0000h
        mov dx,184fh
        int 10h
        mov bh,00h
        mov ah,02h
        mov dx,011Eh
        int 10h

		call linefeed

        mov ah,09h
        lea dx,menu213  ; ==== ADDITION BASE 06 =====
        int 21h
		
		call linefeed

; first input
        mov ah,09h
        lea dx,anum5  			; addend
        int 21h

		; Print dot character
        lea dx, dot     		; Load dot character = '00.'
        int 21h

		; ======= input first digit
		mov ah,01h
		int 21h
		mov [inputA1],al			; store first digit to inputA1

		; filter the digits
		cmp [inputA1],'0'         	; reject input less than 0 | NOTE : NIREKTA BALIK KO SA FUNCTION
		jl ADD_BASE6

		cmp [inputA1],'5'
		jg ADD_BASE6	   			; reject input higher than 5| NOTE : NIREKTA BALIK KO SA FUNCTION

		sub [inputA1],30h 			; subtract 0 from input
		; ============================== ;

		; =======  input second digit
		mov ah,01h
		int 21h
		mov [inputA2],al			; store first digit to inputA1

		; filter the digits
		cmp [inputA2],'0'         	; reject input less than 0 | NOTE : NIREKTA BALIK KO SA FUNCTION
		jl ADD_BASE6

		cmp [inputA2],'5'
		jg ADD_BASE6	   			; reject input higher than 5| NOTE : NIREKTA BALIK KO SA FUNCTION

		sub [inputA2],30h 			; subtract 0 from input
		; ============================== ;

		; =======   input third digit
		mov ah,01h
		int 21h
		mov [inputA3],al			; store first digit to inputA1

		; filter the digits
		cmp [inputA3],'0'         	; reject input less than 0 | NOTE : NIREKTA BALIK KO SA FUNCTION
		jl ADD_BASE6

		cmp [inputA3],'5'
		jg ADD_BASE6	   			; reject input higher than 5| NOTE : NIREKTA BALIK KO SA FUNCTION

		sub [inputA3],30h 			; subtract 0 from input
		; ============================== ;
		

; second input
        mov ah,09h
        lea dx,anum6 				; auggend
        int 21h

		; Print dot character
        lea dx, dot     			; Load dot character = '00.'
        int 21h

		; ======= input first digit
		mov ah,01h
		int 21h
		mov [inputB1],al			; store first digit to inputA1

		; filter the digits
		cmp [inputB1],'0'         	; reject input less than 0 | NOTE : NIREKTA BALIK KO SA FUNCTION
		jl ADD_BASE6

		cmp [inputB1],'5'
		jg ADD_BASE6	   			; reject input higher than 5| NOTE : NIREKTA BALIK KO SA FUNCTION

		sub [inputB1],30h 			; subtract 0 from input
		; ============================== ;

		; =======  input second digit
		mov ah,01h
		int 21h
		mov [inputB2],al			; store first digit to inputA1

		; filter the digits
		cmp [inputB2],'0'         	; reject input less than 0 | NOTE : NIREKTA BALIK KO SA FUNCTION
		jl ADD_BASE6

		cmp [inputB2],'5'
		jg ADD_BASE6	   			; reject input higher than 5| NOTE : NIREKTA BALIK KO SA FUNCTION

		sub [inputB2],30h 			; subtract 0 from input
		; ============================== ;

		; =======   input third digit
		mov ah,01h
		int 21h
		mov [inputB3],al			; store first digit to inputA1

		; filter the digits
		cmp [inputB3],'0'         	; reject input less than 0 | NOTE : NIREKTA BALIK KO SA FUNCTION
		jl ADD_BASE6

		cmp [inputB3],'5'
		jg ADD_BASE6	   			; reject input higher than 5| NOTE : NIREKTA BALIK KO SA FUNCTION

		sub [inputB3],30h 			; subtract 0 from input
		; ============================== ;

; -------------------- Total in base 6 ------------------------------ ;
		; addend = 0.inputA1 inputA2 inputA3
		; aggend = 0.inputB1 inputB2 inputB3

; =============== addtion of inputA3 + inputB3 =============== ;
		mov al,[inputA3]
		add al,[inputB3]
		mov [inputB3],al   ; result of the total inputA3 + inputB3

		; division of result
		mov ah,00h
		mov al,00h
		mov al,[inputB3]	; transfer the total to al
		mov bl,06h			; base 6
		div bl

		; result
		mov [inputA3],al    ; quotient
		mov [inputB3],ah    ; ramainder = last digit

; =============== addition of quotient + inputA2 + inputB2 =============== ;
		mov bl,[inputA3]  	; move the quotient to bl
		mov al,[inputA2]	; move the inputA2  to al
		add al,bl			; add quotient + inputA2
		add al,[inputB2]   	; add al total = inputB2 
		mov [inputB2],al    ; result of the total inputA2 + inputB2
 
		; division of result
		mov ah,00h
		mov al,[inputB2]	; transfer the total to al
		mov bl,06h			; base 6
		div bl

		; result
		mov [inputA2],al    ; quotient
		mov [inputB2],ah    ; remainder = third digit 

; =============== addition of quotient + inputA1 + inputB1 =============== ;
		mov bl,[inputA2]  	; move the quotient to bl
		mov al,[inputA1]	; move the inputA2  to al
		add al,bl			; add quotient + inputA2
		add al,[inputB1]   	; add al total = inputB2  
		mov [inputB1],al    ; result of the total inputA2 + inputB2

		; division of result
		mov ah,00h
		mov al,[inputB1]	; transfer the total to al
		mov bl,06h			; base 6
		div bl		

		; result
		mov [inputB1],ah    ; ramainder = second digit
		mov [inputA1],al    ; quotient  = first digit




		; print the result
		mov ah,09h
        lea dx,res3
        int 21h
		
		mov ah, 02h 		 ; pang print out ito

		mov dl,[inputA1] 	 ; first digit
		add dl,'0'
    	int 21h

		; Print dot character
        mov dl, '.'     	 ; dot'
        int 21h

		mov dl,[inputB1]     ; second digit
		add dl,'0'
    	int 21h

		mov dl,[inputB2]	 ; third digit
		add dl,'0'
    	int 21h

		mov dl,[inputB3]	 ; last digit
		add dl,'0'
    	int 21h



ADD_BASE6 endp
		
ADD_BASE6_AGAIN proc
        mov ah,09h
        lea dx,aloop3
        int 21h
		mov ah,01h		
        int 21h
        mov bh,al
		int 21h
		
		cmp bh,59h 		;if 'y' is selected
		cmp bh,79h
		je Y_BASE6
		cmp bh,4Eh		;if 'n' is selected
		cmp bh,6Eh
		je N_BASE6
		
		mov ah,09h
		lea dx,inv
		int 21h
		lea dx,any
		int 21h
		mov ah,01h
		int 21h
		
		Y_BASE6:
		jmp ADD_BASE6
		N_BASE6:
		jmp CALC_ADDITION_CHOOSE_BASE

ADD_BASE6_AGAIN endp

SUB_BASE3 proc
		
; pang clear screeen
		mov ax,0600h
        mov bh,70h
        mov cx,0000h
        mov dx,184fh
        int 10h
        mov bh,00h
        mov ah,02h
        mov dx,011Eh
        int 10h

		call linefeed

        mov ah,09h
        lea dx,menu221  ; ==== SUBTRACTION BASE 03 =====
        int 21h
		
		call linefeed

; first input
        mov ah,09h
        lea dx,snum1  			; Minuend
        int 21h

		; Print dot character
        lea dx, dot     		; Load dot character = '00.'
        int 21h

		; ======= input first digit
		mov ah,01h
		int 21h
		mov [inputA1],al			; store first digit to inputA1

		; filter the digits
		cmp [inputA1],'0'         	; reject input less than 0 | NOTE : NIREKTA BALIK KO SA FUNCTION
		jl SUB_BASE3

		cmp [inputA1],'2'
		jg SUB_BASE3	   			; reject input higher than 5| NOTE : NIREKTA BALIK KO SA FUNCTION


		; ============================== ;

		; =======  input second digit
		mov ah,01h
		int 21h
		mov [inputA2],al			; store first digit to inputA1

		; filter the digits
		cmp [inputA2],'0'         	; reject input less than 0 | NOTE : NIREKTA BALIK KO SA FUNCTION
		jl SUB_BASE3

		cmp [inputA2],'2'
		jg SUB_BASE3	   			; reject input higher than 5| NOTE : NIREKTA BALIK KO SA FUNCTION

		; ============================== ;

		; =======   input third digit
		mov ah,01h
		int 21h
		mov [inputA3],al			; store first digit to inputA1

		; filter the digits
		cmp [inputA3],'0'         	; reject input less than 0 | NOTE : NIREKTA BALIK KO SA FUNCTION
		jl SUB_BASE3

		cmp [inputA3],'2'
		jg SUB_BASE3	   			; reject input higher than 5| NOTE : NIREKTA BALIK KO SA FUNCTION


		; ============================== ;
		

; second input
        mov ah,09h
        lea dx,snum2 				; Subtrahend
        int 21h

		; Print dot character
        lea dx, dot     			; Load dot character = '00.'
        int 21h

		; ======= input first digit
		mov ah,01h
		int 21h
		mov [inputB1],al			; store first digit to inputA1

		; filter the digits
		cmp [inputB1],'0'         	; reject input less than 0 | NOTE : NIREKTA BALIK KO SA FUNCTION
		jl SUB_BASE3

		cmp [inputB1],'2'
		jg SUB_BASE3	   			; reject input higher than 5| NOTE : NIREKTA BALIK KO SA FUNCTION

		; ============================== ;

		; =======  input second digit
		mov ah,01h
		int 21h
		mov [inputB2],al			; store first digit to inputA1

		; filter the digits
		cmp [inputB2],'0'         	; reject input less than 0 | NOTE : NIREKTA BALIK KO SA FUNCTION
		jl SUB_BASE3

		cmp [inputB2],'2'
		jg SUB_BASE3	   			; reject input higher than 5| NOTE : NIREKTA BALIK KO SA FUNCTION


		; ============================== ;

		; =======   input third digit
		mov ah,01h
		int 21h
		mov [inputB3],al			; store first digit to inputA1

		; filter the digits
		cmp [inputB3],'0'         	; reject input less than 0 | NOTE : NIREKTA BALIK KO SA FUNCTION
		jl SUB_BASE3

		cmp [inputB3],'2'
		jg SUB_BASE3	   			; reject input higher than 5| NOTE : NIREKTA BALIK KO SA FUNCTION

		; ============================== ;

; -------------------- Total in base 3 ------------------------------ ;
		; Minuend = 0. inputA1 inputA2 inputA3
		; Subtrahend = 0. inputB1 inputB2 inputB3

; ============================== SUBTRACTION USING R's Compliment ============================== ;
		
		; Rs Compliment
		mov ax,3232h
		mov bl,33h

		sub ah,[inputB1] 
		sub al,[inputB2] 
		sub bl, [inputB3] 

		
		mov cx,ax 			; transfer the rs complment in cx register

		; trasnfer the rs complemented result
		mov [inputB1], ch	
		mov [inputB2], cl
		mov [inputB3], bl


		; transfer the minuned to register
		mov ch,inputA1
		mov cl,inputA2
		mov bl,inputA3

		; convert to decimal
		sub cx,3030h 		
		sub bl,30h

		; ============ addition of minuend + rs complement ============ ;
		mov al,ch
		add al,[inputB3]
		mov [inputB3],al

		; division the result
		sub ax,ax 				; clear the value
		mov al,[inputB3]		; transfer the total to al
		mov bl,03h				; base 3
		div bl

		; result
		mov [inputA3],al    ; quotient
		mov [inputB3],ah    ; ramainder = last digit

		; ============ addition of minuend + rs complement ============ ;
		mov al,ch
		add al,[inputB2]
		add al,[inputA3]
		mov [inputB2],al

		; division the result
		sub ax,ax 				; clear the value
		mov al,[inputB2]		; transfer the total to al
		mov bl,03h				; base 3
		div bl

		; result
		mov [inputA2],al    ; quotient
		mov [inputB2],ah    ; ramainder = second digit

		; ============ addition of minuend + rs complement ============ ;
		mov al,ch
		add al,[inputB1]
		add al,[inputA2]
		mov [inputB1],al

		; division the result
		sub ax,ax 				; clear the value
		mov al,[inputB1]		; transfer the total to al
		mov bl,03h				; base 3
		div bl

		; result
		sub al,al
		mov [inputA1],al    ; quotient
		mov [inputB1],ah    ; ramainder = first digit		

		; print the result
		mov ah,09h
        lea dx,res6 	     ; Diffirence
        int 21h
		
		mov ah, 02h 		 ; pang print out ito

		mov dl,[inputA1] 	 ; first digit
		add dl,'0'
    	int 21h

		; Print dot character
        mov dl, '.'     	 ; dot'
        int 21h


		mov dl,[inputB1]     ; second digit
		add dl,'0'
    	int 21h

		mov dl,[inputB2]	 ; third digit
		add dl,'0'
    	int 21h

		mov dl,[inputB3]	 ; last digit
		add dl,'0'
    	int 21h



SUB_BASE3 endp
		
SUB_BASE3_AGAIN proc
        mov ah,09h
        lea dx,sloop3
        int 21h
		mov ah,01h		
        int 21h
        mov bh,al
		int 21h
		
		cmp bh,'Y'
		je subY_BASE3
		cmp bh,'y' ;if 'y' is selected
		je subY_BASE3
		
		cmp bh,'N' ;if 'n' is selected
		je subN_BASE3
		cmp bh,'n' ;if 'n' is selected
		je subN_BASE3
		
		mov ah,09h
		lea dx,inv
		int 21h
		lea dx,any
		int 21h
		mov ah,01h
		int 21h
		
		subY_BASE3:
			jmp SUB_BASE3
		subN_BASE3:
			jmp CALC_SUBTRACTION_CHOOSE_BASE 

SUB_BASE3_AGAIN endp

SUB_BASE6 proc
		
; pang clear screeen
		mov ax,0600h
        mov bh,70h
        mov cx,0000h
        mov dx,184fh
        int 10h
        mov bh,00h
        mov ah,02h
        mov dx,011Eh
        int 10h

		call linefeed

        mov ah,09h
        lea dx,menu223  ; ==== SUBTRACTION BASE 06 =====
        int 21h
		
		call linefeed

; first input
        mov ah,09h
        lea dx,snum5  			; Minuend
        int 21h

		; Print dot character
        lea dx, dot     		; Load dot character = '00.'
        int 21h

		; ======= input first digit
		mov ah,01h
		int 21h
		mov [inputA1],al			; store first digit to inputA1

		; filter the digits
		cmp [inputA1],'0'         	; reject input less than 0 | NOTE : NIREKTA BALIK KO SA FUNCTION
		jl SUB_BASE6

		cmp [inputA1],'5'
		jg SUB_BASE6	   			; reject input higher than 5| NOTE : NIREKTA BALIK KO SA FUNCTION


		; ============================== ;

		; =======  input second digit
		mov ah,01h
		int 21h
		mov [inputA2],al			; store first digit to inputA1

		; filter the digits
		cmp [inputA2],'0'         	; reject input less than 0 | NOTE : NIREKTA BALIK KO SA FUNCTION
		jl SUB_BASE6

		cmp [inputA2],'5'
		jg SUB_BASE6	   			; reject input higher than 5| NOTE : NIREKTA BALIK KO SA FUNCTION

		; ============================== ;

		; =======   input third digit
		mov ah,01h
		int 21h
		mov [inputA3],al			; store first digit to inputA1

		; filter the digits
		cmp [inputA3],'0'         	; reject input less than 0 | NOTE : NIREKTA BALIK KO SA FUNCTION
		jl SUB_BASE6

		cmp [inputA3],'5'
		jg SUB_BASE6	   			; reject input higher than 5| NOTE : NIREKTA BALIK KO SA FUNCTION


		; ============================== ;
		

; second input
        mov ah,09h
        lea dx,snum6 				; Subtrahend
        int 21h

		; Print dot character
        lea dx, dot     			; Load dot character = '00.'
        int 21h

		; ======= input first digit
		mov ah,01h
		int 21h
		mov [inputB1],al			; store first digit to inputA1

		; filter the digits
		cmp [inputB1],'0'         	; reject input less than 0 | NOTE : NIREKTA BALIK KO SA FUNCTION
		jl SUB_BASE6

		cmp [inputB1],'5'
		jg SUB_BASE6	   			; reject input higher than 5| NOTE : NIREKTA BALIK KO SA FUNCTION

		; ============================== ;

		; =======  input second digit
		mov ah,01h
		int 21h
		mov [inputB2],al			; store first digit to inputA1

		; filter the digits
		cmp [inputB2],'0'         	; reject input less than 0 | NOTE : NIREKTA BALIK KO SA FUNCTION
		jl SUB_BASE6

		cmp [inputB2],'5'
		jg SUB_BASE6	   			; reject input higher than 5| NOTE : NIREKTA BALIK KO SA FUNCTION


		; ============================== ;

		; =======   input third digit
		mov ah,01h
		int 21h
		mov [inputB3],al			; store first digit to inputA1

		; filter the digits
		cmp [inputB3],'0'         	; reject input less than 0 | NOTE : NIREKTA BALIK KO SA FUNCTION
		jl SUB_BASE6

		cmp [inputB3],'5'
		jg SUB_BASE6	   			; reject input higher than 5| NOTE : NIREKTA BALIK KO SA FUNCTION

		; ============================== ;

; -------------------- Total in base 6 ------------------------------ ;
		; Minuend = 0. inputA1 inputA2 inputA3
		; Subtrahend = 0. inputB1 inputB2 inputB3

; ============================== SUBTRACTION USING R's Compliment ============================== ;
		
		; Rs Compliment
		mov ax,3535h
		mov bl,36h

		sub ah,[inputB1] 
		sub al,[inputB2] 
		sub bl, [inputB3] 

		
		mov cx,ax 			; transfer the rs complment in cx register

		; trasnfer the rs complemented result
		mov [inputB1], ch	
		mov [inputB2], cl
		mov [inputB3], bl


		; transfer the minuned to register
		mov ch,inputA1
		mov cl,inputA2
		mov bl,inputA3

		; convert to decimal
		sub cx,3030h 		
		sub bl,30h

		; ============ addition of minuend + rs complement ============ ;
		mov al,ch
		add al,[inputB3]
		mov [inputB3],al

		; division the result
		sub ax,ax 				; clear the value
		mov al,[inputB3]		; transfer the total to al
		mov bl,06h				; base 6
		div bl

		; result
		mov [inputA3],al    ; quotient
		mov [inputB3],ah    ; ramainder = last digit

		; ============ addition of minuend + rs complement ============ ;
		mov al,ch
		add al,[inputB2]
		add al,[inputA3]
		mov [inputB2],al

		; division the result
		sub ax,ax 				; clear the value
		mov al,[inputB2]		; transfer the total to al
		mov bl,06h				; base 6
		div bl

		; result
		mov [inputA2],al    ; quotient
		mov [inputB2],ah    ; ramainder = second digit

		; ============ addition of minuend + rs complement ============ ;
		mov al,ch
		add al,[inputB1]
		add al,[inputA2]
		mov [inputB1],al

		; division the result
		sub ax,ax 				; clear the value
		mov al,[inputB1]		; transfer the total to al
		mov bl,06h				; base 6
		div bl

		; result
		sub al,al
		mov [inputA1],al    ; quotient
		mov [inputB1],ah    ; ramainder = first digit		

		; print the result
		mov ah,09h
        lea dx,res6 	     ; Diffirence
        int 21h
		
		mov ah, 02h 		 ; pang print out ito

		mov dl,[inputA1] 	 ; first digit
		add dl,'0'
    	int 21h

		; Print dot character
        mov dl, '.'     	 ; dot'
        int 21h


		mov dl,[inputB1]     ; second digit
		add dl,'0'
    	int 21h

		mov dl,[inputB2]	 ; third digit
		add dl,'0'
    	int 21h

		mov dl,[inputB3]	 ; last digit
		add dl,'0'
    	int 21h



SUB_BASE6 endp
		
SUB_BASE6_AGAIN proc
        mov ah,09h
        lea dx,sloop3
        int 21h
		mov ah,01h		
        int 21h
        mov bh,al
		int 21h
		
		cmp bh,'Y'
		je subY_BASE6
		cmp bh,'y' ;if 'y' is selected
		je subY_BASE6
		
		cmp bh,'N' ;if 'n' is selected
		je subN_BASE6
		cmp bh,'n' ;if 'n' is selected
		je subN_BASE6
		
		mov ah,09h
		lea dx,inv
		int 21h
		lea dx,any
		int 21h
		mov ah,01h
		int 21h
		
		subY_BASE6:
			jmp SUB_BASE6
		subN_BASE6:
			jmp CALC_SUBTRACTION_CHOOSE_BASE 

SUB_BASE6_AGAIN endp
		
CONV_MAIN:
        call cls
         
        mov ax,0600h
        mov bh,70h
        mov cx,0000h
        mov dx,184fh
        int 10h
        mov bh,00h
        mov ah,02h
        mov dx,011Eh
        int 10h

        mov ah,09h
        lea dx,menu3
        int 21h

		call linefeed

        mov ah,09h
        lea dx,b3con
        int 21h

        mov ah,09h
        lea dx,b14con
        int 21h

        mov ah,09h
        lea dx,b6con
        int 21h

        mov ah,09h
        lea dx,bmm2
        int 21h

		call linefeed

		call linefeed

        mov ah,09h
        lea dx,inpt4
        int 21h

        mov ah,1
        int 21h
        mov bh,al
        sub bh,48
		cmp al,32h

        ;cmp bh,1
        ;je CONV_B3_OPTIONS			

        cmp bh,2
        je CONV_B14_OPTIONS			;working

        ;cmp bh,3
        ;je CONV_B6_OPTIONS

        cmp bh,4
        je MAIN_MENU
		
		cmp bh,5
		jge invalid_conv_main

CONV_B6_OPTIONS proc
		call cls
		
		mov ax,0600h
        mov bh,70h
        mov cx,0000h
        mov dx,184fh
        int 10h
        mov bh,00h
        mov ah,02h
        mov dx,011Eh
        int 10h
		
		call linefeed

		mov ah,09h
		lea dx,menu33
		int 21h
		
		call linefeed

		mov ah,09h
		lea dx,b6op1
		int 21h	

		mov ah,09h
		lea dx,b6op2
		int 21h
		
		mov ah,09h
		lea dx,b6op3
		int 21h
		
		call linefeed
		
		mov ah,09h
		lea dx,ch3
		int 21h
		mov ah,01h
		int 21h
		
		cmp al,31h
		je CON_6TO3
		
		;cmp al,32h
		;je CON_6TO14
		
		cmp al,33H
		je BACK_TO_CONV
		
		cmp al,34H
		jge invalid_b14options
CONV_B6_OPTIONS endp

CONV_B14_OPTIONS proc
		call cls
		
		mov ax,0600h
        mov bh,70h
        mov cx,0000h
        mov dx,184fh
        int 10h
        mov bh,00h
        mov ah,02h
        mov dx,011Eh
        int 10h
		
		call linefeed

		mov ah,09h
		lea dx,menu32
		int 21h
		
		call linefeed

		mov ah,09h
		lea dx,b14op1
		int 21h	

		mov ah,09h
		lea dx,b14op2
		int 21h
		
		mov ah,09h
		lea dx,b14op3
		int 21h
		
		call linefeed
		
		mov ah,09h
		lea dx,ch2
		int 21h
		mov ah,01h
		int 21h
		
		cmp al,31h
		je CON_14TO3
		
		cmp al,32h
		je CON_14TO6
		
		cmp al,33H
		je BACK_TO_CONV
		
		cmp al,34H
		jge invalid_b14options
		
CONV_B14_OPTIONS endp

BACK_TO_CONV:
	jmp CONV_MAIN
	
;=============== CONVERSION BASE 14 TO 6 ===================
CON_14TO6:  
	call centerclear
	
    mov ah,02h
	mov dx,0114h
	int 10h
	mov ah,09h
	lea dx, con
	int 21h
	
	mov ah,02h
	mov dx,0219h
	int 10h
	mov ah,09h
	lea dx,c14to6
	int 21h
	
	mov ah,02h
	mov dx,0314h
	int 10h
	mov ah,09h
	lea dx,con
	int 21h
	
	mov ah,02h
	mov dx,0517h
	int 10h
	mov ah,09h
	lea dx,Base14two
	int 21h
;input 1	
	call input
	
	cmp al, 30h
	jl CON_14TO6
	cmp al, 39h
	jle CON_14TO6_1to9 
	
    cmp al, 41h
	jl CON_14TO6
	cmp al, 44h
	jle CON_14TO6_ABCD
	
	cmp al, 61h
	jl CON_14TO6
	cmp al, 64h
	jle CON_14TO6_ABCD
	jg CON_14TO6
	
CON_14TO6_1to9: 
    and ax, 000Dh 
    mov bx, 00A8h 	;search this equivalent in ASCII
	mul bx
	push ax
	jmp CON_14TO6_next 
	
CON_14TO6_ABCD: 
    and ax, 000Dh
	add al, 09h  
	mov bx, 00A8h
	mul bx
	push ax
	jmp CON_14TO6_next 
	
CON_14TO6_again: 
    jmp CON_14TO6
	
CON_14TO6_next:   
;input 2
	call input 
	
	cmp al, 30h
	jl CON_14TO6_again 
	cmp al, 39h
	jle CON_14TO6_1to9_next 

    cmp al, 41h
	jl CON_14TO6_again 
	cmp al, 44h
	jle CON_14TO6_ABCD_next 
	
	cmp al, 61h
	jl CON_14TO6_again 
	cmp al, 64h
	jle CON_14TO6_ABCD_next 
	jg CON_14TO6_again 
	
	
CON_14TO6_1to9_next:
    and ax, 000Dh
	mov bx, 00A8h 
	mul bx
	push ax
	jmp CON_14TO6_last 
	
CON_14TO6_ABCD_next:
    and ax, 000Dh 
	add al, 06h  
	mov bx, 00A8h 
	mul bx
	push ax
	jmp CON_14TO6_last 
		
CON_14TO6_last: 
; input3
	call input 
	
	cmp al, 30h
	jl CON_14TO6_again
	cmp al, 39h
	jle CON_14TO6_1to9_last 

    cmp al, 41h
	jl CON_14TO6_again
	cmp al, 44h
	jle CON_14TO6_ABCD_last 
	
	cmp al, 61h
	jl CON_14TO6_again
	cmp al, 64h
	jle CON_14TO6_ABCD_last 
	jg CON_14TO6_again
	
CON_14TO6_1to9_last: 
    and ax, 000Dh
	push ax
	jmp CON_14TO6_out
	
CON_14TO6_ABCD_last: 
    and ax, 000Dh  
	add al, 06h   
	push ax
	
CON_14TO6_out:
    pop ax
	pop bx  
	pop cx 
	
	add bx,cx
	
	add ax,bx 
	
	mov cx,0004h 
CON_14TO6_here:  
	sub dx,dx
	mov bx,0006h 
	div bx
	push dx
	loop CON_14TO6_here 
	
    call center
	
	mov ah,02h
	mov dx,0617h
	int 10h
	mov ah,09h
	lea dx,b6two
	int 21h
	
    mov cx,0003h
B14toB06_outa:
    sub ax,ax
	pop ax
	mov bl,al 
	or bl,30h 
	mov ah,02h
	mov dl,bl
	int 21h
	loop B14toB06_outa
	mov dl,2Eh
	int 21h
    mov cx,0001h
	
B14toB06_outb: 
    sub ax,ax
	pop ax
	mov bl,al 
	or bl,30h 
	mov ah,02h
	mov dl,bl
	int 21h
	loop B14toB06_outb
	
	call center
	
	mov ah,02h
	mov dx,0814h
	int 10h
	mov ah,09h
	lea dx,con
	int 21h
	
	mov ah,02h
	mov dx,0917h
	int 10h
	mov ah,09h
	lea dx,cloop4
	int 21h
	
	call input
	
	cmp al,59h
	je JMP14TO6Y
	cmp al,79h
	je JMP14TO6Y
	
	cmp al,4eh
	je CONV_B14_OPTIONS
	cmp al,6eh
	je CONV_B14_OPTIONS 

	jmp JMP14TO6Y

;===================== CONVERSION BASE 14 TO 3 =====================  
 CON_14TO3:  
	call centerclear
	
    mov ah,02h
	mov dx,0114h
	int 10h
	mov ah,09h
	lea dx,con 	;==============================
	int 21h
	
	mov ah,02h
	mov dx,0219h
	int 10h
	mov ah,09h
	lea dx,c14to3   ;CONVERSION - BASE 14 to BASE 03
	int 21h
	
	mov ah,02h
	mov dx,0314h
	int 10h
	mov ah,09h
	lea dx,con
	int 21h
	
	mov ah,02h
	mov dx,0517h
	int 10h
	mov ah,09h
	lea dx,Base14one ;Base 14 [0.000-0.DDD]
	int 21h
	
	call input	 ;1st digit input
	
	cmp al, 30h	 ;compare al to 0
	jl CON_14TO3
	cmp al, 39h
	jle CON_14TO3_1to9 ; jmp function for number inputs only
	
    cmp al, 41h
	jl CON_14TO3
	cmp al, 44h
	jle CON_14TO3_ABCD ;jmp function for letter inputs only
	
	cmp al, 61h
	jl CON_14TO3
	cmp al, 64h
	jle CON_14TO3_ABCD
	jg CON_14TO3
	
CON_14TO3_1to9: 	;function for number input
    and ax, 000Dh 
    mov bx, 003Fh 
	mul bx
	push ax
	jmp CON_14TO3_next 
	
CON_14TO3_ABCD: 	;function for letter input
    and ax, 000Dh
	add al, 09h  
	mov bx, 003Fh
	mul bx
	push ax
	jmp CON_14TO3_next 
	
CON_14TO3_again: 	;repeat conversion process
    jmp CON_14TO3
	
CON_14TO3_next:       

	call input 	;2nd digit input
	
	cmp al, 30h	;compare al to 0
	jl CON_14TO3_again 
	cmp al, 39h
	jle CON_14TO3_1to9_next 

    cmp al, 41h
	jl CON_14TO3_again 
	cmp al, 44h
	jle CON_14TO3_abcde_next 
	
	cmp al, 61h
	jl CON_14TO3_again 
	cmp al, 64h
	jle CON_14TO3_abcde_next 
	jg CON_14TO3_again 
	
	
CON_14TO3_1to9_next:
    and ax, 000Dh
	mov bx, 003Fh 
	mul bx
	push ax
	jmp CON_14TO3__last 
	
CON_14TO3_abcde_next:
    and ax, 000Dh 
	add al, 09h  
	mov bx, 003Fh 
	mul bx
	push ax
		
CON_14TO3__last: 	;input3
	call input 
	
CON_14TO3__1to9_last: 
    and ax, 000Dh
	push ax
	jmp CON_14TO3__out
	
CON_14TO3__ABCD_last: 
    and ax, 000Dh  
	add al, 09h   
	push ax
	
CON_14TO3__out:
    pop ax
	pop bx  
	pop cx 
	
	add bx,cx
	
	add ax,bx 
	
	mov cx,0004h 
CON_14TO3__here:  
	sub dx,dx
	mov bx,0009h 
	div bx
	push dx
	loop CON_14TO3__here 
	
    call center
	
	mov ah,02h
	mov dx,0617h
	int 10h
	mov ah,09h
	lea dx,b3three
	int 21h
	
    mov cx,0003h
B14toB03_outa:
    sub ax,ax
	pop ax
	mov bl,al 
	or bl,30h 
	mov ah,02h
	mov dl,bl
	int 21h
	loop B14toB03_outa
	mov dl,2Eh
	int 21h
    mov cx,0001h
	
B14toB03_outb: 
    sub ax,ax
	pop ax
	mov bl,al 
	or bl,30h 
	mov ah,02h
	mov dl,bl
	int 21h
	loop B14toB03_outb
	
	call center
	
	mov ah,02h
	mov dx,0814h
	int 10h
	mov ah,09h
	lea dx, con
	int 21h
	
	mov ah,02h
	mov dx,0917h
	int 10h
	mov ah,09h
	lea dx,cloop3
	int 21h
	
	call input
	
	cmp al,59h
	je JMP14TO3Y
	cmp al,79h
	je JMP14TO3Y
	
	cmp al,4eh
	je CONV_B14_OPTIONS
	cmp al,6eh
	je CONV_B14_OPTIONS
	
	jmp JMP14TO3Y
	
CON_6TO3:  
	call centerclear
	
   	mov ah,02h
	mov dx,0114h
	int 10h
	mov ah,09h
	lea dx,con
	int 21h
	
	mov ah,02h
	mov dx,0219h
	int 10h
	mov ah,09h
	lea dx,c6to3
	int 21h
	
	mov ah,02h
	mov dx,0314h
	int 10h
	mov ah,09h
	lea dx,con
	int 21h
	
	mov ah,02h
	mov dx,0517h
	int 10h
	mov ah,09h
	lea dx,Base6one
	int 21h
;input 1	
	call input
	
	cmp al, 30h
	jl CON_6TO3
	cmp al, 39h
	jle CON_6TO3_1to9 
	
    cmp al, 41h
	jl CON_6TO3
	cmp al, 44h
	jle CON_6TO3_ABCD
	
	cmp al, 61h
	jl CON_6TO3
	cmp al, 64h
	jle CON_6TO3_ABCD
	jg CON_6TO3
	
CON_6TO3_1to9: 
    	and ax, 0005h 
    	mov bx, 00B8h 	;search this equivalent in ASCII
	mul bx
	push ax
	jmp CON_6TO3_next 
	
CON_6TO3_ABCD: 
    	and ax, 0005h
	add al, 09h  
	mov bx, 00B8h
	mul bx
	push ax
	jmp CON_6TO3_next 
	
CON_6TO3_again: 
    jmp CON_6TO3
	
CON_6TO3_next:   
;input 2
	call input 
	
	cmp al, 30h
	jl CON_6TO3_again 
	cmp al, 39h
	jle CON_6TO3_1to9_next 

    cmp al, 41h
	jl CON_6TO3_again 
	cmp al, 44h
	jle CON_6TO3_ABCD_next 
	
	cmp al, 61h
	jl CON_6TO3_again 
	cmp al, 64h
	jle CON_6TO3_ABCD_next 
	jg CON_6TO3_again 
		
CON_6TO3_1to9_next:
    	and ax, 0005h
	mov bx, 00B8h 
	mul bx
	push ax
	jmp CON_6TO3_last 
	
CON_6TO3_ABCD_next:
    	and ax, 0005h 
	add al, 03h  
	mov bx, 00B8h 
	mul bx
	push ax
	jmp CON_6TO3_last 
		
CON_6TO3_last: 
; input3
	call input 
	
	cmp al, 30h
	jl CON_6TO3_again
	cmp al, 39h
	jle CON_6TO3_1to9_last 

    cmp al, 41h
	jl CON_6TO3_again
	cmp al, 44h
	jle CON_6TO3_ABCD_last 
	
	cmp al, 61h
	jl CON_6TO3_again
	cmp al, 64h
	jle CON_6TO3_ABCD_last 
	jg CON_6TO3_again
	
CON_6TO3_1to9_last: 
    and ax, 0005h
	push ax
	jmp CON_6TO3_out
	
CON_6TO3_ABCD_last: 
    and ax, 0005h  
	add al, 03h   
	push ax
	
CON_6TO3_out:
   	pop ax
	pop bx  
	pop cx 
	
	add bx,cx
	add ax,bx 
	mov cx,0004h 

CON_6TO3_here:  
	sub dx,dx
	mov bx,0006h 
	div bx
	push dx
	loop CON_6TO3_here 
	
    call center
	
	mov ah,02h
	mov dx,0617h
	int 10h
	mov ah,09h
	lea dx,b3four
	int 21h
	
    mov cx,0003h

B6toB3_outa:
    sub ax,ax
	pop ax
	mov bl,al 
	or bl,30h 
	mov ah,02h
	mov dl,bl
	int 21h
	loop B6toB3_outa
	mov dl,2Eh
	int 21h
    mov cx,0001h
	
B6toB3_outb: 
    sub ax,ax
	pop ax
	mov bl,al 
	or bl,30h 
	mov ah,02h
	mov dl,bl
	int 21h
	loop B6toB3_outb
	
	call center
	
	mov ah,02h
	mov dx,0814h
	int 10h
	mov ah,09h
	lea dx,con
	int 21h
	
	mov ah,02h
	mov dx,0917h
	int 10h
	mov ah,09h
	lea dx,cloop4
	int 21h
	
	call input
	
	cmp al,59h
	je JMP6TO3Y
	cmp al,79h
	je JMP6TO3Y
	
	cmp al,4eh
	je CONV_B6_OPTIONS
	cmp al,6eh
	je CONV_B6_OPTIONS 

	jmp JMP6TO3Y
	
	JMP6TO3Y:
	jmp CON_6TO3
	
	JMP14TO3Y: 
	jmp CON_14TO3   
	
	JMP14TO6Y: 
	jmp CON_14TO6 

input:
    mov ah,01h
	int 21h
	ret
	
centerclear:
    mov ax, 0600h
	mov bh, 70h
	mov cx, 0000h
	mov dx, 184fh
	int 10h
	mov bh, 00h
	mov ah,02h
    mov dx,011Eh
    int 10h
	ret
	
center:
	mov ax,0000h 
	mov bx,0000h 
	mov cx,0000h 
	mov dx,0000h
	ret
	
CHANGE:
    cmp al,41h 
    jge chgletter
    jl chgnumber 
chgnumber:
    sub al,30h
   	jmp chgreturn
chgletter:
    sub al,37h
    jmp chgreturn
chgreturn:
    ret

ASCII:
   	cmp al,0Ah 
   	jge ascletter
   	jl ascnumber 
ascnumber:
   	add al,30h
   	jmp ascreturn
ascletter:
   	add al, 37h
   	jmp ascreturn
ascreturn:
   	ret
ENDPROG:	
	mov ah,4ch 
	int 21h  
		
confirm:
	call cls
		
	mov ax,0600h
    mov bh,70h
    mov cx,0000h
    mov dx,184fh
    int 10h
    mov bh,00h
    mov ah,02h
    mov dx,011Eh
    int 10h
		
	call linefeed
		
	mov ah,09h
	lea dx,qa
	int 21h
		
	mov ah,01h
	int 21h
	mov bh,al
		
	cmp bh,6eh		;if 'n' is selected, working
	je MAIN_MENU
		
	cmp bh,79h		;if 'y' is selcted, working
	je exit
		
invalid:
		call cls
		
		mov ax,0600h
        mov bh,70h
        mov cx,0000h
        mov dx,184fh
        int 10h
        mov bh,00h
        mov ah,02h
        mov dx,011Eh
        int 10h
		
		call linefeed
		
		mov ah,09h
		lea dx,inv
		int 21h
		lea dx,any
		int 21h
		mov ah,01h
		int 21h
		call MAIN_MENU 
		
invalid_calc_choose_base:
		call linefeed
		
		mov ah,09h
		lea dx,inv
		int 21h
		lea dx,any
		int 21h
		mov ah,01h
		int 21h
		call CALC_ADDITION_CHOOSE_BASE


invalid_conv_main:
		call linefeed
		
		mov ah,09h
		lea dx,inv
		int 21h
		lea dx,any
		int 21h
		mov ah,01h
		int 21h
		call CONV_MAIN

invalid_b14options:
		call linefeed
		
		mov ah,09h
		lea dx,inv
		int 21h
		lea dx,any
		int 21h
		mov ah,01h
		int 21h
		call CONV_B14_OPTIONS
		
exit:
        call cls
         
        mov ax,0600h
        mov bh,70h
        mov cx,0000h
        mov dx,184fh
        int 10h
        mov bh,00h
        mov ah,02h
        mov dx,011Eh
        int 10h
		
		call linefeed

        mov ah,09h
        lea dx,ext
        int 21h

        mov ah,09h
        lea dx,extt
        int 21h
		
		call linefeed
		
		mov ah,09h
		lea dx,exttt
		int 21h

        mov ah,4ch
        int 21h
main endp
end main

