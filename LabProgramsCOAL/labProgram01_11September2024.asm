.model small
.stack 100h
.data
.code
    main proc
        ;this was used for displaying 1
        mov ah, 02h        
        mov dl, '1'        
        int 21h            

        ;this is used to display @
        mov dl, '@'        
        int 21h            
       
        ;this is used to display the letter 'a' 
        mov dl, 'a'        
        int 21h            

        mov ah, 4Ch        
        int 21h            
    main endp
end main
