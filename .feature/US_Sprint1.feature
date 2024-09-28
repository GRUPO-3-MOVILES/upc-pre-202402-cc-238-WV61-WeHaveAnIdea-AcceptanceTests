Feature: TS013: Creación de una estructura de datos en grafo para representar los roadmaps

    Como desarrollador
    Quiero crear una estructura de datos en grafo para representar los roadmaps
    Para tener una representación eficiente y flexible de los pasos, relaciones y dependencias dentro del roadmap, facilitando la visualización, manipulación y análisis de la información.

Scenario: Definición de nodos y aristas en la estructura de grafo

    Dado que se está creando una estructura de datos en grafo para un roadmap,
    Cuando se definen los nodos (pasos) y aristas (relaciones) del grafo,
    Entonces el sistema debe permitir la definición de nodos con atributos como nombre, descripción, fecha límite, y prioridad, y establecer aristas que representen las relaciones entre nodos.

Scenario: Persistencia de datos del grafo

    Dado que un usuario crea y actualiza un roadmap utilizando la estructura de datos en grafo,
    Cuando se guardan los cambios en el roadmap,
    Entonces el sistema debe almacenar la estructura del grafo en una base de datos de manera eficiente, asegurando que los nodos, aristas y sus atributos se persistan correctamente y puedan ser recuperados y manipulados en futuras sesiones.

Examples:
    | Nodo         | Atributos de Nodo                             | Arista               |
    | "Paso 1"     | "Nombre, Descripción, Fecha límite, Prioridad" | "Relación entre nodos" |
    | "Paso 2"     | "Nombre, Descripción, Fecha límite, Prioridad" | "Relación entre nodos" |




Feature: TS014: Optimización de la creación, edición de nodos y conexiones en el grafo

    Como usuario en la aplicación
    Quiero que la creación y edición de nodos y conexiones en el grafo sean optimizadas
    Para mejorar la eficiencia y la experiencia al manipular el roadmap, facilitando la gestión rápida y precisa de la estructura del grafo.

Scenario: Optimización de la creación de nodos

    Dado que un usuario está creando nuevos nodos en el grafo,
    Cuando el usuario agrega un nodo al grafo,
    Entonces el sistema debe permitir la creación de nodos de manera rápida, con una interfaz intuitiva que minimice el tiempo de entrada de datos, y mostrar el nuevo nodo en el grafo sin retrasos significativos, asegurando que se integren de manera eficiente en la estructura existente.

Scenario: Optimización de la edición de nodos

    Dado que un usuario está editando atributos de un nodo en el grafo,
    Cuando el usuario realiza cambios en los atributos del nodo,
    Entonces el sistema debe actualizar los atributos del nodo en tiempo real, reflejando los cambios de manera inmediata en el grafo sin afectar el rendimiento.

Scenario: Optimización de la conexión de nodos

    Dado que un usuario está creando o editando conexiones entre nodos en el grafo,
    Cuando el usuario agrega o ajusta una conexión entre nodos,
    Entonces el sistema debe optimizar el proceso para minimizar la latencia y el tiempo de respuesta, asegurando que las conexiones se actualicen de manera fluida en el grafo y que el usuario pueda ver los cambios sin demoras significativas.

Examples:
    | Acción               | Resultado esperado                               |
    | Crear nodo           | Nodo agregado rápidamente y visible sin retrasos |
    | Editar nodo          | Atributos actualizados en tiempo real            |
    | Conectar nodos       | Conexión actualizada de manera fluida            |




Feature: TS015: Implementación de una interfaz visual interactiva para la manipulación del grafo

    Como usuario registrado
    Quiero una interfaz visual interactiva para la manipulación del grafo
    Para poder gestionar y ajustar los nodos y conexiones de manera intuitiva y eficiente, mejorando la experiencia al trabajar con el roadmap y facilitando la edición y visualización de la estructura del grafo.

