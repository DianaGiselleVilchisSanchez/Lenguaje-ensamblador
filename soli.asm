.model small
.stack
.data
mensaje1 db 10,13,7,"Ingrese mensaje: ","$"
cadena db 100 dup(" "),"$"

.code

main proc
    mov ax, seg @data
    mov ds, ax

    mov ah, 09
    lea dx, msg
    int 21h

    mov ah, 3fh
    mov bx, 00
    mov cx, 10
    mov dx, offset [cadena]
    int 21h

    .exit
    main ENDP
end