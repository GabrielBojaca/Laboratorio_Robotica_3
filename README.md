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


<img width="1722" height="565" alt="Epson" src="https://github.com/user-attachments/assets/e3cde2da-87db-42c7-8a51-3a1614b4d0b5" />


Este repositorio contiene el desarrollo completo del **Laboratorio Nº3** de *Robótica Industrial 2025-II*:  
**Análisis y operación del manipulador EPSON T3-401S**, comparación con **Motoman MH6** y **ABB IRB140**, práctica de **movimiento manual**, **control de velocidades**, diseño de un **gripper neumático**, uso del software **EPSON RC+ 7.0**, y diseño/ejecución de una trayectoria con patrón de movimiento del **caballo de ajedrez**.

---

# Resultados de aprendizaje

> [!WARNING]
> FALTA agregar imagen resumen comparativa de los tres robots (EPSON T3-401S, Motoman MH6, ABB IRB140).

<p align="center">
  <img src="https://github.com/user-attachments/assets/06aa5190-ba78-4bb8-9037-c6bb08637aeb" width="400" />
</p>



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


---

# 1. Cuadro comparativo de manipuladores

> [!WARNING]
> FALTA agregar captura un cuadro comparativo más completo, como el de el lab pasado, pero estos datos parecen ser los básicos que pide el laboratorio.

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

El robot **EPSON T3-401S** posee encoders absolutos, por lo que se cuenta con la posiblidad de conocer la posición angular de cada articulación de forma absoluta. La siguiente tabla indica
cuantos pulsos por revolucion corresponden a cada articulación. 

### Pulsos por articulación – EPSON T3-401S

| Articulación | Resolución | Tipo de movimiento | Pulsos por unidad |
|--------------|------------|--------------------|-------------------|
| **J1** | 0.000439 °/pulso | Rotacional | **≈ 820 210 pulsos/rev** |
| **J2** | 0.000439 °/pulso | Rotacional | **≈ 820 210 pulsos/rev** |
| **J3** | 0.000799 mm/pulso | Lineal | **≈ 1252 pulsos/mm** |
| **J4** | 0.005017 °/pulso | Rotacional | **≈ 71 755 pulsos/rev** |

El software de **Epson** requiere definir la posición de **HOME** en valores absolutos, utilizando **pulsos** como unidad para cada articulación.

Para configurarlo:

1. Abra **Herramientas > Administrador de Robot** (atajo **F6**).  
2. En la ventana que aparece, vaya al menú lateral y seleccione **Configuración del HOME**.  

<p align="center">
  <img src="https://github.com/user-attachments/assets/0935f761-8285-486a-a409-cc48d1032dc9" width="600" />
</p>

En esta sección se pueden ingresar manualmente los pulsos a los que se desplazará cada eje cuando se ordene el movimiento a **HOME**.  
Finalmente, presione **Aplicar** para guardar los valores establecidos.

Al escoger **Home** en "Panel de control":
<p align="center">
<img width="600" alt="Captura de pantalla 2025-11-20 231210" src="https://github.com/user-attachments/assets/f4373d14-3c47-4d0f-97ac-51387f105ff2" />
</p>
El Robot se dirige a la posición mostrada en pantalla:

<p align="center">
<img width="600" alt="Home_0_0_0_0" src="https://github.com/user-attachments/assets/21ea8a78-505f-4372-9b89-b475f7382196" />
</p>

> [!WARNING]
> FALTA agregar imagen del robot en posición HOME tomada mañana (archivo sugerido: **home_t3.png**).

La posición HOME se define como la postura de referencia segura del robot SCARA.  

Se usa para:
- Calibración  
- Inicio/fin de ciclo  
- Recuperación ante errores

---

# 3. Movimientos manuales (Jogging)

> [!WARNING]
> FALTA agregar capturas del Jog Panel en EPSON RC+ 7.0:
> - Vista del panel JOG  
> - Botones de velocidad  
> - Ejes cartesianos y articulares  
> - Servo ON/OFF  

En el EPSON T3-401S, los movimientos manuales se realizan desde **EPSON RC+ 7.0**. Estos se ejecutan desde la ventana **Administrador de Robot** en la pestaña **Mover y enseñar**. 

<p align="center">
  <img width="600" alt="Captura de pantalla 2025-11-20 234117" src="https://github.com/user-attachments/assets/fc463306-681e-45c3-af33-0ba81f68bd5d" />
</p>

En **Modo:** podemos seleccionar multiples modos de desplazamiento y seleccionar uno de los das dos velocidades disponibles para movimiento manual (**Alta** y **Baja**).

<p align="center">
<img width="280"  alt="image" src="https://github.com/user-attachments/assets/1fd5a5aa-c8b7-4ffc-a389-6f59e8c0458c" />
</p>

Sin embargo, para que el robot tenga la capacidad de ejevutar los movimientos, es necesario encender los motores y seleccionar la potencia de los motores, para esto, presionamos el botón
**MOTOR ON** en la pestaña **Panel de control**. Tengase en cuenta que con la opción de potencia **POWER LOW** la velocidad de los motores será menor, algo más apropiado para calibración y teach. 


<p align="center">
<img width="600"  alt="motoron" src="https://github.com/user-attachments/assets/f914a59c-d36a-4795-91ac-e68aefd185a2" />
</p>

### Modos disponibles:
- **Joint Mode (JOG J1–J4)**  
- **Cartesian Mode (X, Y, Z, θ)**  



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
