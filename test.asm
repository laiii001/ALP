.MODEL SMALL
.STACK 100h
.DATA

;DECLARATION OF VARIABLES!
		dis	db	0dh,0ah,"     	     ____________________________________________________$"
		grp	db 0dh,0ah, "     	               	GROUP#2 BASE 3 AND BASE 5 $"
		nm	db 0dh,0ah,"      	              Name: DE MESA, CUMPA , AND CECILLIO$"

;MAIN MENU
		dis1	db	0dh,0ah,"     	     ____________________________________________________$"
		disp	db	0dh,0ah,"    	      ********************MAIN MENU***********************$"
		dis2	db	0dh,0ah,"     	     ____________________________________________________$"		
		Calc db 0dh,0ah,	"				[1] Calculator  $"
		Conv db 0dh,0ah,	"				[2] Conversion  $"
		Exit db 0dh,0ah,	"				[3] Exit        $"
		Todo db 0dh,0ah,0ah,"				Pick your choice: $"
		
;CALCULATOR SUB-MENU		 
		displaysubM db 0dh,0ah,0ah,"          _______________________________________________________________",0dh,0ah,"  				 Calculator Sub-Menu$"
		Adds db 0dh,0ah,	"  				 [1] Addition  $"
		Subs db 0dh,0ah,	"  				 [2] Subtraction  $"
		Mults db 0dh,0ah,	"  				 [3] Multiplication  $"
		Divs db 0dh,0ah,	"  				 [4] Division  $"
		back db 0dh,0ah,	"  				 [5] Back to Main Menu$"
		
;CALCULATOR MENU
		displayAdd	db	0dh,0ah,0ah,"          _______________________________________________________________",0dh,0ah,"  				 Calculator : ADDITION$"
		displaySubb	db	0dh,0ah,0ah,"          _______________________________________________________________",0dh,0ah,"  				 Calculator : SUBTRACTION$"
		displayMulti db	0dh,0ah,0ah,"          _______________________________________________________________",0dh,0ah,"  				 Calculator : MULTIPLICATION$"
		displaydiv db 0dh,0ah,0ah,	"          _______________________________________________________________",0dh,0ah,"  				 Calculator : DIVISION$"
		Base03 db 0dh,0ah,			"				[1] Base 03$"
		Base05 db 0dh,0ah,			"				[2] Base 05$"
		backsub db 0dh,0ah,			"				[5]Back to Sub Menu$"
		
;BASE & ADDITION
		Abase03 db 0dh,0ah,			"          _______________________________________________________________",0dh,0ah,"  				 BASE 3 ADDITION$"
		addend03 db 0dh,0ah,		"				Addend [00-22]  :     $"
		augend03 db 0dh,0ah,		"				Augend [00-22]  :     $"
		Abase05 db 0dh,0ah,			"          _______________________________________________________________",0dh,0ah,"  				 BASE 5 ADDITION$"
		addend05 db 0dh,0ah,		"				Addend [00-44]  :     $"
		augend05 db 0dh,0ah,		"				Augend [00-44]  :     $"
		sum db 0dh,0ah,				"				Sum is          :     $"
		again1 db 0dh,0ah,			"				Add Again? [Y/N]?  $"
		
;BASE & SUBTRACTION
		Sbase03 db 0dh,0ah,			"          _______________________________________________________________",0dh,0ah,"  				 BASE 3 SUBTRACTION$"
		Minuend03 db 0dh,0ah,		"				Minuend   [00-22]	 : $"
		Subtrahend03	db	0dh,0ah,"				Subtrahend[00-22]   	 : $"
		Sbase05 db 0dh,0ah,			"          _______________________________________________________________",0dh,0ah,"  				 BASE 5 SUBTRACTION$"
		Minuend05 db 0dh,0ah,		"				Minuend   [00-44]	 : $"
		Subtrahend05 db	0dh,0ah,	"				Subtrahend[00-44]   	 : $"
		diff db 0dh,0ah,			"				Diffrence is		 : $"
		again2 db 0dh,0ah,			"				Subtract Again? [Y/N]?  $"

;BASE & MULTIPLICATION
		Mulbase03 db 0dh,0ah,		"          _______________________________________________________________",0dh,0ah,"  				 BASE 3 MULTIPLICATION$"
		Multiplicand03 db 0dh,0ah,	"				Multiplicand [00-22]   :    $"
		Multiplier03 db	0dh,0ah,	"				Multiplier   [00-22]   :    $"
		Mulbase05 db 0dh,0ah,		"          _______________________________________________________________",0dh,0ah,"  				 BASE 5 MULTIPLICATION$"
		Multiplicand05 db 0dh,0ah,	"				Multiplicand [00-44]   :    $"
		Multiplier05	 db 0dh,0ah,	"				Multiplier   [00-44]   :    $"
		Prdct db 0dh,0ah,			"				Product is             :    $"
		again3 db 0dh,0ah,			"				Multiply Again? [Y/N]?  $"

;BASE & DIVISION
		Divbase03 db 0dh,0ah,		"          _______________________________________________________________",0dh,0ah,"  				 BASE 3 DIVISION$"
		Dividennd03	db	0dh,0ah,	"				Dividend [00-22]     :     $"
		Divisor03	db 0dh,0ah,		"				Divisor  [00-22]     :     $"		
		Divbase05 db 0dh,0ah,		"          _______________________________________________________________",0dh,0ah,"  				 BASE 5 DIVISION$"
		Dividend05	db	0dh,0ah,	"				Dividend [00-44]     :     $"
		Divisor05 db 0dh,0ah,		"				Divisor  [00-44]     :     $"
		qtient db 0dh,0ah,			"				Qoutient is          :     $"
		Rmander db 0dh,0ah,			"				Remainder is         :     $"
		again4 db 0dh,0ah,			"				Divide Again?[Y/N]: $"
		inpuer1 db 0dh,0ah,0dh,0ah,"				Syntax Error !!!$"
