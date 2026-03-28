// Inicialización
@R1
D=M        // D = n
@N
M=D        // N = n

@0
D=A
@SUM
M=D        // SUM = 0

@1
D=A
@ODD
M=D        // ODD = 1

@0
D=A
@K
M=D        // K = 0

(LOOP)
    // SUM = SUM + ODD
    @ODD
    D=M
    @SUM
    M=D+M

    // K = K + 1
    @K
    M=M+1

    // if SUM > N → salir
    @SUM
    D=M
    @N
    D=D-M
    @END
    D;JGT

    // ODD = ODD + 2
    @ODD
    M=M+1
    M=M+1

    @LOOP
    0;JMP

(END)
    // resultado = K - 1
    @K
    D=M
    @1
    D=D-A
    @R3
    M=D

(ENDLOOP)
    @ENDLOOP
    0;JMP