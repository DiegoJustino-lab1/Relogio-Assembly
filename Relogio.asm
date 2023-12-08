DATA SEGMENT
    var600 DW ?
    var601 DW ?
    var602 DW ?
    var603 DW ?
    var604 DW ?
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA

    ORG 100H  ; Endereço de início

Inicio:
    MOV AX, DATA
    MOV DS, AX
    MOV AX, var600
    MOV ES:[4092], AX 
    MOV var600, AX 
    SUB AX, var603
    CMP AX, 0
    JE ifInicio
    JMP Inicio

ifInicio:
    MOV AX, var601
    ADD AX, var602
    MOV var601, AX
    MOV ES:[4093], AX
    MOV AX, var604
    MOV var600, AX
    JMP Inicio

CODE ENDS
    END Inicio