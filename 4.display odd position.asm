.model small
.stack 100h
.data
Array dw 1,2,3,1,2
.code
main proc
    mov ax,@data
    mov ds,ax
    lea si,Array+2
    mov cx,2
    odd:
    mov ah,2
    mov dx,[si]
    add dx,30h
    add si,4
    int 21h
    loop odd
    
    exit:
    end main