;CONVERSION SUB-MENU
		consubmenu db 0dh,0ah,0ah,	"          _______________________________________________________________",0dh,0ah,"  				 CONVERSION SUB-MENU$"
		ba35 db 0dh,0ah,"				[1] Base 03 to Base 05  $"	
		ba45 db 0dh,0ah,"				[2] Base 04 to	Base 05	 $"		
		ba54 db 0dh,0ah,"				[3] Base 05 to	Base 04  $"		
		bckm db 0dh,0ah,"				[4] Back to Main Menu$"
		Ent	db 0dh,0ah,0ah,"				Enter a Choice: $"

;CONVERSION BASE 3 TO BASE 5
		conv35	db 0dh,0ah,0ah,"          _______________________________________________________________",0dh,0ah,"  				 CONVERSION:BASE 03 TO BASE 05 $"
		Base35	db 0dh,0ah,	"				Base 03 [00-22]		: $"
		Base53	db 0dh,0ah,	"				Base 05 Equivalent	: $"
		Cgain db 0dh,0ah,	"				Convert Again?[Y/N]	: $"

;CONVERSION BASE 4 TO BASE 5
		conv45	db 0dh,0ah,0ah,"          _______________________________________________________________",0dh,0ah,"  				 CONVERSION:BASE 04 TO BASE 05 $"
		Base45L	db 0dh,0ah,"				Base 04 [00-33]		: $"
		Base54L db,0dh,0ah,"				Base 05 Equivalent	: $"
		ConA	db 0dh,0ah,"				Convert Again?[Y/N]	: $"

		conv54	db 0dh,0ah,0ah,"          _______________________________________________________________",0dh,0ah,"  				 CONVERSION:BASE 05 TO BASE 04 $"
		Base54H	db 0dh,0ah,"				Base 05 [00-44]		: $"
		Base45H	db 0dh,0ah,"				Base 04 Equivalent	: $"
		ConAgain db 0dh,0ah,"				Convert Again?[Y/N]	: $"

;EXIT
		as	db	0dh,0ah,"  	        ____________________________________________________$"
		thk	db 0dh,0ah, "    	        ********** THANK YOUR FOR USING THE SYSTEM *********$"
		as1	db	0dh,0ah,"     	    	____________________________________________________$"
		as2	db	0dh,0ah,"     	     	____________________________________________________$"
		as3	db 0dh,0ah, "     	       	               BASE 03 AND BASE 05$"
		as4	db	0dh,0ah,"     	     	____________________________________________________$"	 
		dvd	db	0dh,0ah,"      	                	     DEVELOPED$"
		by	db 0dh,0ah, "      	            	               By:$"
		REF	db 0dh,0ah, "       	    	           DE MESA, CUMPA , AND CECILLIO$"
		as5	db	0dh,0ah,"       		____________________________________________________$"
		as6	db	0dh,0ah,"       		____________________________________________________$"
;WARNINGS	
		inva db 0dh,0ah,"  				 Invalid input $"
		press db 0dh,0ah,"  				 Press any key to continue.	$"
		warning db 0dh,0ah,"  				 There are error in your inputed number$"
		error1 db 0dh,0ah,"  				 subtrahend is greater than minuend.$"

.CODE
main proc

		call cls
		mov ax,@data 
		mov ds,ax
;CODE ////////////////////////////////////// Start:
		CALL cls 
		mov ah,00 
		mov al,02 
		int 10h

		mov ah,09h
		lea	dx,dis ;"****************************************************$" 
		int 21h

		mov ah,09h
		lea dx,grp	;"GROUP#2 BASE3 AND BASE5$"
		 
		int 21h 
		mov ah,09h
		lea	dx,nm	;"Name:	DE MESA, CUMPA , AND CECILLIO$"
		int 21h

		mov ah,09h
		lea	dx,dis1 ;"****************************************************$" 
		int 21h
		mov ah,09h
		lea dx,disp	;"MAIN MENU$" 
		int 21h
		mov ah,09h
		lea	dx,dis2 ;"****************************************************$"
		int 21h



		lea dx,Calc	;Calculator 
		int 21h
		lea dx,Conv	;Conversion 
		int 21h
		lea dx,Exit	;Exit 
		int 21h


		lea dx,todo 
		int 21h
		mov ah,01h	;input choices 
		int 21h

		Filter:
		cmp al,'1' 
		je option1 
		cmp al,'2'
		je option2	;conversion 
		cmp al,'3'
		je option3  ;invalid
		 
		mov ah,09h 
		lea dx,inva 
		int 21h
		lea dx,press 
		int 21h
		mov ah,01h 
		int 21h
		call main

		option1:
		call Calculator 

		option2:
		call Convertion 

		option3:
		call Endsys

main endp
;******************************************************************************* 
Endsys proc

		mov ah,00 
		mov al,02 
		int 10h
		mov ah,09h
		lea dx,as
		;"*****************************************************" 
		int 21h
		mov ah,09h
		lea dx,thk	
		int 21h 
		mov ah,09h 
		lea dx,as1 
		int 21h
		 
		mov ah,09h
		lea dx,as2	
		int 21h 
		mov ah,09h
		lea dx,as3	
		int 21h
		mov ah,09h
		lea dx,as4	
		int 21h

		mov ah,09h
		lea dx,dvd	
		int 21h 
		mov ah,09h
		lea dx,by	
		int 21h 
		mov ah,09h
		lea dx,REF	
		int 21h

		mov ah,09h
		lea dx,as5	
		int 21h 
		mov ah,09h 
		lea dx,as6  
		int 21h

		jmp ensd 
Endsys endp 
		 
Calculator proc
		mov ah,00 
		mov al,02 
		int 10h

		mov ah,09h
		lea dx,displaysubM 
		int 21h

		lea dx,Adds   ;Addition
		int 21h
		lea dx,Subs   ;Subtraction
		int  21h
		lea  dx,Mults ;Multplication
		int	 21h	
		lea dx,Divs   ;Division
		int	 21h	
		lea dx,back   ;Back to main menu
		int 21h
		lea dx,Todo   ;input choices
		int  21h
		mov ah,01h
		int	21h	

		FilterSub:
		cmp al,'1' 
		je optionSub1

		cmp al,'2' 
		je optionSub2

		cmp al,'3'
		je optionSub3

		cmp al,'4' 
		je optionSub4

		cmp al,'5'
		je optionSub5
		 
		;Invalid
		mov ah,09h 
		lea dx,inva 
		int 21h

		lea dx,press 
		int 21h
		mov ah,01h 
		int 21h

		call Calculator

		optionSub1:
		call Addition
		 
		optionSub2:
		call CSubtraction 

		optionSub3:
		Call Cmultiplication 

		optionSub4:
		call Division 

		optionSub5:
		call exStart 

		CSubtraction:
		call Subtraction	

		Cmultiplication:
		call Multiplication 

		ensd:
		mov ah,4ch 
		int 21h

