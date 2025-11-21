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
> FALTA verificar si usarás esta captura o si agregarás una diferente tomada mañana en laboratorio.

<img width="1722" height="565" alt="Epson" src="https://github.com/user-attachments/assets/e3cde2da-87db-42c7-8a51-3a1614b4d0b5" />

> [!WARNING]
> FALTA agregar una imagen introductoria del robot EPSON T3-401S desde la práctica real.

Este repositorio contiene el desarrollo completo del **Laboratorio Nº3** de *Robótica Industrial 2025-II*:  
**Análisis y operación del manipulador EPSON T3-401S**, comparación con **Motoman MH6** y **ABB IRB140**, práctica de **movimiento manual**, **control de velocidades**, diseño de un **gripper neumático**, uso del software **EPSON RC+ 7.0**, y diseño/ejecución de una trayectoria con patrón de movimiento del **caballo de ajedrez**.

---

# Resultados de aprendizaje

> [!WARNING]
> FALTA agregar imagen resumen comparativa de los tres robots (EPSON T3-401S, Motoman MH6, ABB IRB140).

- Comparar técnicamente los manipuladores **EPSON T3-401S**, **Motoman MH6** y **ABB IRB140**.  
- Identificar y describir la **configuración HOME del EPSON T3-401S**.  
- Realizar **movimientos manuales** en modos articulares y cartesianos.  
- Cambiar y reconocer **niveles de velocidad** en el software EPSON RC+ 7.0.  
- Describir aplicaciones principales y método de comunicación del **EPSON RC+ 7.0**.  
- Analizar diferencias entre **EPSON RC+**, **RoboDK** y **RobotStudio**.  
- Diseñar un **gripper neumático por vacío** y su conexión a E/S digitales.  
- Implementar una **trayectoria con patrón de caballo** para manipular dos huevos sobre una cubeta 6×5.

---

# Integrantes y Docentes

(Sección correcta, no requiere imágenes adicionales.)

---

# 1. Cuadro comparativo de manipuladores

> [!WARNING]
> FALTA agregar captura del cuadro comparativo oficial del PDF del laboratorio o foto de la diapositiva usada en clase.

| Característica | EPSON T3-401S | Motoman MH6 | ABB IRB140 |
|---|---|---|---|
| Tipo | SCARA | Articulado 6 DOF | Articulado 6 DOF |
| DOF | 4 | 6 | 6 |
| Carga útil | 3 kg | 6 kg | 6 kg |
| Alcance | 400 mm | 1422 mm | 800 mm |
| Repetibilidad | ±0.02 mm | ±0.08 mm | ±0.03 mm |
| Velocidad máx | Muy alta (SCARA) | Alta | Media-alta |
| Aplicaciones | Pick & place, ensamblaje | Manipulación, soldadura | Ensamble, manipulación |
| Controlador | EPSON RC+ | DX100 | IRC5 |

---

# 2. Configuración HOME del EPSON T3-401S

> [!WARNING]
> FALTA agregar imagen del robot en posición HOME tomada mañana (archivo sugerido: **home_t3.png**).

La posición HOME se define como la postura de referencia segura del robot SCARA.  
Para el EPSON T3-401S:

- **J1:** 0°  
- **J2:** 0°  
- **J3 (Z):** Altura superior segura  
- **J4 (rotación de herramienta):** 0°

Se usa para:
- Calibración  
- Inicio/fin de ciclo  
- Recuperación ante errores

> [!WARNING]
> FALTA incluir foto real tomada en laboratorio para esta sección.

---

# 3. Movimientos manuales (Jogging)

> [!WARNING]
> FALTA agregar capturas del Jog Panel en EPSON RC+ 7.0:
> - Vista del panel JOG  
> - Botones de velocidad  
> - Ejes cartesianos y articulares  
> - Servo ON/OFF  

En el EPSON T3-401S, los movimientos manuales se realizan desde **EPSON RC+ 7.0**:

### Modos disponibles:
- **Joint Mode (JOG J1–J4)**  
- **Cartesian Mode (X, Y, Z, θ)**  

### Teclas principales:
- **Flechas:** X / Y  
- **Page Up/Down:** eje Z  
- **R/L:** rotación de herramienta  
- **Switch de velocidad:** Low / Mid / High  

### Procedimiento:
1. Activar servo (Servo Power ON)  
2. Seleccionar el **modo JOG**  
3. Elegir **Joint** o **Cartesian**  
4. Ajustar velocidad de jogging  
5. Ejecutar movimientos  

