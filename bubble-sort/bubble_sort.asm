SECTION .data
    data : db "54321"
    dataLen: equ $-data
SECTION .bss
SECTION .txt
    Bubble_sort :
                    MOV EAX, 0
                    MOV EDI, dataLen
                    MOV EBP, EDI
                    DEC EBP 
                    loopi : 
                            mov ebx, 0
                            loopj :
                                    mov cl, byte [data + ebx]
                                    mov dl, byte [data+ ebx + 1]
                                    
                                    cmp cl, dl
                                    jbe dont_swap
                                    
                                    mov byte [data + ebx], dl
                                    mov byte [data + ebx + 1], cl
                                    
                                    dont_swap:
                                    INC EBX
                                    CMP EBX, EBP 
                                    JB loopj
                    INC EAX
                    DEC EBP
                    CMP EAX, EDI
                    JB loopi
                    
                    RET
    
    global _start
    _start :
                call Bubble_sort
                
                MOV EAX, 4
                MOV EBX, 1
                MOV ECX, data
                MOV EDX, dataLen
                INT 80H
                
                MOV EAX, 1
                MOV EBX, 0
                INT 80H
