' ==============================================
'  Dos huevos en patrón de CABALLO (matriz 6x5)
'  EPSON RC+ 7.0 / T3-401S
'  - Jump hace bajar/subir.
'  - Out_9 controla la ventosa.
'  - Imprime "regresa a" y "va a", y el total visitado.
' ==============================================
Global Integer i
Global Integer k
Global Integer curA
Global Integer curB
Global Integer pathA(32)
Global Integer pathB(32)
' --- Para impresión y conteo ---
Global Integer visited(30)
Global Integer visitedCount
Global Integer r, c   ' temporales para fila/col de impresión

Function CargarRutas
    ' ----------------- Huevo 1 (empieza en 1) -----------------
    pathA(1) = 1
    pathA(2) = 9
    pathA(3) = 5
    pathA(4) = 18
    pathA(5) = 29
    pathA(6) = 21
    pathA(7) = 25
    pathA(8) = 14
    pathA(9) = 3
    pathA(10) = 7
    pathA(11) = 20
    pathA(12) = 28
    pathA(13) = 24
    pathA(14) = 11
    pathA(15) = 22
     
    pathA(16) = 30  ' ----------------- Huevo  -----------------
    pathA(17) = 17
    pathA(18) = 6
    pathA(19) = 10
    pathA(20) = 2
    pathA(21) = 13
    pathA(22) = 26
    pathA(23) = 15
    pathA(24) = 19
	pathA(25) = 8
    pathA(26) = 4
    pathA(27) = 12
    pathA(28) = 16
    pathA(29) = 27
    pathA(30) = 23
    pathA(31) = 23
    pathA(32) = 23
       
    
    

    ' ----------------- Huevo 2 (empieza en 30) ----------------
    pathB(1) = 30
    pathB(2) = 17
    pathB(3) = 6
    pathB(4) = 10
    pathB(5) = 2
    pathB(6) = 13
    pathB(7) = 26
    pathB(8) = 15
    pathB(9) = 19
    pathB(10) = 8
    pathB(11) = 4
    pathB(12) = 12
    pathB(13) = 16
    pathB(14) = 27
    pathB(15) = 23
	pathB(16) = 27  ' ----------------- Huevo  -----------------
    pathB(17) = 14
    pathB(18) = 1
    pathB(19) = 9
    pathB(20) = 5
    pathB(21) = 18
    pathB(22) = 29
    pathB(23) = 21
    pathB(24) = 25
    pathB(25) = 14
    pathB(26) = 3
    pathB(27) = 7
    pathB(28) = 20
    pathB(29) = 28
    pathB(30) = 24
    pathB(31) = 11
    pathB(32) = 22
    
    

Fend

Function MarcarVisitado(idx As Integer)
    If visited(idx) = 0 Then
        visited(idx) = 1
        visitedCount = visitedCount + 1
    EndIf
Fend

Function ImprimeIdx(prefijo$ As String, idx As Integer)
    ' Convierte idx (1..30) a (col, fila) en matriz 6x5
    r = (idx - 1) / 6 + 1               ' fila 1..5
    c = idx - (r - 1) * 6               ' col  1..6
    Print prefijo$, " idx=", idx, " -> (col=", c, ", fila=", r, ")"
Fend

Function Paletizado_01
    ' ---- Pallet 6x5 (COLS=6, ROWS=5) ----
    Pallet 1, Origen, PuntoX, PuntoY, 6, 5
    ' ---- Cargar rutas de caballo ----
    Call CargarRutas
    ' ---- Inicializar visitados ----
    For i = 1 To 30
        visited(i) = 0
    Next
    visitedCount = 0
    ' Posiciones guardadas iniciales
    curA = pathA(1)    ' (1,1)
    curB = pathB(1)    ' (6,5)
    ' Marcar e imprimir estados iniciales
    Call MarcarVisitado(curA)
    Call MarcarVisitado(curB)
    Print "Inicio cabalgado 2-huevos: matriz 6x5"
    Call ImprimeIdx("H1 inicia en", curA)
    Call ImprimeIdx("H2 inicia en", curB)
    Print "Visitados únicos: ", visitedCount, "/30"
    ' ---- Alternar movimientos ----
    For k = 2 To 32
        ' -------- Huevo 1 ----------
        Call ImprimeIdx("H1: regresa a (PICK)", curA)
        Call MarcarVisitado(curA)
        Jump Pallet(1, curA)              ' PICK
        On Out_9                          ' Activar ventosa DESPUÉS del PICK
        Wait 0.10
        Call ImprimeIdx("H1: va a (PLACE)", pathA(k))
        Call MarcarVisitado(pathA(k))
        Jump Pallet(1, pathA(k))          ' PLACE
        Off Out_9                         ' Desactivar ventosa DESPUÉS del PLACE
        Wait 0.10
        curA = pathA(k)
        Print "Visitados únicos: ", visitedCount, "/30"
        ' -------- Huevo 2 ----------
        Call ImprimeIdx("H2: regresa a (PICK)", curB)
        Call MarcarVisitado(curB)
        Jump Pallet(1, curB)              ' PICK
        On Out_9                          ' Activar ventosa DESPUÉS del PICK
        Wait 0.10
        Call ImprimeIdx("H2: va a (PLACE)", pathB(k))
        Call MarcarVisitado(pathB(k))
        Jump Pallet(1, pathB(k))          ' PLACE
        Off Out_9                         ' Desactivar ventosa DESPUÉS del PLACE
        Wait 0.10
        curB = pathB(k)
        Print "Visitados únicos: ", visitedCount, "/30"
    Next
    ' --- Fin del paletizado: asegurar ventosa y volver a Home ---
    Off Out_9
    Print "Fin: visitados únicos totales = ", visitedCount, "/30"
    Print "Regresando a Home..."
    Jump Origen
    Home
Fend

Function main
	Wait 10
    Motor On
    Power High
    Accel 100, 100
    Speed 100
    Home
    Call Paletizado_01
Fend
