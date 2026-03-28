// Calculando la parte entera a través de iteraciones, 
// iniciando en el cuadrado de 1 hasta llegar a un cuadrado que supere nuestro número N

// N = R1
@R1
D=M
@N // N = R1
M=D

@0
D=A
@K
M=D

(LOOP_K)
    // K = K + 1
    @K
    M=M+1

    // SQUARE = 0
    @0
    D=A
    @SQUARE
    M=D

    // I = 0
    @0
    D=A
    @I
    M=D

    // calcular SQUARE = K * K
    (MULT_LOOP)
        @I
        D=M
        @K
        D=D-M
        @END_MULT
        D;JEQ

        @K
        D=M
        @SQUARE
        M=D+M

        @I
        M=M+1

        @MULT_LOOP
        0;JMP

    (END_MULT)

    // if SQUARE > N → terminar
    @SQUARE
    D=M
    @N
    D=D-M
    @END
    D;JGT

    @LOOP_K
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