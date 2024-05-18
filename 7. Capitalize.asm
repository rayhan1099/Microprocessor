.model small
.stack 100h
.data
msg db 'assembly lab test$'
.code
main proc
    mov ax,@data
    mov ds,ax
    lea si,msg
    mov cx,16
    mov ah,2
    mov dx,[si]
    sub dx,20h
    int 21h
    inc si
    mov di,0
    print:
    mov ah,2
    mov dx,[si]
    cmp dl,20h
    je lop1
    cmp di,1
    je upper
    int 21h
    
    jmp lop
    
    upper:
    sub dx,20h
    int 21h
    mov di,0
    jmp lop
    lop1:
    int 21h
    mov di,1
     
    lop:
    inc si
    loop print
     
    exit:
    end main 