Scenario: Interfaz para la creación y edición de nodos

    Dado que un usuario está en la interfaz visual del grafo,
    Cuando el usuario desea crear o editar nodos,
    Entonces la interfaz debe proporcionar herramientas interactivas que permitan al usuario añadir nuevos nodos o editar nodos existentes de manera intuitiva, con funcionalidades como arrastrar y soltar, edición rápida de atributos, y previsualización en tiempo real.

Scenario: Visualización y navegación del grafo

    Dado que un usuario está trabajando con un grafo complejo en la interfaz visual,
    Cuando el usuario necesita visualizar diferentes partes del grafo o navegar por el mismo,
    Entonces la interfaz debe proporcionar funcionalidades como zoom, desplazamiento y agrupación de nodos para facilitar la visualización de grandes grafos y permitir una navegación fluida entre secciones.

Examples:
    | Acción           | Herramientas interactivas disponibles                   |
    | Crear nodo       | Arrastrar y soltar, previsualización en tiempo real     |
    | Editar nodo      | Edición rápida de atributos, previsualización en tiempo real |
    | Navegar el grafo | Zoom, desplazamiento, agrupación de nodos               |




Feature: TS016: Asegurar que los algoritmos de recomendaciones de IA puedan sugerir de manera automática los nuevos nodos y conexiones

    Como usuario registrado
    Quiero que los algoritmos de recomendaciones de IA sugieran automáticamente nuevos nodos y conexiones en mi grafo
    Para recibir recomendaciones inteligentes que mejoren la estructura de mi roadmap, sugiriendo pasos y relaciones relevantes basados en mis objetivos y datos actuales.

Scenario: Sugerencias automáticas de nuevos nodos

    Dado que un usuario está trabajando en un roadmap y ha proporcionado datos relevantes,
    Cuando el sistema procesa estos datos utilizando algoritmos de IA,
    Entonces el sistema debe generar y mostrar sugerencias automáticas para nuevos nodos que podrían ser relevantes para el roadmap, con una descripción de cómo estos nodos podrían ayudar a alcanzar los objetivos del usuario.

Scenario: Sugerencias automáticas de conexiones entre nodos

    Dado que un usuario ha creado o editado nodos en su roadmap,
    Cuando el sistema analiza la estructura actual del grafo y los datos del usuario,
    Entonces el sistema debe utilizar algoritmos de IA para sugerir nuevas conexiones entre nodos existentes, incluyendo recomendaciones sobre cómo estas conexiones pueden mejorar la estructura del roadmap y optimizar las dependencias.

Examples:
    | Datos del usuario            | Sugerencias de nuevos nodos      | Sugerencias de conexiones        |
    | "Objetivos y plazos"         | "Nuevos pasos relacionados"      | "Relaciones entre nodos actuales"|
    | "Habilidades y experiencia"  | "Nodos adicionales para alcanzar metas" | "Conexiones basadas en dependencias" |




Feature: TS017: Implementación de un sistema de detección de ciclos o dependencias erróneas en el grafo

    Como usuario registrado
    Quiero implementar un sistema de detección de ciclos o dependencias erróneas en el grafo
    Para identificar y corregir automáticamente cualquier ciclo o dependencia incorrecta que pueda afectar la integridad y funcionalidad del roadmap.

Scenario: Detección de ciclos en el grafo

    Dado que el usuario ha creado o modificado el grafo de su roadmap,
    Cuando el sistema analiza la estructura del grafo,
    Entonces el sistema debe detectar cualquier ciclo en el grafo y notificar al usuario sobre la existencia de estos ciclos, brindando información sobre cómo eliminarlos para mantener la integridad del roadmap.

Scenario: Detección de dependencias erróneas

    Dado que el usuario ha establecido conexiones entre nodos en el grafo,
    Cuando el sistema revisa las dependencias entre nodos,
    Entonces el sistema debe identificar cualquier dependencia errónea, notificar al usuario sobre estas dependencias incorrectas, y ofrecer recomendaciones para corregirlas o ajustar la estructura del grafo de manera eficiente.