Calculator endp
;******************************************************************************* 

Addition proc
		mov ah,00 
		mov al,02 
		int 10h
		mov ah,09h
		lea dx,displayAdd 
		int 21h
		lea dx,Base03 
		int 21h
		lea dx,Base05 
		int 21h
		lea dx,backsub 
		int 21h
		lea dx,todo 
		int 21h
		mov ah,01h 
		int 21h
		;FILTER
		cmp al,'1' 
		je ADbase03
		cmp al,'2'
		je exADDbase05
		cmp al,'5' 
		je cal ;again

		mov ah,09h
		lea dx,inva 
		int 21h
		lea dx,press 
		int 21h

		mov ah,01h 
		int 21h
		jmp Addition
		cal:
		jmp Calculator 
;*******************************************************************************
		exADDbase05: 
		call Adbase05
		exStart:
		call main

Addition endp
;******************************************************************************* 
ADbase03 proc
		mov ah,00 
		mov al,02 
		int 10h
		mov ah,09h
		lea dx,Abase03
		int 21h

		Fnum303:
		lea dx,addend03 
		int 21h
		mov ah,01h	;input 
		int 21h
		mov ch,al
		cmp ch,'0' 
		jl addf3 
		cmp ch,'2' 
		jg addf3 
		sub ch,30h

		Fnum203:
		mov ah,01h	;input 
		int 21h
		mov cl,al
		cmp cl,'0' 
		jl addf3 
		cmp cl,'2' 
		jg addf3 
		sub cl,30h
		call secondnum 

		addf3:
		jmp fnuminput103

		fnuminput103:
		Call ADbase03

		Snuminput103: 
		Call secondnum

ADbase03 endp
 ;****************************************************************************** 
 
secondnum proc 

		Snum103:
		mov ah,09h
		lea dx,augend03	;Display augend 
		int 21h
		mov ah,01h	;input 
		int 21h
		mov dh,al
		cmp dh,'0' 
		jl adds3 
		cmp dh,'2' 
		jg adds3

		sub dh,30h 
		Snum203:
		mov ah,01h	;input 
		int 21h
		mov dl,al
		cmp dl,'0' 
		jl adds3 
		cmp dl,'2'
		jg adds3
		sub dl,30h 
		jmp total  ;/////////////////////////////////////////

		adds3:
		call ADbase03 

		total:
		mov al,cl 
		add al,dl
		mov ah,00h
		mov bl,03h 
		aad

		div bl 
		mov cl,ah
		add al,ch 
		add al,dh

		mov ah,00h 
		mov bl,3h 
		aad

		div bl
		or ax,3030h
		mov bx,ax	; transfer ax value to bx
		mov ah,09h 
		lea dx,sum 
		int 21h
		add cl,30h
		mov ah,02h
		mov dl,bl 
		int 21h
		mov dl,bh	;Remainder 
		int 21h
		mov dl,cl	;first remainder 
		int 21h

		again1B03: 
		mov ah,09h
		lea dx,Again1 
		int 21h
		mov ah,01h 
		int 21h     
		;filter
		cmp al,'Y' 
		je adF3 
		cmp al,'N' 
		je adS3     
		;inavlid
		mov ah,09h 
		lea dx,inva 
		int 21h
		lea dx,press 
		int 21h
		mov ah,01h
		int 21h
		jmp again1B03 
		adF3:
		jmp ADbase03
		adS3:
		jmp Addition 

secondnum endp 
;***************************************************************

ADbase05 proc
		mov ah,00 
		mov al,02 
		int 10h
		mov ah,09h
		lea dx,Abase05
		int 21h

		Fnum305:
		lea dx,addend05 
		int 21h
		mov ah,01h	;input 
		int 21h
		mov ch,al
		cmp ch,'0' 
		jl addf5 
		cmp ch,'4' 
		jg addf5 
		sub ch,30h

		Fnum205:
		mov ah,01h	;input 
		int 21h
		mov cl,al
		cmp cl,'0' 
		jl addf5 
		cmp cl,'4' 
		jg addf5 
		sub cl,30h
		call secondnum5 

		addf5:
		jmp fnuminput105

		fnuminput105:
		Call ADbase05

		Snuminput105: 
		Call secondnum5

ADbase05 endp
 ;****************************************************************************** 
 
secondnum5 proc 

		Snum105:
		mov ah,09h
		lea dx,augend05	;Display augend 
		int 21h
		mov ah,01h	;input 
		int 21h
		mov dh,al
		cmp dh,'0' 
		jl adds5 
		cmp dh,'4' 
		jg adds5

		sub dh,30h 
		Snum205:
		mov ah,01h	;input 
		int 21h
		mov dl,al
		cmp dl,'0' 
		jl adds5 
		cmp dl,'4'
		jg adds5
		sub dl,30h 
		jmp totalA5  ;/////////////////////////////////////////

		adds5:
		call ADbase05 

		totalA5:
		mov al,cl 
		add al,dl
		mov ah,00h
		mov bl,05h 
		aad
		div bl 
		mov cl,ah
		add al,ch 
		add al,dh

		mov ah,00h 
		mov bl,5h 
		aad

		div bl
		or ax,3030h
		mov bx,ax	; transfer ax value to bx
		mov ah,09h 
		lea dx,sum 
		int 21h
		add cl,30h
		mov ah,02h
		mov dl,bl 
		int 21h
		mov dl,bh	;Remainder 
		int 21h
		mov dl,cl	;first remainder 
		int 21h

		again1B05: 
		mov ah,09h
		lea dx,Again1 
		int 21h
		mov ah,01h 
		int 21h     
		;filter
		cmp al,'Y' 
		je adF5 
		cmp al,'N' 
		je adS5     
		;inavlid
		mov ah,09h 
		lea dx,inva 
		int 21h
		lea dx,press 
		int 21h
		mov ah,01h
		int 21h
		jmp again1B05
		adF5:
		jmp ADbase05
		adS5:
		jmp Addition 

