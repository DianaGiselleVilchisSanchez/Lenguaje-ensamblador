.model small
.stack 100h

quince equ 15
cero equ 0

.data
arreglo db 10,20,30,40
cadena db "UT?L $"
var db 7

.code
mov ax, @data
mov ds, ax

mov ah, 0Fh
mov al, quince
mov bh, al
mov bx, ax

mov ah, var
mov var, bh

mov ah, arreglo[2]
mov arreglo[3], bh

mov ah, 4Ch
int 21h