Examples:
    | Error detectado  | Acción recomendada                       |
    | Ciclo en el grafo | Eliminar o modificar las conexiones para evitar ciclos |
    | Dependencia errónea | Reorganizar las dependencias para corregir el error  |




Feature: TS027: Recibir soporte prioritario y asistencia personalizada

    Como usuario premium
    Quiero recibir soporte prioritario y asistencia personalizada
    Para obtener ayuda rápida y efectiva para resolver cualquier problema o consulta relacionada con mi cuenta y el uso de la plataforma.

Scenario: Acceso a soporte prioritario

    Dado que un usuario premium solicita soporte,
    Cuando el usuario contacta al soporte a través de los canales habilitados,
    Entonces el sistema debe asignar la solicitud de soporte a un equipo de atención prioritaria,
    Y asegurar que el usuario reciba una respuesta y solución en un tiempo más corto en comparación con los usuarios no premium.

Scenario: Asistencia personalizada

    Dado que un usuario premium está recibiendo soporte,
    Cuando el usuario es asistido por un representante del soporte,
    Entonces el sistema debe proporcionar al representante información detallada sobre la cuenta del usuario y su historial de interacciones,
    Para ofrecer una asistencia personalizada y resolver problemas específicos de manera efectiva.

Examples:
    | Nivel de soporte      | Tiempo de respuesta         | Tipo de asistencia             |
    | Soporte prioritario    | Menor tiempo de respuesta   | Información personalizada       |
    | Soporte estándar       | Mayor tiempo de respuesta   | Asistencia general              |




Feature: TS028: Implementación de un sistema de control de acceso basado en roles

    Como administrador del sistema
    Quiero implementar un sistema de control de acceso basado en roles
    Para gestionar y restringir el acceso a diferentes funcionalidades y datos de la plataforma según el rol de cada usuario, garantizando la seguridad y el manejo adecuado de los permisos.

Scenario: Definición de roles y permisos

    Dado que un administrador del sistema está configurando el control de acceso,
    Cuando se definen roles en el sistema,
    Entonces el sistema debe permitir al administrador establecer permisos específicos para cada rol,
    Y especificar qué funcionalidades y datos están accesibles para los usuarios con cada rol, asegurando que solo los usuarios autorizados puedan acceder a ciertas áreas o realizar ciertas acciones.

Scenario: Aplicación de roles y restricciones

    Dado que un usuario accede a la plataforma,
    Cuando el sistema evalúa el rol del usuario,
    Entonces el sistema debe aplicar las restricciones y permisos definidos para ese rol,
    Y asegurar que el usuario solo pueda acceder a las funcionalidades y datos permitidos por su rol, evitando el acceso no autorizado a áreas restringidas.

Examples:
    | Rol            | Funcionalidades permitidas      | Áreas restringidas                 |
    | Administrador  | Gestión de usuarios y datos     | Ninguna                            |
    | Editor         | Creación y edición de contenido | Gestión de usuarios y configuraciones |
    | Lector         | Visualización de contenido      | Creación, edición y gestión de usuarios |




Feature: TS029: Asegurar que las suscripciones premium se manejen con pagos seguros y recurrentes

    Como administrador del sistema
    Quiero asegurar que las suscripciones premium se manejen con pagos seguros y recurrentes
    Para garantizar que las transacciones de pago se realicen de manera segura y que las renovaciones automáticas de las suscripciones se procesen correctamente sin interrupciones.

Scenario: Implementación de pagos seguros

    Dado que un usuario premium realiza una suscripción o una renovación,
    Cuando se procesa el pago,
    Entonces el sistema debe utilizar protocolos de seguridad estándar para la transacción, como cifrado de datos y autenticación de pagos,
    Y asegurar que la información de pago del usuario se maneje de forma segura y que la transacción sea protegida contra fraudes.

Scenario: Gestión de pagos recurrentes

    Dado que una suscripción premium está configurada para renovaciones automáticas,
    Cuando se acerca la fecha de renovación,
    Entonces el sistema debe gestionar automáticamente el pago recurrente,
    Y procesar la transacción según el ciclo de facturación establecido, notificando al usuario sobre la renovación y cualquier cargo asociado, asegurando que la suscripción se mantenga activa sin interrupciones.

