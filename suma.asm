num1 db 5
num2 db 3
resultado db 0

inicio:
mov al, [num1]
add al, [num2]
mov [resultado], al

fin:
hlt