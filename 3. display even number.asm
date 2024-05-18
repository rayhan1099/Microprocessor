.model small
.stack 100h
.data
Array dw 1,2,3,1,2
.code
main proc
    mov ax,@data
    mov ds,ax
    lea si,Array
    mov cx,3
    even:
    mov ah,2
    mov dx,[si]
    add dx,30h
    add si,4
    int 21h
    loop even
    
    exit:
    end main