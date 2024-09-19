; using variable 
.model small
.stack 100h 
.data  
msg DB "The result is: $"              
;swapping values in the varaible1 and variable2
;declaring variable and its value below
variable1 DB 8
variable2 DB 5  

;main code part where logic happens
.code
    main proc
        
    mov ax,@data
    mov ds,ax
    
    
    ;LEA or OFFSET
    lea dx, msg
    mov ah,9  ;service routine for string data
    int 21h
    
    mov ah,1  ;service routine for single bit
    int 21h
    
    ;mov variable,al
    ;service routine code
    mov ah,4ch
    int 21h
    main endp
    
end main