secondnum5 endp 

;***************************************************************************
;Subtract
Subtraction proc 
		mov ah,00
		mov al,02 
		int 10h
		mov ah,09h
		lea dx,displaySubb	;Calculator-Addition 
		int 21h
		lea dx,Base03 
		int 21h
		lea dx,Base05 
		int 21h
		lea dx,backsub 
		int 21h
		lea dx,todo 
		int 21h
		mov ah,01h 
		int 21h

		;FILTER
		cmp al,'1' 
		je Subbase03
		cmp al,'2'
		je exSubbase05
		cmp al,'5' 
		je asub

		;Invalid
		mov ah,09h
		lea dx,inva 
		int 21h
		lea dx,press
		int 21h

		mov ah,01h 
		int 21h
		jmp Subtraction 

		asub:
		jmp Calculator

		exSubbase05:
		jmp Subbase05 

Subtraction endp 
;*************************************************************
Subbase03 proc

		mov ah,00 
		mov al,02 
		int 10h
		mov ah,09h
		lea dx,Sbase03	    ;Calculator: Subtraction 
		int 21h

		subFnum03:
		lea dx,Minuend03	;Display Minuend 
		int 21h
		mov ah,01h	        ;input	1 
		int 21h
		mov bh,al
		cmp bh,'0' 
		jl subf03
		cmp bh,'2' 
		jg subf03

		mov ah,01h	        ;input	2 
		int 21h
		mov bl,al

		cmp bl,'0' 
		jl subf03 
		cmp bl,'2' 
		jg subf03
		jmp subSnum03 

		subf03:
		jmp subfnuminput03

		subSnum03:
		mov ah,09h
		lea dx,Subtrahend03	;Display Subtrahend 
		int 21h
		mov ah,01h	       ;input	1 
		int 21h
		mov ch,al
		cmp ch,'0' 
		jl subs03
		 
		cmp ch,'2' 
		jg subs03
		mov ah,01h	       ;input	2 
		int 21h
		mov cl,al
		cmp cl,'0' 
		jl subs03 
		cmp cl,'2' 
		jg subs03
		jmp TotalS3


		subs03:
		jmp Subbase03

		totalS3:
		cmp bx,cx 
		jl switch 
		cmp bl,cl 
		jl cntb1
		jmp printsubpos

		switch:
		mov ax,bx 
		mov bx,cx 
		mov cx,ax
		jmp printsubneg

		cntb1:
		add bl,03h 
		sub bh,01h
		jmp printsubpos

;******************************************** 

		printsubpos:
		mov ah,09h 
		lea dx,diff 
		int 21h
		 

		sub bx,cx 
		add bx,3030h 
		mov ah,02h 
		mov dl,bh 
		int 21h
		mov dl,bl 
		int 21h
		jmp subagain03 

		printsubneg:
		mov ah,09h 
		lea dx,diff 
		int 21h

		mov ah,02h 
		mov dl,2Dh 
		int 21h 
		sub bx,cx
		add bx,3030h 
		mov ah,02h 
		mov dl,bh 
		int 21h
		mov dl,bl 
		int 21h
		jmp subagain03


		subagain03: 
		mov ah,09h
		lea dx,again2 
		int 21h
		mov ah,01h 
		int 21h

		;filter
		cmp al,'Y'
		je YSubbase03 
		cmp al,'N'
		je NSubtraction

		;inavlid
		mov ah,09h 
		lea dx,inva
		int 21h
		lea dx,press 
		int 21h
		mov ah,01h 
		int 21h
		jmp subagain03 

		YSubbase03:
		jmp Subbase03

		NSubtraction:
		jmp Subtraction


		subfnuminput03:
		mov ah,09h 
		lea dx,inva 
		int 21h
		jmp subfnum03

		subSnuminput03:
		mov ah,09h 
		lea dx,inva 
		int 21h
		jmp subsnum03 

Subbase03 endp

;*************************************************
;base05
Subbase05 proc
		mov ah,00 
		mov al,02 
		int 10h
		mov ah,09h
		lea dx,Sbase05	    ;Calculator: Subtraction 
		int 21h

		subFnum05:
		lea dx,Minuend05	;Display Minuend 
		int 21h
		mov ah,01h	        ;input	1 
		int 21h
		mov bh,al

		cmp bh,'0' 
		jl subf05
		cmp bh,'4' 
		jg subf05

		mov ah,01h	        ;input	2 
		int 21h
		mov bl,al

		cmp bl,'0' 
		jl subf05
		cmp bl,'4' 
		jg subf05
		jmp subSnum05 

		subf05:
		jmp subfnuminput05

		subSnum05:
		mov ah,09h
		lea dx,Subtrahend05	;Display Subtrahend 
		int 21h
		mov ah,01h	       ;input	1 
		int 21h
		mov ch,al
		cmp ch,'0' 
		jl subs05
		 
		cmp ch,'4' 
		jg subs05
		mov ah,01h	       ;input	2 
		int 21h
		mov cl,al
		cmp cl,'0' 
		jl subs05 
		cmp cl,'4' 
		jg subs05
		jmp TotalS5


		subs05:
		jmp Subbase05

		totalS5:
		cmp bx,cx 
		jl switch5 
		cmp bl,cl 
		jl cntb5
		jmp printsubpos5

		switch5:
		mov ax,bx 
		mov bx,cx 
		mov cx,ax
		jmp printsubneg5

		cntb5:
		add bl,05h 
		sub bh,01h
		jmp printsubpos5

