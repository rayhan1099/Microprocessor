.model small
.stack 100h
.data
msg db 'assembly lab test$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea si,msg
    mov cx,17
    print:
    mov ah,2
    mov dx,[si]
    sub dx,20h
    int 21h
    add si,1
    loop print
    
    exit:
    end main