Incluye capturas de pantalla del pendant virtual.

> [!WARNING]
> Capturas aún no agregadas: deberán tomarse en el laboratorio.

---

# 4. Niveles de velocidad en EPSON RC+ 7.0

> [!WARNING]
> FALTA captura mostrando el selector LOW / MID / HIGH en EPSON RC+.

EPSON RC+ proporciona tres niveles:

- **LOW** – precisión  
- **MID** – desplazamientos medios  
- **HIGH** – desplazamientos largos  

La velocidad activa se visualiza en:
- Barra superior de la interfaz  
- Indicador “Jog Speed”  
- Control físico en el panel de mando

---

# 5. Software EPSON RC+ 7.0

> [!WARNING]
> FALTA agregar captura del entorno EPSON RC+ con el robot cargado.

Principales aplicaciones:

- Control directo de movimiento  
- Creación de proyectos  
- Simulación 3D  
- SPEL+  
- Comunicación USB  
- I/O digitales  

### Comunicación con el manipulador:
- Protocolo USB industrial  
- RC+ envía comandos SPEL+  
- El controlador ejecuta interpolación y límites  

> [!WARNING]
> FALTA incluir diagrama del flujo PC → RC+ → Controlador → Robot.

---

# 6. EPSON RC+ 7.0 vs RobotStudio vs RoboDK

> [!WARNING]
> FALTA agregar imagen con los logos de los tres softwares (EPSON RC+, RoboDK, RobotStudio).

| Criterio | EPSON RC+ | RoboDK | RobotStudio |
|---|---|---|---|
| Marca | EPSON | Multimarca | ABB |
| Fidelidad | Alta | Media-Alta | Muy alta |
| Lenguaje | SPEL+ | Python, C# | RAPID |
| Simulación | Básica | Flexible | Industrial 1:1 |
| Uso ideal | Pick & place | Multimarca | ABB avanzado |

---

# 7. Diseño del gripper neumático (Vacío)

> [!WARNING]
> FALTA agregar diagrama neumático (archivo: **diagrama_gripper.svg**).

> [!WARNING]
> FALTA imagen real del gripper construido (si fue fabricado en el laboratorio).

Incluye:

- Ventosa de vacío  
- Válvula 3/2  
- Venturi o compresor  
- Tubo 4 mm  
- OUT1 del robot  
- Sensor IN1 opcional  

> [!WARNING]
> FALTA esquema eléctrico en E/S (archivo sugerido: **io_config.png**).

---

# 8. Trayectoria con patrón de caballo (Ajedrez)

> [!WARNING]
> FALTA plano de planta 2D (**plano_cubeta.svg**).

> [!WARNING]
> FALTA diagrama de flujo de la trayectoria del caballo.

> [!WARNING]
> FALTA grafo de conectividad permitido.

> [!WARNING]
> FALTA foto del montaje real de la cubeta en el laboratorio.

### Requerimiento:

Mover dos huevos por toda la cubeta 6×5 usando movimientos tipo L.

---

# 9. Código en SPEL+ (EPSON RC+ 7.0)

> [!WARNING]
> FALTA captura de pantalla del editor SPEL+ mostrando el archivo `horse_pattern.prg`.

```spel
REM --- Movimiento tipo caballo para cubeta 6x5 ---

DIM matriz(6,5)
DIM hx, hy

CALL InicializarHuevos()

FOR i=1 TO 30
   CALL MoverHuevo(hx, hy)
   CALL ActualizarCaballo(hx, hy)
NEXT
```

> El archivo completo está en `/code/horse_pattern.prg`.

---

# 10. Videos

> [!WARNING]
> FALTA incrustar enlaces reales a los videos (simulacion.mp4, implementacion.mp4, gripper.mp4).  
> Puedes subirlos a GitHub o a YouTube.

### Simulación EPSON RC+  
(video aquí)

### Ejecución real en el EPSON T3-401S  
(video aquí)

### Prueba del gripper neumático  
(video aquí)

---

# Estructura del repositorio

> [!WARNING]
> Verificar que los archivos existan realmente en las carpetas indicadas.

```
📁 /docs
    cuadro_comparativo.pdf
    home_t3.png
    diagrama_gripper.svg
    plano_cubeta.svg

📁 /code
    horse_pattern.prg
    io_config.json

📁 /videos
    simulacion.mp4
    implementacion.mp4
    gripper.mp4

README.md
```

---

# 📝 Licencia

Este repositorio se entrega como requisito académico para el curso Robótica Industrial 2025-II.
