;simple program that prints the element in an array in assembly code/language
.model small
.stack 100h
.data
    arr db 4,1,3,5,6,7   ; array with 6 elements
    arr_size equ 6        ; size of the array

.code
main proc
    mov ax, @data         ; get reference to the data segment
    mov ds, ax

    lea si, arr           ; load the address of the array into SI
    mov cx, arr_size      ; load array size (6) into CX (loop counter)

print_loop:
    mov dl, [si]          ; get the value at address SI
    add dl, 48            ; convert to ASCII (0 -> '0')
    mov ah, 2             ; DOS interrupt function to print a character
    int 21h

    inc si                ; move to the next element in the array
    loop print_loop       ; decrement CX and repeat if CX != 0

    mov ah, 4Ch           ; terminate the program
    int 21h
main endp
end main