Examples:
    | Tipo de suscripción   | Protocolo de seguridad  | Ciclo de facturación |
    | Premium mensual       | Cifrado SSL/TLS         | Mensual              |
    | Premium anual         | Autenticación 3D Secure | Anual                |




Feature: TS030: Diferenciar claramente la UI/UX para usuarios gratuitos y premium

    Como usuario de la plataforma
    Quiero que la interfaz de usuario (UI) y la experiencia de usuario (UX) sean claramente diferenciadas entre usuarios gratuitos y premium
    Para poder identificar fácilmente las características y funcionalidades exclusivas para usuarios premium y mejorar mi experiencia en la plataforma.

Scenario: Diferenciación visual de características

    Dado que un usuario gratuito accede a la plataforma,
    Cuando el usuario navega por la interfaz,
    Entonces el sistema debe mostrar claramente las características y funcionalidades disponibles solo para usuarios premium,
    Y utilizar indicadores visuales como iconos, etiquetas o secciones específicas para resaltar las diferencias.

Scenario: Acceso a funcionalidades premium

    Dado que un usuario premium accede a la plataforma,
    Cuando el usuario explora la interfaz,
    Entonces el sistema debe proporcionar una experiencia de usuario optimizada y acceso completo a las funcionalidades exclusivas para usuarios premium,
    Y asegurar que los beneficios adicionales estén disponibles de manera fluida para mejorar la satisfacción del usuario.

Examples:
    | Tipo de usuario  | Indicadores visuales          | Funcionalidades premium          |
    | Gratuito         | Iconos bloqueados y etiquetas | Desbloqueo de reportes avanzados |
    | Premium          | Acceso completo               | Reportes avanzados y soporte VIP |




Feature: TS031: Integración de un sistema que permita a los usuarios cambiar de membresía sin interrupción en el servicio

    Como usuario de la plataforma,
    Quiero tener la capacidad de cambiar de membresía sin interrupción en el servicio,
    Para poder actualizar mi suscripción de manera fluida y sin perder acceso a las funcionalidades durante el proceso de cambio.

Scenario: Proceso de cambio de membresía sin interrupciones

    Dado que un usuario desea cambiar de membresía,
    Cuando el usuario selecciona una nueva opción de membresía y completa el proceso de actualización,
    Entonces el sistema debe asegurarse de que el cambio de membresía se realice de manera continua,
    Y que no se interrumpa el acceso a las funcionalidades de la plataforma durante el proceso,
    Garantizando que el usuario tenga acceso inmediato a las nuevas características y beneficios.

Scenario: Confirmación y actualización del cambio de membresía

    Dado que el proceso de cambio de membresía ha sido completado,
    Cuando el sistema procesa la actualización,
    Entonces el sistema debe enviar una notificación al usuario confirmando que el cambio de membresía se ha realizado con éxito,
    Y proporcionar detalles sobre los beneficios de la nueva membresía,
    Asegurando que el usuario esté informado y satisfecho con la actualización.
    
Examples:
    | Tipo de membresía anterior | Nueva membresía  | Confirmación enviada  |
    | Gratuito                   | Premium          | Sí                   |
    | Básico                     | Avanzado         | Sí                   |




Feature: TS032: Asegurar que los datos de pago y la información sensible estén encriptados

    Como administrador del sistema,
    Quiero asegurar que los datos de pago y la información sensible estén encriptados,
    Para proteger la privacidad y seguridad de la información de los usuarios y evitar accesos no autorizados o filtraciones de datos.

Scenario: Encriptación de datos de pago

    Dado que un usuario realiza una transacción de pago,
    Cuando los datos de pago son transmitidos al sistema,
    Entonces el sistema debe utilizar protocolos de encriptación estándar,
    Como TLS (Transport Layer Security),
    Para asegurar que los datos de pago sean encriptados durante la transmisión y el almacenamiento,
    Protegiendo la información contra accesos no autorizados y vulnerabilidades de seguridad.

