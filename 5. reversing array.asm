.model small
.stack 100h
.data
Array dw 2,3,4,1,0
.code
main proc
    mov ax,@data
    mov ds,ax
    lea si,Array+8
    mov cx,5
    print:
    mov ah,2
    mov dx,[si]
    add dl,30h
    int 21h
    sub si,2
    loop print 
    exit:
    end main 
    