
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

## Requisitos del Sistema

**Hardware**: 
  - PC con Windows 7/8/10 o Mac con OS X 10.11 o superior.
  - Dispositivo móvil (Android) para pruebas de AR.
  
**Software**:
  - Unity 2019.4.29f1 o superior.
  - Vuforia Engine.
  - SDK de Android o iOS según corresponda.
## Conceptos basicos
- Realidad Aumentada (AR): Es una tecnología que superpone información digital, como imágenes, sonidos y otras sensaciones, sobre el mundo real a través de dispositivos como smartphones, tablets y gafas especiales.

- Vuforia: es un SDK de Realidad Aumentada (AR) multiplataforma que permite a los desarrolladores crear aplicaciones AR para dispositivos móviles y digitales. Vuforia se destaca por su capacidad de reconocimiento de objetos, imágenes y superficies, facilitando la integración de elementos digitales en el entorno físico.  Vuforia proporciona una suite robusta para el desarrollo de experiencias AR, integrándose fácilmente con motores de desarrollo como Unity, facilitando la creación de aplicaciones interactivas y envolventes.

- Unity:Unity es un motor de videojuegos 3D potente y versátil, ampliamente utilizado para el desarrollo de juegos y aplicaciones interactivas en múltiples plataformas. Unity permite a los desarrolladores crear experiencias en 2D y 3D, realidad aumentada (AR), realidad virtual (VR) y otras funcionalidades. Unity es conocido por su facilidad de uso, amplia documentación y comunidad activa, lo que lo convierte en una opción popular tanto para desarrolladores independientes como para grandes estudios de desarrollo. Su capacidad para exportar proyectos a múltiples plataformas, como PC, consolas, móviles y web, amplía las posibilidades y el alcance de las aplicaciones creadas con este motor.

- Reconocimiento de Objetos: El reconocimiento de objetos en la Realidad Aumentada (AR) es fundamental para crear experiencias inmersivas y precisas. Se basa en la identificación y seguimiento de objetos del mundo real para superponer elementos digitales. Aquí se describen los principios clave, técnicas de coincidencia de patrones y seguimiento de imágenes.

## Configuración del Entorno de Desarrollo

- Instalación de Unity: Descargar e instalar Unity, configurar el entorno de desarrollo y familiarizarse con la interfaz.

- Instalación de Vuforia: Descargar e instalar el SDK de Vuforia, crear una cuenta de desarrollador y obtener la licencia.

- Configuración de Vuforia en Unity: Integrar el SDK de Vuforia en un proyecto de Unity, configurar la licencia y crear un objeto Vuforia Image Target.

- Importación de Modelos 3D: Importar modelos 3D de un Nintendo Switch y sus partes en el proyecto de Unity

## Desarrollo de la Aplicación AR

- Creación de la Escena AR: Diseñar la escena AR en Unity, posicionar el objeto Vuforia Model Target y los modelos 3D de las partes del Nintendo Switch.

- Sincronización de Modelos 3D: Sincronizar la aparición y posición de los modelos 3D con la detección y seguimiento del objeto Vuforia Model Target.

- Interacciones con los Modelos 3D: Implementar interacciones con los modelos 3D, resaltando el objeto e identificando partes especificas.

## Despliegue y Pruebas de la Aplicación

- Construcción de la Aplicación: Construir la aplicación AR para la plataforma objetivo (Android o iOS) utilizando Unity Build Settings.

- Prueba de la Aplicación: Probar la aplicación AR en un dispositivo móvil con cámara compatible, verificar el reconocimiento del Nintendo Switch, la interacción con los modelos 3D y el rendimiento general.