;******************************************** 

		printsubpos5:
		mov ah,09h 
		lea dx,diff 
		int 21h
		 

		sub bx,cx 
		add bx,3030h 
		mov ah,02h 
		mov dl,bh 
		int 21h
		mov dl,bl 
		int 21h
		jmp subagain05 

		printsubneg5:
		mov ah,09h 
		lea dx,diff 
		int 21h

		mov ah,02h 
		mov dl,2Dh 
		int 21h 
		sub bx,cx
		add bx,3030h 
		mov ah,02h 
		mov dl,bh 
		int 21h
		mov dl,bl 
		int 21h
		jmp subagain05

		subagain05: 
		mov ah,09h
		lea dx,again2 
		int 21h
		mov ah,01h 
		int 21h

		;filter
		cmp al,'Y'
		je YSubbase05
		cmp al,'N'
		je NSubtraction5

		;inavlid
		mov ah,09h 
		lea dx,inva
		int 21h
		lea dx,press 
		int 21h
		mov ah,01h 
		int 21h
		jmp subagain05 

		YSubbase05:
		jmp Subbase05

		NSubtraction5:
		jmp Subtraction


		subfnuminput05:
		mov ah,09h 
		lea dx,inva 
		int 21h
		jmp subfnum05

		subSnuminput05:
		mov ah,09h 
		lea dx,inva 
		int 21h
		jmp subsnum05

Subbase05 endp
;******************************************************************************* 
Multiplication proc
		mov ah,00 
		mov al,02 
		int 10h
		mov ah,09h
		lea dx,displayMulti 
		int 21h

		lea dx,Base03 
		int 21h

		lea dx,Base05 
		int 21h

		lea dx,backsub 
		int 21h

		lea dx,Todo 
		int 21h

		mov ah,01h 
		int 21h

		cmp al,'1'
		je multibase3

		cmp al,'2'
		je multibase5

		cmp al,'5'
		je startagain3
		 

		startagain3:  
		call calculator

		multibase3:
		call multbase03 

		multibase5:
		call multbase05

multiplication endp

;******************************************************** 
Multbase03 proc
			mov ah,00 
			mov al,02 
			int 10h
			mov ah,09h
			lea dx,Mulbase03
			int 21h
			mov ah,09h
			lea dx,Multiplicand03
			int 21h
			mov ah,01h
			int 21h
			mov bh,al
			cmp bh,30h
			jge mbase3GE
			jmp Multbase03

			mbase3GE:
			cmp bh,32h
			jle mbase3LE
			jmp Multbase03

			mbase3LE:
			mov ah,01h
			int 21h
			mov bl,al
			cmp bl,30h
			jge mubase3GE
			jmp Multbase03

			mubase3GE:
			cmp bl,32h
			jle mubase3LE
			jmp Multbase03

			mubase3LE:
			mov ah,09h
			lea dx,Multiplier03
			int 21h
			mov ah,01h
			int 21h
			mov ch,al
			cmp ch,30h
			jge mbase3JGE
			jmp Multbase03

			mbase3JGE:
			cmp ch,32h
			jle mbase3JLe
			jmp Multbase03

			mbase3JLe:
			mov ah,01h
			int 21h
			mov cl,al
			cmp cl,30h
			jge mulcandbase3GE
			jmp Multbase03

			mulcandbase3GE:
			cmp cl,32h
			jle mulcandbase3LE
			jmp Multbase03

			mulcandbase3LE:
			mov ah,09h
			lea dx,Prdct
			int 21h
			mov dh,03h
			sub bx,3030h
			sub cx,3030h
			mov ax,0000h
			mov al,bh
			mul dh
			add bl,al
			mov ax,0000h
			mov al,ch
			mul dh
			add cl,al
			mov ax,0000h
			mov al,cl
			mul bl
			div dh
			mov bh,ah
			cmp al,00h
			je firstdg
			mov ah,00h
			div dh
			mov bl,ah
			cmp al,00h
			je seconddg
			mov ah,00h
			div dh
			mov ch,ah
			je thirddg
			mov ah,00h
			div dh
			mov cl,ah
			cmp al,00h
			je fourthdg
			firstdg:
			add bh,30h
			mov ah,02h
			mov dl,bh
			int 21h
			jmp multiplyagain
			seconddg:
			add bx,3030h
			mov ah,02h
			mov dl,bl
			int 21h
			mov dl,bh
			int 21h
			jmp multiplyagain
			thirddg:
			add bx,3030h
			add ch,30h
			mov ah,02h
			mov dl,ch
			int 21h
			mov dl,bl
			int 21h
			mov dl,bh
			int 21h
			jmp multiplyagain
			fourthdg:
			add bx,3030h
			add cx,3030h
			mov ah,02h
			mov dl,cl
			int 21h
			mov dl,ch
			int 21h
			mov dl,bl
			int 21h
			mov dl,bh
			int 21h
			jmp multiplyagain

;MULTIPLY AGAIN ?
			Multiplyagain:
			mov ah,09h
			lea dx,again3
			int 21h
			mov ah,01h
			int 21h
			cmp al,'Y'
			je Ymultbase03 
			cmp al,'N'
			je Nmultbase03 

			Ymultbase03:
			call multbase03

			Nmultbase03:
			call multiplication 

multbase03 endp

;********************************************** 

multbase05 proc
			mov ah,00 
			mov al,02 
			int 10h
			mov ah,09h
			lea dx,Mulbase05
			int 21h
			mov ah,09h
			lea dx,Multiplicand05
			int 21h
			mov ah,01h
			int 21h
			mov bh,al
			cmp bh,30h
			jge mbase5GE
			jmp Multbase05

			mbase5GE:
			cmp bh,34h
			jle mbase5LE
			jmp Multbase05

			mbase5LE:
			mov ah,01h
			int 21h
			mov bl,al
			cmp bl,30h
			jge mubase5GE
			jmp Multbase05

			mubase5GE:
			cmp bl,34h
			jle mubase5LE
			jmp Multbase05

			mubase5LE:
			mov ah,09h
			lea dx,Multiplier05
			int 21h
			mov ah,01h
			int 21h
			mov ch,al
			cmp ch,30h
			jge mbase5JGE
			jmp Multbase05

			mbase5JGE:
			cmp ch,34h
			jle mbase5JLe
			jmp Multbase05

			mbase5JLe:
			mov ah,01h
			int 21h
			mov cl,al
			cmp cl,30h
			jge mulcandbase5GE
			jmp Multbase05

			mulcandbase5GE:
			cmp cl,34h
			jle mulcandbase5LE
			jmp Multbase05

			mulcandbase5LE:
			mov ah,09h
			lea dx,Prdct
			int 21h
			mov dh,05h
			sub bx,3030h
			sub cx,3030h
			mov ax,0000h
			mov al,bh
			mul dh
			add bl,al
			mov ax,0000h
			mov al,ch
			mul dh
			add cl,al
			mov ax,0000h
			mov al,cl
			mul bl
			div dh
			mov bh,ah
			cmp al,00h
			je firstdg5
			mov ah,00h
			div dh
			mov bl,ah
			cmp al,00h
			je seconddg5
			mov ah,00h
			div dh
			mov ch,ah
			je thirddg5
			mov ah,00h
			div dh
			mov cl,ah
			cmp al,00h
			je fourthdg5
			firstdg5:
			add bh,30h
			mov ah,02h
			mov dl,bh
			int 21h
			jmp multiplyagain5
			seconddg5:
			add bx,3030h
			mov ah,02h
			mov dl,bl
			int 21h
			mov dl,bh
			int 21h
			jmp multiplyagain5
			thirddg5:
			add bx,3030h
			add ch,30h
			mov ah,02h
			mov dl,ch
			int 21h
			mov dl,bl
			int 21h
			mov dl,bh
			int 21h
			jmp multiplyagain5
			fourthdg5:
			add bx,3030h
			add cx,3030h
			mov ah,02h
			mov dl,cl
			int 21h
			mov dl,ch
			int 21h
			mov dl,bl
			int 21h
			mov dl,bh
			int 21h
			jmp multiplyagain5

