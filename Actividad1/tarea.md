# Actividad No.1

Nombre  | Carnet
------------- | -------------
Victor Alejandro Cuches de León  | 201807307

##Tipos de Kernel y sus diferencias
El Kernel o núcleo, es una parte fundamental del sistema operativo que se encarga de conceder el acceso al hardware de forma segura para todo el software que lo solicita, el Kernel es una pequeña e invisible parte del sistema operativo, pero la más importante, ya que sin esta no podría funcionar.

Este núcleo de los sistemas operativos se ejecuta en modo privilegiado con acceso especial a los recursos del sistema para poder realizar las peticiones de acceso que le va pidiendo el software que lo necesita, además como los recursos no son ilimitados, también hace de arbitro a la hora de asignarlos, decidiendo el orden de las peticiones recibidas según la prioridad e importancia de estas.

Los tipos de kernel se pueden clasificar de la siguiente manera:

##### Esenciales
+ Kernel monolítico: es un Kernel de gran tamaño que puede gestionar todas las tareas. Se encarga de la gestión de memoria y procesos, así como de la comunicación entre los procesos y el soporte de las diferentes funciones de los drivers y el hardware. 

+ Microkernel: los Kernel que están diseñados con pequeños tamaños tienen una clara función: evitar el colapso total del sistema en caso de un fallo. Para cumplir con todas las tareas como un Kernel monolítico cuenta con diferentes módulos.

+ Kernel híbrido: combinación entre el microkernel y el Kernel monolítico. Nos encontramos ante un Kernel grande, pero compacto y que puede ser modulado y otras partes del mismo Kernel pueden cargarse de manera dinámica. 

##### No Esenciales
+ Nanokernel: si el microernel es pequeño, este es todavía más reducido, pero su uso está destinado a sistemas embebidos ya que el nivel de fiabilidad es mayor. 

+ Exokernel: la estructura que propone un exokernel es innovadora ya que se estructura de manera vertical. En un exokernel la toma de decisiones está a cargo de los programas, para hacer el uso de los recursos del hardware en ciertas bibliotecas. 

+ Unikernel: es un Kernel destinado a la eliminación de capas intermedias entre el hardware y las aplicaciones, ya que busca simplificar lo más posible todos los procesos.

+ Anykernel: otro concepto innovador que busca conservar las cualidades de los Kernel monolíticos, pero también facilitar el desarrollo de los controladores, al mismo tiempo que ofrece mayor seguridad al usuario. 


## User vs Kernel Mode

User  | Kernel Mode
------------- | -------------
**Acceso restringido**. Las aplicaciones no tienen acceso directo al hardware o a las instrucciones privilegiadas del procesador. Esto garantiza que no puedan modificar aspectos críticos del sistema o interferir con otras aplicaciones en ejecución. | **Acceso completo**. El Kernel tiene acceso directo a la memoria, periféricos y otros recursos del sistema. Puede ejecutar instrucciones privilegiadas que no están disponibles en el Modo de Usuario, lo que le permite gestionar el funcionamiento del sistema en su totalidad.
**Protección del sistema**. Está diseñado para proporcionar una capa de aislamiento entre las aplicaciones y el núcleo del sistema operativo (Kernel). Si una aplicación intenta acceder a recursos protegidos o realizar operaciones que solo el Kernel puede realizar, el hardware genera una interrupción que pasa el control al Kernel. | **Gestión del sistema**. El Kernel se encarga de administrar la memoria, la planificación de procesos, la gestión de dispositivos y otros aspectos esenciales del sistema operativo. Todas las decisiones críticas que afectan al sistema se toman en el Modo de Kernel.
**Estabilidad y seguridad**. Al limitar el acceso a los recursos del sistema, el Modo de Usuario ayuda a prevenir fallos catastróficos causados por errores de programación y aumenta la seguridad del sistema. | **Modo restringido**. Dado que el acceso al Modo de Kernel es crucial para el funcionamiento estable del sistema, este modo está protegido y solo se puede acceder a él a través de mecanismos controlados, como interrupciones de hardware o llamadas de sistema.

Cuando una aplicación se ejecuta en el Modo de Usuario y necesita acceder a recursos del sistema o realizar operaciones que requieran privilegios elevados, debe solicitarlos al Kernel. Esto se logra mediante llamadas de sistema (system calls), que actúan como puentes para que las aplicaciones puedan solicitar servicios al Kernel. El Kernel verifica la validez de la solicitud y, si es legítima, ejecuta la operación en nombre de la aplicación. Después de completar la operación, el control vuelve al Modo de Usuario.

Esta separación entre el Modo de Usuario y el Modo de Kernel es fundamental para la seguridad y estabilidad del sistema. Evita que aplicaciones maliciosas o con errores afecten directamente al Kernel o a otros procesos en ejecución, lo que podría provocar fallas del sistema o vulnerabilidades de seguridad.
