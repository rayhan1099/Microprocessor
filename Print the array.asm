.model small
.stack 100h
.data
Array dw 1,3,2,1,2
.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea si,Array
    mov cx,5
    print:
    mov ah,2
    mov dl,[si]
    add dl,30h
    int 21h
    add si,2
    loop print
    
    exit:
    end main
    