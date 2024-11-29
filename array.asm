.MODEL SMALL
.STACK 64
.DATA
    ARRAY DB '1 2 3 4 5 6 7 8 9 0$', 0 ; Cadena terminada en '$'
.CODE
MAIN PROC
    mov ax, @data        ; Inicializa DS con el segmento de datos
    mov ds, ax
    mov cx, 10           ; Configura el contador del bucle

Ciclo:
    lea dx, ARRAY        ; Carga la direcci?n del array en DX
    mov ah, 09h          ; Servicio de impresi?n de cadenas
    int 21h              ; Llamada a la interrupci?n de DOS
    LOOP Ciclo           ; Decrementa CX y repite el bucle si CX != 0

    mov ah, 4Ch          ; Servicio de salida del programa
    int 21h              ; Termina la ejecuci?n
MAIN ENDP
END MAIN