Scenario: Encriptación de información sensible del usuario

    Dado que un usuario almacena información sensible en su perfil,
    Cuando los datos son guardados en la base de datos,
    Entonces el sistema debe aplicar técnicas de encriptación en reposo,
    Como AES (Advanced Encryption Standard),
    Para proteger la información sensible almacenada,
    Garantizando que los datos estén seguros y accesibles solo para usuarios autorizados o para procesos legítimos dentro del sistema.




Feature: TS033: Implementación de detección de inicios de sesión sospechosos basados en la ubicación o el dispositivo

    Como usuario de la plataforma,
    Quiero que el sistema implemente una detección de inicios de sesión sospechosos basada en la ubicación o el dispositivo,
    Para ser alertado de accesos potencialmente fraudulentos o no autorizados y poder tomar acciones preventivas.

Scenario: Detección de inicios de sesión desde ubicaciones inusuales

    Dado que un inicio de sesión es detectado desde una ubicación que no se encuentra en el historial habitual del usuario,
    Cuando el sistema identifica una discrepancia significativa en la ubicación,
    Entonces el sistema debe marcar el inicio de sesión como sospechoso,
    Y notificar al usuario a través de correo electrónico o SMS para que revise y confirme si el acceso es legítimo.

Scenario: Detección de inicios de sesión desde dispositivos no reconocidos

    Dado que un inicio de sesión es realizado desde un dispositivo que no ha sido previamente registrado por el usuario,
    Cuando el sistema detecta el uso de un nuevo dispositivo,
    Entonces el sistema debe alertar al usuario mediante una notificación,
    Y solicitar una verificación adicional, como una autenticación por correo electrónico o SMS,
    Para asegurar la legitimidad del acceso.




Feature: TS034: Implementación de un sistema de control de sesiones activas

    Como usuario de la plataforma,
    Quiero tener la capacidad de controlar y gestionar mis sesiones activas,
    Para poder cerrar sesiones en dispositivos que ya no uso o que considero inseguros y asegurarme de que solo los dispositivos autorizados tengan acceso a mi cuenta.

Scenario: Visualización de sesiones activas

    Dado que un usuario accede a la sección de gestión de sesiones en su perfil,
    Cuando el usuario solicita ver las sesiones activas,
    Entonces el sistema debe mostrar una lista de todas las sesiones activas,
    Incluyendo detalles como dispositivo, ubicación y hora del último acceso,
    Permitiendo al usuario revisar y monitorear la actividad en su cuenta.

Scenario: Cierre de sesiones activas

    Dado que un usuario desea cerrar una sesión activa desde un dispositivo no reconocido o no autorizado,
    Cuando el usuario selecciona la opción de cerrar sesión en esa sesión específica,
    Entonces el sistema debe cerrar la sesión seleccionada de manera inmediata,
    Y notificar al usuario que la sesión ha sido cerrada exitosamente,
    Garantizando que el dispositivo ya no tenga acceso a la cuenta.





Feature: HU035: Implementación de módulos de Términos y condiciones

    Como administrador de la plataforma
    Quiero implementar módulos de Términos y condiciones
    Para poder gestionar y actualizar fácilmente el contenido legal de la plataforma y asegurarme de que las políticas sean accesibles y estén actualizadas para todos los usuarios.

Scenario: El administrador actualiza los Términos y condiciones
    Dado que el administrador necesita actualizar los Términos y condiciones
    Cuando el administrador realiza cambios en el módulo de Términos y condiciones
    Entonces el sistema debe permitir al administrador publicar las actualizaciones de manera efectiva
    Y notificar a los usuarios sobre la nueva versión disponible

Examples:
    | sección                  | acción                           |
    | "Módulo de Términos"    | "Actualizar Términos y condiciones" |
    | "Interfaz de administración" | "Publicar actualizaciones"       |