;MULTIPLY AGAIN ?
			Multiplyagain5:
			mov ah,09h
			lea dx,again3
			int 21h
			mov ah,01h
			int 21h
			cmp al,'Y'
			je Ymultbase05 
			cmp al,'N'
			je Nmultbase05 

			Ymultbase05:
			call multbase05

			Nmultbase05:
			call Multiplication 
		
multbase05 endp
;********************************************** 	 
Division proc

		mov ah,00 
		mov al,02 
		int 10h
		mov ah,09h
		lea dx,displaydiv 
		int 21h
		lea dx,Base03 
		int 21h
		lea dx,Base05 
		int 21h
		lea dx,backsub 
		int 21h
		lea dx,todo 
		int 21h
		mov ah,01h 
		int 21h

		;FILTER
		cmp al,'1' 
		je Divisionbase03
		cmp al,'2' 
		je base05Divide
		cmp al,'5' 
		je calDiv
		;Invalid
		lea dx,inva 
		int 21h
		lea dx,press 
		int 21h
		mov ah,01h 
		int 21h
		jmp Division
		calDiv:
		jmp Calculator	
		
		base05Divide:
		call Divisionbase05
;*******************************************************************************
Division endp 
Divisionbase03 proc
			mov ah,00 
			mov al,02 
			int 10h
			mov ah,09h
			lea dx,Divbase03 
			int 21h

			lea dx,Dividennd03	;Display 
			int 21h
			mov ah,01h
			int 21h
			mov bh,al
			cmp bh,30h
			jge divibase3GE
			jmp Divisionbase03

			divibase3GE:
			cmp bh,32h
			jle divibase3LE
			jmp Divisionbase03

			divibase3LE:
			mov ah,01h
			int 21h
			mov bl,al
			cmp bl,30h
			jge dividbase3GE
			jmp Divisionbase03

			dividbase3GE:
			cmp bl,32h
			jle dividebase3LE
			jmp Divisionbase03

			dividebase3LE:
			mov ah,09h
			lea dx,Divisor03
			int 21h
			mov ah,01h
			int 21h
			mov ch,al
			cmp ch,30h
			jge dividendbase3GE
			jmp Divisionbase03

			dividendbase3GE:
			cmp ch,32h
			jle dividendbase3LE
			jmp Divisionbase03

			dividendbase3LE:
			mov ah,01h
			int 21h
			mov cl,al
			cmp cl,30h
			jge divisebase3GE
			jmp Divisionbase03

			divisebase3GE:
			cmp cl,32h
			jle divisebase3LE
			jmp Divisionbase03

			divisebase3LE:
			cmp cx,3030h
			je solu
			mov ah,09h
			lea dx,qtient
			int 21h
			mov dh,03h
			sub bx,3030h
			sub cx,3030h
			mov ax,0000h
			mov al,bh
			mul dh
			add bl,al
			mov ax,0000h
			mov al,ch
			mul dh
			add cl,al
			mov ax,0000h
			mov al,bl
			div cl
			mov cl,ah
			mov ah,00h
			div dh
			mov bh,ah
			cmp al,00h
			je frstdgt
			mov ah,00h
			div dh
			mov bl,ah
			cmp al,00h
			je scnddgt
			jmp remaind


			solu:
			mov ah,09h
			lea dx,inpuer1
			int 21h
			jmp divideagain

			frstdgt:
			add bh,30h
			mov ah,02h
			mov dl,bh
			int 21h
			jmp remaind

			scnddgt:
			add bx,3030h
			mov ah,02h
			mov dl,bl
			int 21h
			mov ah,02h
			mov dl,bh
			int 21h
			jmp remaind

			remaind:
			mov ah,09h
			mov dh,03h
			lea dx,Rmander
			int 21h
			mov ax,0000h
			mov al,cl
			div dh
			mov bh,ah
			cmp al,00h
			je firstdgtr
			mov ah,00h
			div dh
			mov bl,ah
			cmp al,00h
			je scnddgtr

			firstdgtr:
			add bh,30h
			mov ah,02h
			mov dl,bh
			int 21h
			jmp divideagain

			scnddgtr:
			add bx,3030h
			mov ah,02h
			mov dl,bl
			int 21h
			mov ah,02h
			mov dl,bh
			int 21h
			jmp divideagain

;divide again??
			divideagain:
			mov ah,09h
			lea dx,again4
			int 21h
			mov ah,01h
			int 21h
			cmp al,'Y'
			je Ydivbase03 
			cmp al,'N'
			je NDivbase03 

			Ydivbase03:
			call Divisionbase03

			NDivbase03:
			call Division 

