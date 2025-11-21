<p align="center">
  <img src="https://capsule-render.vercel.app/api?type=waving&height=160&fontSize=28&color=0:001B2E,50:004E89,100:1A659E&text=Laboratorio%203%20-%20Robótica%202025-II&fontColor=E0FBFC&fontAlign=50&fontAlignY=30&desc=Análisis%20y%20Operación%20del%20Manipulador%20EPSON%20T3-401S&descAlign=50&descAlignY=70" />
</p>


<h1 align="center">🤖 LABORATORIO 3 – EPSON T3-401S • EPSON RC+ 7.0</h1>

<p align="center">
  <img src="https://img.shields.io/badge/EPSON-T3--401S-blue?style=for-the-badge" />
  <img src="https://img.shields.io/badge/EPSON%20RC%2B-7.0-lightgrey?style=for-the-badge" />
  <img src="https://img.shields.io/badge/Comparación-EPSON%20RC+%207.0%20vs%20RoboDK%20vs%20RobotStudio-blue?style=for-the-badge" />
</p>

---

# Descripción general

> [!WARNING]  
> FALTA insertar una imagen introductoria del robot EPSON T3-401S tomada en el laboratorio.

Este repositorio contiene el desarrollo completo del **Laboratorio Nº3** de Robótica Industrial 2025-II:  
**Análisis y operación del manipulador EPSON T3-401S**, comparación con **Motoman MH6** y **ABB IRB140**, práctica de movimiento manual, control de velocidades, diseño de un gripper neumático, uso del software **EPSON RC+ 7.0**, y diseño/ejecución de una trayectoria con patrón del caballo de ajedrez.

---

# Resultados de aprendizaje

> [!WARNING]  
> PENDIENTE agregar una imagen resumen de los tres robots comparados (T3-401S, MH6, IRB140).

- Comparar técnicamente los manipuladores…  
- Identificar configuración HOME…  
- etc.

---

# Integrantes y Docentes

(Sección correcta, no requiere imágenes.)

---

# 1. Cuadro comparativo de manipuladores

> [!WARNING]  
> Agregar captura del cuadro comparativo oficial del PDF o foto de la diapositiva del laboratorio.

| Característica | EPSON T3-401S | Motoman MH6 | ABB IRB140 |
|---|---|---|---|
...

---

# 2. Configuración HOME del EPSON T3-401S

> [!WARNING]  
> FALTA agregar la imagen del robot en HOME (home_t3.png).  
> → Esta imagen es importante para la calificación del laboratorio.

La posición HOME se define como la postura…

---

# 3. Movimientos manuales (Jogging)

> [!WARNING]  
> FALTA agregar capturas del Jog Panel del EPSON RC+ 7.0.  
> Ej: ventana JOG, botones de velocidad, panel de ejes.

Modos disponibles…

---

# 4. Niveles de velocidad en EPSON RC+ 7.0

> [!WARNING]  
> FALTA captura donde se ve “Jog Speed: Low / Mid / High”.

LOW, MID, HIGH…

---

# 5. Software EPSON RC+ 7.0

> [!WARNING]  
> FALTA insertar screenshot del entorno EPSON RC+ con el T3 simulado.

Principales aplicaciones…

> [!WARNING]  
> Insertar diagrama o imagen del flujo de comunicación PC → RC+ → Controlador.

---

# 6. EPSON RC+ 7.0 vs RobotStudio vs RoboDK

> [!WARNING]  
> FALTA agregar imagen comparativa de los tres softwares.  
> (Puede ser tres logos: EPSON RC+, RoboDK, RobotStudio.)

| Criterio | EPSON RC+ | RoboDK | RobotStudio |  
...

---

# 7. Diseño del gripper neumático (Vacío)

> [!WARNING]  
> FALTA insertar diagrama neumático (diagrama_gripper.svg).

> [!WARNING]  
> FALTA insertar foto del gripper real (si la tomaron en laboratorio).

Incluye: ventosa, válvula 3/2…

> [!WARNING]  
> FALTA el esquema de conexión eléctrica a las E/S del robot.

---

# 8. Trayectoria con patrón de caballo (Ajedrez)

> [!WARNING]  
> FALTA el plano de planta en 2D (plano_cubeta.svg).

> [!WARNING]  
> FALTA diagrama de flujo de la lógica del caballo.

> [!WARNING]  
> FALTA grafo de conectividad permitido (nodos con movimientos tipo L).

> [!WARNING]  
> Ideal agregar foto del montaje de la cubeta en el laboratorio.

Descripción de requerimiento…

---

# 9. Código en SPEL+ (EPSON RC+ 7.0)

> [!WARNING]  
> FALTA insertar una captura del editor SPEL+ mostrando el archivo abierto.

Se incluye el código `.prg`:

```spel
REM --- Movimiento tipo caballo para cubeta 6x5 ---
...
```

---

# 10. Videos

> [!WARNING]  
> FALTA insertar enlaces o thumbnails a los tres videos:
> - simulacion.mp4  
> - implementacion.mp4  
> - gripper.mp4  

---

# Estructura del repositorio

> [!WARNING]  
> Verificar que los archivos mencionados estén realmente en `/docs`, `/code`, `/videos`.

```
📁 /docs
    cuadro_comparativo.pdf
    home_t3.png
    diagrama_gripper.svg
    plano_cubeta.svg
...
```

---


