// ============================================================
//  AJY.asm  -  Nand2Tetris Hack Assembly
//  Letras originales sin modificar el tamano.
//  A(65) -> izquierda  R12=0
//  J(74) -> centro     R12=11
//  Y(89) -> derecha    R12=18
//  Otra tecla -> no cambia pantalla

// (MAIN_LOOP)
    @KBD
    D=M
    @R0
    M=D
    @MAIN_LOOP
    D;JEQ
    @R0
    D=M
    @65
    D=D-A
    @PRESS_A
    D;JEQ
    @R0
    D=M
    @74
    D=D-A
    @PRESS_J
    D;JEQ
    @R0
    D=M
    @89
    D=D-A
    @PRESS_Y
    D;JEQ
    @MAIN_LOOP
    0;JMP

(PRESS_A)
    @0
    D=A
    @R12
    M=D
    @RET_A
    D=A
    @R13
    M=D
    @DRAW_A
    0;JMP
(RET_A)
    @MAIN_LOOP
    0;JMP

(PRESS_J)
    @11
    D=A
    @R12
    M=D
    @RET_J
    D=A
    @R13
    M=D
    @DRAW_J
    0;JMP
(RET_J)
    @MAIN_LOOP
    0;JMP

(PRESS_Y)
    @18
    D=A
    @R12
    M=D
    @RET_Y
    D=A
    @R13
    M=D
    @DRAW_Y
    0;JMP
(RET_Y)
    @MAIN_LOOP
    0;JMP

(DRAW_A)
    @SCREEN
    D=A
    @R12
    AD=D+M
    // row 48
    @2 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    A=A+1
    D=A
    @1023 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 49
    D=A // D holds previous addr
    @31
    AD=D+A
    M=-1
    A=A+1
    D=A
    @2047 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 50
    D=A // D holds previous addr
    @31
    AD=D+A
    M=-1
    A=A+1
    D=A
    @2047 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 51
    D=A // D holds previous addr
    @31
    AD=D+A
    M=-1
    A=A+1
    D=A
    @2047 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 52
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @1984 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 53
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @1984 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 54
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @1984 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 55
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @1984 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 56
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @1984 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 57
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @1984 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 58
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @1984 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 59
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @1984 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 60
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @1984 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 61
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @1984 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 62
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @1984 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 63
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @1984 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 64
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @1984 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 65
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @1984 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 66
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @1984 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 67
    D=A // D holds previous addr
    @31
    AD=D+A
    M=-1
    A=A+1
    D=A
    @2047 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 68
    D=A // D holds previous addr
    @31
    AD=D+A
    M=-1
    A=A+1
    D=A
    @2047 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 69
    D=A // D holds previous addr
    @31
    AD=D+A
    M=-1
    A=A+1
    D=A
    @2047 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 70
    D=A // D holds previous addr
    @31
    AD=D+A
    M=-1
    A=A+1
    D=A
    @2047 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 71
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @1984 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 72
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @1984 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 73
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @1984 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 74
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @1984 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 75
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @1984 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 76
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @1984 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 77
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @1984 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 78
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @1984 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 79
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @1984 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 80
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @1984 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // return
    @R13
    A=M
    D;JMP