Scenario: El usuario consulta los Términos y condiciones
    Dado que un usuario desea consultar los Términos y condiciones
    Cuando el usuario accede al módulo de Términos y condiciones desde cualquier sección de la plataforma
    Entonces el sistema debe proporcionar una interfaz intuitiva que permita al usuario leer y entender fácilmente el contenido
    Y asegurar que esté disponible en todo momento y desde cualquier lugar dentro de la aplicación

Examples:
    | sección                 | interfaz                    |
    | "Cualquier sección"     | "Módulo de Términos y condiciones" |




Feature: HU036: Integración de un sistema de versiones para los Términos y condiciones

    Como administrador de la plataforma
    Quiero integrar un sistema de versiones para los Términos y condiciones
    Para poder gestionar y rastrear cambios históricos en el contenido legal y asegurarme de que los usuarios siempre tengan acceso a las versiones correctas y actualizadas.

Scenario: El administrador guarda una nueva versión de los Términos y condiciones
    Dado que el administrador ha actualizado los Términos y condiciones
    Cuando el administrador guarda una nueva versión del documento
    Entonces el sistema debe registrar la versión actual
    Y mantener un historial de versiones anteriores que puedan ser consultadas o restauradas si es necesario

Examples:
    | sección                  | acción                           |
    | "Módulo de Términos"    | "Guardar nueva versión"         |
    | "Historial de versiones" | "Consultar versiones anteriores" |

Scenario: El usuario revisa una versión anterior de los Términos y condiciones
    Dado que un usuario desea revisar los Términos y condiciones anteriores
    Cuando el usuario solicita ver una versión anterior desde el historial de versiones
    Entonces el sistema debe permitir al usuario acceder y leer esa versión específica
    Y garantizar que el acceso a la información histórica sea claro y accesible

Examples:
    | sección                 | interfaz                    |
    | "Historial de versiones" | "Ver versión anterior"     |




Feature: HU037: Garantizar que los Términos y condiciones sean fáciles de entender para todos los usuarios

    Como usuario de la plataforma
    Quiero que los Términos y condiciones sean redactados en un lenguaje claro y comprensible
    Para asegurarme de que puedo entender fácilmente las políticas y reglas de uso sin confusión.

Scenario: Redacción clara y accesible de Términos y condiciones
    Dado que los Términos y condiciones están disponibles en la plataforma
    Cuando un usuario accede al documento
    Entonces el sistema debe presentar el contenido en un formato que utilice un lenguaje simple y directo
    Y evitar jerga legal compleja
    Y asegurar que sea comprensible para un público general

Examples:
    | sección                   | formato                             |
    | "Módulo de Términos"     | "Lenguaje simple y directo"         |

Scenario: Opciones de asistencia para entender Términos y condiciones
    Dado que un usuario tiene dificultades para entender los Términos y condiciones
    Cuando el usuario busca ayuda
    Entonces el sistema debe proporcionar opciones de asistencia
    Como resúmenes de los puntos clave, glosarios de términos legales y enlaces a recursos adicionales
    Para facilitar la comprensión del contenido

Examples:
    | sección                   | opción de asistencia                |
    | "Módulo de Términos"     | "Resúmenes de puntos clave"        |
    | "Módulo de Términos"     | "Glosario de términos legales"     |




Feature: HU038: Fácil navegación en el diseño de la Landing Page

    Como visitante de la plataforma
    Quiero que el diseño de la landing page facilite la navegación
    Para poder encontrar fácilmente la información que busco y realizar las acciones deseadas sin confusión o dificultad.

Scenario: Navegación intuitiva y accesible
    Dado que un visitante está navegando por la landing page
    Cuando el visitante interactúa con la página
    Entonces la navegación debe ser intuitiva
    Y debe tener menús claramente etiquetados
    Y enlaces visibles a secciones clave
    Y un diseño que guíe al usuario hacia las áreas importantes sin esfuerzo

Examples:
    | sección            | elemento                    |
    | "Landing Page"     | "Menú principal"            |
    | "Landing Page"     | "Enlaces a secciones clave" |

