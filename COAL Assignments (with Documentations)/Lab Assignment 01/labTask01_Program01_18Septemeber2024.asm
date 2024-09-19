.model small
.stack 100h
.data
; printing the string message for the program
msg DB "RIPHAH International University, Lab Task 01, Program 01$", 0Dh, 0Ah, "$"
; declared the variable values 
num1 DB 3
num2 DB 5
num3 DB 2
num4 DB 1
num5 DB 3
result DB 0
newline DB 0Dh, 0Ah, "$" ; Newline characters

.code
    main proc
    
    mov ax, @data
    mov ds, ax
    
    ; moving numbers into ax register  
    
    ; result is 5+3=8
    mov al, num1
    mov bl, num2
    add al, bl ; AL = num1(al) + num2(bl)
    
    ; result is (5+3)-2
    mov bl, num3
    sub al, bl
    
    ; result is (5+3)-2-1
    sub al, num4      
    
    ; result is (5+3)-2-1+3
    add al, num5
    
    ; moving last value into result
    mov result, al
    
    ; Print the message string
    lea dx, msg
    mov ah, 09h
    int 21h

    ; Print a newline
    lea dx, newline
    mov ah, 09h
    int 21h
    
    ; Convert the result into an ASCII character
    mov al, result
    add al, 30h ; Convert to ASCII (0-9)
    
    ; Print the result as a character
    mov dl, al
    mov ah, 02h
    int 21h
    
    ; Service routine for assembly code
    mov ah, 4ch
    int 21h
    main endp

end main
