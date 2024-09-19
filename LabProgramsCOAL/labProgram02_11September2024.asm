.model small
.stack 100h
.data
.code
        main proc
            mov al,2
            mov bl,6
            
            add bl, cl
            
            mov cl,bl
            
            mov dl,bl
            mov ah,2
            int 21h
        main endp
