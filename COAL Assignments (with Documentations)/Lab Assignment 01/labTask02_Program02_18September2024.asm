.model small
.stack 100h
.data

msg DB "The result is: $"
num1 DB 4
num2 DB 5
num3 DB 1
result DB ?

.code
    main proc
        ; Set data segment
        mov ax, @data
        mov ds, ax        
        
        lea dx, msg         ; Load effective address of the message
       
        ; Print the message
        mov ah, 9         ; DOS interrupt to print string
        int 21h
        ; Compute the sum
        mov al, num1
        add al, num2
        add al, num3
        mov dl, al       ; Store the sum in result

        ; Print the sum (as a character)
        add al, 48      
        mov dl, al       
        mov ah, 2          
        int 21h

        ; Exit the program
        mov ah, 4Ch
        int 21h
    main endp
end main
