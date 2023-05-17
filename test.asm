.model small
.stack 100h
.386
.data

    prompt db 'num1 [00.000-22.222]: $'
    prompt2 db 'num2 [00.000-22.222]: $'
    result_msg db 'Total = ', 0
    buffer db 8       ; Buffer to store user input
    newline db 0Ah    ; Newline character

.CODE
	main proc

	mov ax,@data
	mov ds,ax
    
main endp
end main