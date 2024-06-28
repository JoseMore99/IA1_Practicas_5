
### UNIVERSIDAD SAN CARLOS DE GUATEMALA
FACULTAD DE INGENIERÍA  
ESCUELA DE CIENCIAS Y SISTEMAS  
LABORATORIO DE INTELIGENCIA ARTIFICIAL 1
SECCIÓN A

|  Nombre | Carnet  |
| ------------ | ------------ |
| Jose Carlos Moreira Paz | 201701015 |
| Paula Gabriela García Reinoso | 201700823 |

# MANUAL TECNICO
## Descripcion
La practi consistio en la obtencion de informacion de libros. Este proceso incluye la utilización del ISBN para obtener datos esenciales de cada libro, como el título, autor y precio. Debido a la naturaleza engorrosa y repetitiva de esta tarea, se ha decidido implementar una solución de automatización utilizando la herramienta UiPath. 

## Objetivo
El objetivo de esta automatización es registrar libros de manera eficiente y precisa, utilizando el ISBN para obtener y almacenar información relevante de cada libro. La solución consta de dos procesos principales:

- Proceso de Obtención de los ISBN: Automatización del almacenamiento de ISBN en la un cola del orchestrator de uipath.
- Proceso de Registro en Excel: Automatización de la obtencion de los datos de los libros a partir de los ISBN de la cola e inserción de los datos obtenidos en excel.

## Requisitos Previos
- Instalación de UiPath Studio.
- Base de datos o API de terceros para obtener datos del libro mediante el ISBN.
- Credenciales de acceso necesarias para las aplicaciones involucradas.

## Uipath
UiPath es una plataforma de automatización robótica de procesos (RPA, por sus siglas en inglés) que permite a las organizaciones automatizar tareas repetitivas y rutinarias en aplicaciones de software. Con UiPath, las empresas pueden aumentar la eficiencia, reducir errores y liberar a los empleados para que se concentren en tareas de mayor valor.

## Extensiones
### Add in de Excel
La extensión Add-in de Excel de UiPath es una herramienta que permite la integración directa entre UiPath y Microsoft Excel. Esta extensión mejora y facilita la automatización de tareas dentro de Excel, permitiendo a los usuarios interactuar con las hojas de cálculo de manera más eficiente y robusta. A continuación, se detallan las características, ventajas y cómo utilizar el Add-in de Excel de UiPath.
### Chrome
La extensión de Chrome de UiPath es una herramienta que permite a UiPath Studio y UiPath Robots interactuar directamente con el navegador Google Chrome. Esta extensión es esencial para automatizar tareas web, ya que habilita las capacidades de automatización de UiPath dentro del entorno del navegador, permitiendo la manipulación de elementos web, la extracción de datos y la automatización de flujos de trabajo complejos.
## Actividades 

Las actividades en UiPath son bloques de construcción fundamentales utilizados para crear flujos de trabajo de automatización. Cada actividad realiza una acción específica, y al combinar varias actividades, puedes automatizar procesos complejos. Las utilizadas en el proyecto fueron: 

- Assign: Asigna un valor a una variable.
- Delay: Pausa la ejecución durante un tiempo específico.
- For Each: Itera sobre una colección de elementos.
- Try Catch: Captura un tipo de excepción especificado en una secuencia o actividad y muestra una notificación de error o la descarta y continúa la ejecución.
- Get Queue Items: Te permite recuperar una lista de hasta 100 transacciones de una cola de Orchestratorindicada
- Get Transaction Item: Obtiene un elemento de cola de Orchestrator para que pueda procesarlo.
- Add queue item: Agrega un nuevo elemento en una cola de Orchestrator.
- Click: Simula un clic del mouse en un elemento de la interfaz de usuario.
- Get Text: Extrae texto de un elemento de la interfaz de usuario.
- Type Into: Escribe texto en un campo de entrada.
- check app state: Comprueba el estado de una aplicación o navegador web verificando si un elemento aparece o desaparece de la interfaz de usuario.
- Excel Application Scope: Define un ámbito para realizar actividades en un archivo de Excel.
- Use excel file: Permite seleccionar un archivo de Excel para usarlo en la automatización
- For each excel row: Ejecuta una o más actividades para cada fila de un rango, tabla u hoja.
- Write Cell: Escribe en una celda específica.