(DRAW_J)
    @SCREEN
    D=A
    @R12
    AD=D+M
    // row 48
    M=-1
    A=A+1
    D=A
    M=-1
    A=A+1
    D=A
    @255 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 49
    D=A // D holds previous addr
    @30
    AD=D+A
    M=-1
    A=A+1
    D=A
    M=-1
    A=A+1
    D=A
    @255 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 50
    D=A // D holds previous addr
    @30
    AD=D+A
    M=-1
    A=A+1
    D=A
    M=-1
    A=A+1
    D=A
    @255 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 51
    D=A // D holds previous addr
    @30
    AD=D+A
    M=-1
    A=A+1
    D=A
    M=-1
    A=A+1
    D=A
    @255 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 52
    D=A // D holds previous addr
    @31
    AD=D+A
    @62 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 53
    D=A // D holds previous addr
    @32
    AD=D+A
    @62 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 54
    D=A // D holds previous addr
    @32
    AD=D+A
    @62 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 55
    D=A // D holds previous addr
    @32
    AD=D+A
    @62 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 56
    D=A // D holds previous addr
    @32
    AD=D+A
    @62 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 57
    D=A // D holds previous addr
    @32
    AD=D+A
    @62 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 58
    D=A // D holds previous addr
    @32
    AD=D+A
    @62 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 59
    D=A // D holds previous addr
    @32
    AD=D+A
    @62 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 60
    D=A // D holds previous addr
    @32
    AD=D+A
    @62 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 61
    D=A // D holds previous addr
    @32
    AD=D+A
    @62 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 62
    D=A // D holds previous addr
    @32
    AD=D+A
    @62 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 63
    D=A // D holds previous addr
    @32
    AD=D+A
    @62 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 64
    D=A // D holds previous addr
    @32
    AD=D+A
    @62 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 65
    D=A // D holds previous addr
    @32
    AD=D+A
    @62 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 66
    D=A // D holds previous addr
    @32
    AD=D+A
    @62 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 67
    D=A // D holds previous addr
    @32
    AD=D+A
    @62 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 68
    D=A // D holds previous addr
    @32
    AD=D+A
    @62 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 69
    D=A // D holds previous addr
    @32
    AD=D+A
    @62 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 70
    D=A // D holds previous addr
    @32
    AD=D+A
    @62 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 71
    D=A // D holds previous addr
    @32
    AD=D+A
    @62 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 72
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @62 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 73
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @62 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 74
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @62 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 75
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @62 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 76
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @62 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 77
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @62 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 78
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @62 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 79
    D=A // D holds previous addr
    @31
    AD=D+A
    @31 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @62 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 80
    D=A // D holds previous addr
    @31
    AD=D+A
    M=-1
    A=A+1
    D=A
    @63 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 81
    D=A // D holds previous addr
    @31
    AD=D+A
    M=-1
    A=A+1
    D=A
    @63 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 82
    D=A // D holds previous addr
    @31
    AD=D+A
    M=-1
    A=A+1
    D=A
    @63 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 83
    D=A // D holds previous addr
    @31
    AD=D+A
    M=-1
    A=A+1
    D=A
    @63 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 84
    D=A // D holds previous addr
    @31
    AD=D+A
    M=-1
    A=A+1
    D=A
    @63 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // return
    @R13
    A=M
    D;JMP

(DRAW_Y)
    @SCREEN
    D=A
    @R12
    AD=D+M
    // row 39
    @127 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    A=A+1
    D=A
    @2040 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 40
    D=A // D holds previous addr
    @30
    AD=D+A
    @1020 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    A=A+1
    D=A
    @511 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 41
    D=A // D holds previous addr
    @30
    AD=D+A
    @8176 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @8192 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    A=A+1
    D=A
    @127 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 42
    D=A // D holds previous addr
    @30
    AD=D+A
    @32640 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @2048 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    A=A+1
    D=A
    @15 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 43
    D=A // D holds previous addr
    @30
    AD=D+A
    @32640 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    A=A+1
    D=A
    @2048 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    A=A+1
    D=A
    @15 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 44
    D=A // D holds previous addr
    @30
    AD=D+A
    @512 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    A=A+1
    D=A
    @1024 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    A=A+1
    D=A
    @7 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 45
    D=A // D holds previous addr
    @30
    AD=D+A
    @512 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    A=A+1
    D=A
    @1024 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    A=A+1
    D=A
    @7 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 46
    D=A // D holds previous addr
    @30
    AD=D+A
    @2048 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    A=A+1
    D=A
    @253 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    // row 47
    D=A // D holds previous addr
    @31
    AD=D+A
    @2048 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    A=A+1
    D=A
    @253 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    // row 48
    D=A // D holds previous addr
    @31
    AD=D+A
    @8192 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    A=A+1
    D=A
    @16383 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 49
    D=A // D holds previous addr
    @31
    AD=D+A
    @8192 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    A=A+1
    D=A
    @16383 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 50
    D=A // D holds previous addr
    @31
    AD=D+A
    @8192 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    A=A+1
    D=A
    @16383 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 51
    D=A // D holds previous addr
    @31
    AD=D+A
    @8192 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=A-D // RAM[addr]=-val
    A=A+1
    D=A
    @16383 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 52
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 53
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 54
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 55
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 56
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 57
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 58
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 59
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 60
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 61
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 62
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 63
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 64
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 65
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 66
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 67
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 68
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 69
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 70
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 71
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 72
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 73
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 74
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 75
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 76
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 77
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 78
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 79
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 80
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 81
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 82
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 83
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // row 84
    D=A // D holds previous addr
    @32
    AD=D+A
    @248 // A holds val
    D=D+A // D = addr + val
    A=D-A // A=addr + val - val = addr
    M=D-A // RAM[addr] = val
    // return
    @R13
    A=M
    D;JMP