Scenario: Funcionalidad de búsqueda y filtros
    Dado que un visitante desea encontrar información específica en la landing page
    Cuando el visitante utiliza la función de búsqueda o los filtros
    Entonces el sistema debe proporcionar resultados relevantes de manera rápida y precisa
    Y la interfaz de búsqueda y filtros debe ser fácil de usar
    Y debe mejorar la experiencia de navegación en la página

Examples:
    | sección            | funcionalidad              |
    | "Landing Page"     | "Función de búsqueda"      |
    | "Landing Page"     | "Filtros de búsqueda"      |




Feature: HU039: Deploy a GitHub Pages

    Como desarrollador
    Quiero desplegar mi landing page en GitHub Pages
    Para que la página sea accesible públicamente a través de un dominio fácil de recordar y gestionar directamente desde mi repositorio de GitHub.

Scenario: Configuración del repositorio para GitHub Pages
    Dado que tengo un repositorio de GitHub con los archivos de la landing page
    Cuando configuro GitHub Pages desde la sección de configuración del repositorio
    Entonces el sitio debe desplegarse correctamente utilizando la rama seleccionada (por ejemplo, `main` o `gh-pages`)
    Y debe ser accesible a través de la URL proporcionada por GitHub Pages

Examples:
    | repositorio        | rama seleccionada           |
    | "upc-pre-202402-cc-238-WV61-WeHaveAnIdea-landingPage"  | "main"                     |

Scenario: Verificación de la funcionalidad del sitio desplegado
    Dado que la landing page ha sido desplegada en GitHub Pages
    Cuando accedo a la URL del sitio
    Entonces la página debe cargar completamente
    Y debe mostrar todo el contenido y funcionalidades sin errores
    Y debe ser accesible desde diferentes navegadores y dispositivos para asegurar que la experiencia de usuario sea consistente

Examples:
    | URL del sitio                       | navegador            |
    | "https://miusuario.github.io/upc-pre-202402-cc-238-WV61-WeHaveAnIdea-landingPage" | "Chrome"             |
    | "https://miusuario.github.io/upc-pre-202402-cc-238-WV61-WeHaveAnIdea-landingPage" | "Firefox"            |
    | "https://miusuario.github.io/upc-pre-202402-cc-238-WV61-WeHaveAnIdea-landingPage" | "Safari"             |




Feature: HU040: Integración de un sistema de seguimiento de métricas

    Como desarrollador
    Quiero integrar un sistema de seguimiento de métricas en la landing page
    Para poder monitorear el rendimiento del sitio, analizar el comportamiento de los visitantes y obtener datos valiosos para la mejora continua.

Scenario: Implementación de herramientas de análisis
    Dado que la landing page está en funcionamiento
    Cuando integro herramientas de análisis como Google Analytics o similares
    Entonces el sistema debe capturar y reportar métricas clave como el número de visitantes, la tasa de rebote, el tiempo de permanencia en la página y la tasa de conversión
    Y debe permitir el acceso a estos datos a través del panel de control de la herramienta de análisis

Examples:
    | herramienta           | métrica a capturar                  |
    | "Google Analytics"    | "número de visitantes"              |
    | "Google Analytics"    | "tasa de rebote"                    |
    | "Google Analytics"    | "tiempo de permanencia en la página"|
    | "Google Analytics"    | "tasa de conversión"                |

Scenario: Visualización de datos y generación de informes
    Dado que los datos de métricas se están recopilando
    Cuando accedo al panel de análisis
    Entonces debo poder visualizar gráficos y reportes detallados sobre el rendimiento del sitio
    Y deben incluir estadísticas diarias, semanales y mensuales
    Para evaluar el impacto de las estrategias implementadas y realizar ajustes basados en datos

Examples:
    | periodo     | tipo de dato         |
    | "diario"    | "visitas"           |
    | "semanal"   | "tasa de conversión" |
    | "mensual"   | "tiempo promedio en la página" |
