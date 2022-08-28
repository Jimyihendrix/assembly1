section .data

msg db "Asm Madafacka!",0xA,0xD
len equ $ - msg


section .text
    global _start
    
_start:

    mov eax, 4 ;llama al sistema (sys_write)
    mov ebx, 1 ;stdout
    mov ecx, msg ;msg pantalla
    mov edx, len ;longitud del mensaje
    int 0x80  ;llamada al sistema de interrupciones

    mov eax, 1 ;(system("pause"), exit(), sys_exit)
    int 0x80