Divisionbase03 endp
;*******************************************************************************.
Divisionbase05 proc
			mov ah,00 
			mov al,02 
			int 10h
			mov ah,09h
			lea dx,Divbase05 
			int 21h
			lea dx,Dividend05	;Display 
			int 21h
			mov ah,01h
			int 21h
			mov bh,al
			cmp bh,41h
			je divadd5
			cmp bh,30h
			jae adddivi5
			jmp Divisionbase05

			divadd5:
			sub bh,07h
			jmp adddivi51

			adddivi5:
			cmp bh,34h
			jbe adddivi51
			jmp Divisionbase05

			adddivi51:
			mov ah,01h
			int 21h
			mov bl,al
			cmp bl,41h
			je divadd52
			cmp bl,30h
			jge adddivi52
			jmp Divisionbase05

			divadd52:
			sub bl,07h
			jmp adddivi53

			adddivi52:
			cmp bl,34h
			jbe adddivi53
			jmp Divisionbase05

			adddivi53:
			mov ah,09h
			lea dx,Divisor05
			int 21h
			mov ah,01h
			int 21h
			mov ch,al
			cmp ch,41h
			je divadd53
			cmp ch,30h
			jae adddivi54

			divadd53:
			sub ch,07h
			jmp adddivi55

			adddivi54:
			cmp ch,34h
			jbe adddivi55
			jmp Divisionbase05

			adddivi55:
			mov ah,01h
			int 21h
			mov cl,al
			cmp cl,41h
			je divadd54
			cmp cl,30h
			jae adddivi56
			jmp Divisionbase05

			divadd54:
			sub cl,07h
			jmp adddivi57

			adddivi56:
			cmp cl,34h
			jbe adddivi57
			jmp Divisionbase05

			adddivi57:
			cmp cx,3030h
			je stx
			mov ah,09h
			lea dx,qtient
			int 21h
			mov dh,0Bh
			sub bx,3030h
			sub cx,3030h
			mov ax,0000h
			mov al,bh
			mul dh
			add bl,al
			mov ax,0000h
			mov al,ch 
			mul dh
			add cl,al
			mov ax,0000h
			mov al,bl 
			div cl
			mov cl,ah
			mov ah,00h
			div dh
			mov bh,ah
			cmp al,00h
			je onedginput5
			mov ah,00h
			div dh
			mov bl,ah 
			cmp al,00h
			je twodginput5
			jmp rmndr


			stx:
			mov ah,09h
			lea dx,inpuer1
			int 21h
			jmp divideagainn

			onedginput5:
			add bh,30h
			cmp bh,3Ah
			je letterd
			jmp letterds

			letterd:
			add bh,07h
			jmp letterds

			letterds:
			mov ah,02h
			mov dl,bh
			int 21h
			jmp rmndr

			twodginput5:
			add bx,3030h
			cmp bl,3Ah
			je letterdd
			cmp bh,3Ah
			je letterddexte
			jmp letterddresult

			letterdd:
			add bl,07h
			cmp bh,3Ah
			je letterddexte
			jmp letterddresult

			letterddexte:
			add bh,07h
			jmp letterddresult

			letterddresult:
			mov ah,02h	
			mov dl,bl
			int 21h
			mov ah,02h
			mov dl,bh
			int 21h
			jmp rmndr

			rmndr:
			mov ah,09h
			lea dx,Rmander
			int 21h
			mov dh,04h
			mov ax,0000h
			mov al,cl
			div dh
			mov bh,ah
			cmp al,00h
			je rmndr1
			mov ah,00h
			div dh
			mov bl,ah
			cmp al,00h
			je rmndr2


			rmndr1:
			add bh,30h
			cmp bh,3Ah
			je letterddd
			jmp letterdddresult


			letterddd:
			add bh,07h
			jmp letterdddresult

			letterdddresult:
			mov ah,02h
			mov dl,bh
			int 21h
			jmp divideagainn

			rmndr2:
			add bx,3030h
			cmp bl,3Ah
			je letterdddd
			cmp bh,3Ah
			je letterdddexte
			jmp letterddddresult


			letterdddd:
			add bl,07h
			cmp bh,3Ah
			je letterdddexte
			jmp letterddddresult


			letterdddexte:
			add bh,07h
			jmp letterddddresult


			letterddddresult:
			mov ah,02h
			mov dl,bl
			int 21h
			mov ah,02h
			mov dl,bh
			int 21h
			jmp divideagainn
;divide again??
			divideagainn:
			mov ah,09h
			lea dx,again4
			int 21h
			mov ah,01h
			int 21h
			cmp al,'Y'
			je Ydivbase05 
			cmp al,'N'
			je NDivbase05 

			Ydivbase05:
			call Divisionbase05

			NDivbase05:
			call Division 
Divisionbase05 endp
;*******************************************************************************

Convertion proc

		mov ah,00 
		mov al,02 
		int 10h
		mov ah,09h
		lea dx,consubmenu 
		int 21h
		lea dx,ba35
		int  21h 
		lea dx,ba45
		int 21h
		lea dx,ba54 
		int 21h
		lea dx,back	;Back to main menu 
		int 21h
		lea dx,Todo 
		int 21h
		mov ah,01h	;input choices 
		int 21h

		Filterconv:
		cmp al,'1' 
		je optioncon1
		cmp al,'2' 
		je optioncon2
		cmp al,'3'
		je optioncon3 
		cmp al,'5'
		je optioncon5

		;Invalid
		lea dx,press 
		int 21h
		mov ah,01h 
		int 21h
		call Calculator

		optioncon1:
		call base3to5 
		optioncon2:
		call base4to5
		 optioncon3:
		Call base5to4
		 optioncon5:
		call exStart 

convertion endp 

base3to5   proc
		mov ah,00 
		mov al,02 
		int 10h
		mov ah,09h
		lea dx, conv35 
		int 21h
		mov ah,09h 
		lea dx,base35
		int 21h
		mov ah,01h 
		int 21h 
		mov bh,al 
		cmp bh,30h
		jge gtr3to5 
		jmp base3to5

		gtr3to5: 
		cmp bh,32h 
		jle lss3to5
		jmp base3to5

		lss3to5: 
		mov ah,01h 
		int 21h 
		mov bl,al 
		cmp bl,30h
		jge gtr3to5s 
		jmp base3to5

		gtr3to5s: 
		cmp bl,32h 
		jle lss3to5s 
		jmp base3to5

		lss3to5s:
		mov ah,09h
		lea dx,base53
		int	21h	 
		sub	bx,3030h	
		mov	dh,03h	;base3
		mov	ax,0000h	;reset
		mov	al,bh	;first number multiply to 3
		mul	dh	
		add	al,bl	
		mov	dh,05h	
		div	dh	
		mov	bh,ah	
		mov	ah,00h	
		div	dh	
		mov	bl,ah	
		add	bx,3030h	
		mov	ah,02h	
		mov	dl,bl	
		int	21h	
		mov	dl,bh	
		int 21h
		jmp	againC35	

		againC35: 
		mov ah,09h
		lea dx,cgain 
		int 21h

		mov ah,01h 
		int 21h

		;filter
		cmp al,'Y' 
		je Ycgain 
		cmp al,'N' 
		je Ncgain

		Ycgain:
		jmp base3to5

		Ncgain:
		jmp Convertion

