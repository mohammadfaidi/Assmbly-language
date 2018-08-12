include inout.asm
.model small,c 
.486
.stack 
.data
prm db 13,10, "please enter the value in Decimal want to convert $"
ana db 13,10, "Done convert the value is Binery $"  
yy dw ? 



.code 
start : mov ax,@data 
        mov ds,ax
        call puts,offset prm
         call getint
		 mov yy,ax 
		 mov ebx,2
		 movsx eax,yy
	again: cdq 	 
		 idiv ebx 
		 call putlong ,edx 
		 or eax,eax 
		 jnz again
		 call puts, offset ana
		 
	
		
		mov ah,04ch 
	    mov al,0 
	    int 21h
	    end start 
		