base3to5 endp

base4to5 proc
		mov ah,00 
		mov al,02 
		int 10h
		mov ah,09h
		lea dx, conv45 
		int 21h
		mov ah,09h 
		lea dx,base45L 
		int 21h
		mov ah,01h 
		int 21h 
		mov bh,al 
		cmp bh,30h
		jge gtr4to5 
		jmp base4to5

		gtr4to5: 
		cmp bh,33h 
		jle lss4to5
		jmp base4to5

		lss4to5:
		mov ah,01h 
		int 21h 
		mov bl,al 
		cmp bl,30h
		jge gtr4to5s
		jmp base4to5

		gtr4to5s: 
		cmp bl,33h 
		jle lss4to5s 
		jmp base4to5

		lss4to5s:
		mov ah,09h 
		lea dx,Base54L
		int	21h
		sub	bx,3030h	
		mov	dh,04h	;base4
		mov	ax,0000h	;reset
		mov	al,bh	;first number multiply to 4
		mul	dh	
		add	al,bl	
		mov	dh,05h	
		div	dh	
		mov	bh,ah	
		mov	ah,00h	
		div	dh	
		mov	bl,ah	
		add	bx,3030h	
		mov	ah,02h	
		mov	dl,bl	
		int	21h	
		mov	dl,bh	
		int 21h
		jmp	againC45	

		againC45:
		mov ah,09h 
		lea dx,ConA 
		int 21h

		mov ah,01h 
		int 21h
		;filter
		cmp al,'Y' 
		je Y4cgain 
		cmp al,'N' 
		je N4cgain
		 
		Y4cgain:
		jmp base4to5 

		N4cgain:
		jmp Convertion 
base4to5 endp 

base5to4 proc

			mov ah,00 
			mov al,02 
			int 10h
			mov ah,09h
			lea dx, conv54 ;Display "Conversion"
			int 21h
			mov ah,09h 
			lea dx,Base54H ; Base 05 [00-22]	:
			int 21h
			mov ah,01h  ;input base 5 1st digit
			int 21h 
			mov ch,al
			
			cmp al,31h
			jg morethanone1stdgt
			jle equalto1

			morethanone1stdgt:
			cmp al,34h
			jg base5to4
			cmp al,30h
			jl base5to4
			
			mov ah,01h                  ;input base 5 2nd digit
            		int 21h
			mov cl,al
			
			cmp al,34h
			jg base5to4
			cmp al,30h
			jl base5to4
			
			jmp base4equiv3dgts
			
			equalto1:
			cmp al,34h
			jg base5to4
			cmp al,30h
			jl base5to4
			
			mov ah,01h                  ;input base 5 2nd digit
           	int 21h
			mov cl,al
			
			cmp al,34h
			jg base4equiv3dgts
			
			cmp al,34h
			jg base5to4
			cmp al,30h
			jl base5to4
			
			cmp al,34h
			jge base4equiv3dgts
			
			jmp base4equiv2dgts
			
			
base4equiv3dgts:
			
			mov ah,09h					;Display "Base 4 Equivalent :"
			lea dx,Base45H
			int 21h
			
			sub cx,3030h				;logic for  digits equivalent
			mov ax,0000h
			mov dh,05h
			mov al,ch
			mul dh
			mov bh,al
			
			add bh,cl
			
			mov ax,0000h
			mov dh,04h
			mov al,bh
			div dh
			mov bx,ax
			add bx,3030h
			
			mov ax,0000h
			mov al,bl
			div dh
			mov cx,ax
			add cx,3030h
			
			mov ax,0000h
			mov al,cl
			div dh
			mov dx,ax
			add dx,3030h
			
			
			sub dh,00h
			
			cmp dh,2Fh
			je add2
			
			jmp display3dgts

add2:
			add dh,03h
			jmp display3dgts
display3dgts:
			
			mov ah,02h
			mov dl,dh
			int 21h
			
			mov ah,02h
			mov dl,ch
			int 21h
			
			mov ah,02h
			mov dl,bh
			int 21h
			
			mov ah,02h
			mov dl,0ah
			int 21h
			
			jmp againC54
			
base4equiv2dgts:
			
			mov ah,09h					;Display "Base 4 Equivalent :"
			lea dx,Base45H
			int 21h
			
			sub cx,3030h				;logic for 2 digits equivalent
			mov ax,0000h
			mov dh,05h
			mov al,ch
			mul dh
			mov bh,al
			
			add bh,cl
			
			mov ax,0000h
			mov dh,04h
			mov al,bh
			div dh
			mov bx,ax
			add bx,3030h
			
			mov ax,0000h
			mov al,bl
			div dh
			mov cx,ax
			add cx,3030h
			
			mov ah,02h
			mov dl,ch
			int 21h
			
			mov ah,02h
			mov dl,bh
			int 21h
			
			mov ah,02h
			mov dl,0ah
			int 21h
			
			jmp againC54			
againC54: 
		mov ah,09h
		lea dx,ConAgain 
		int 21h

		mov ah,01h 
		int 21h		
;filter
		cmp al,'Y' 
		je Y5cgain 
		cmp al,'N' 
		je N5cgain

		Y5cgain:
		jmp base5to4 

		N5cgain:
		jmp Convertion 

base5to4 endp

;********************************************* 
cls proc
		MOV AX , 0600H 
		MOV BH , 7H 
		MOV CX , 0  
		MOV DX , 184FH 
		INT 10H
		RET

cls endp 

end main
