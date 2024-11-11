Feature: US019: Acceso a plantillas básicas y avanzadas para la creación de Roadmaps

    Como usuario que desea mejorar su planificación profesional con el uso de la aplicación de Roademics
    Quiero tener acceso a plantillas predeterminadas y avanzadas para mis hojas de rutas y roadmaps
    Para facilitar el desarrollo y diseño de los roadmaps de forma profesional, detallada y personalizada, que se ajuste a mis necesidades y objetivos específicos.

Scenario: Acceso a plantillas básicas

    Dado que un usuario está en la sección de creación de un roadmap,
    Cuando el usuario selecciona la opción de plantillas básicas,
    Entonces el sistema debe mostrar una lista de plantillas predeterminadas que pueden ser utilizadas para crear el roadmap de manera rápida y estructurada.

Scenario: Acceso a plantillas avanzadas

    Dado que un usuario está en la sección de creación de un roadmap,
    Cuando el usuario selecciona la opción de plantillas avanzadas,
    Entonces el sistema debe mostrar una lista de plantillas más detalladas que permitan una personalización más profunda de los roadmaps, incluyendo pasos adicionales, dependencias y ajustes específicos.

Scenario: Personalización de plantillas

    Dado que un usuario ha seleccionado una plantilla avanzada,
    Cuando el usuario personaliza el roadmap con nuevos pasos, relaciones y atributos específicos,
    Entonces el sistema debe permitir la modificación de la plantilla para adaptarla a los objetivos del usuario, manteniendo la estructura y formato iniciales.

Scenario: Guardar roadmap personalizado

    Dado que un usuario ha creado y personalizado un roadmap utilizando una plantilla avanzada,
    Cuando el usuario guarda el roadmap,
    Entonces el sistema debe almacenar el roadmap de forma eficiente, asegurando que todas las personalizaciones realizadas en la plantilla se persistan correctamente para futuras ediciones.

Examples:
    | Plantilla     | Tipo de Plantilla   | Personalización Permitida                |
    | "Básica 1"    | Básica              | Personalización limitada a pasos generales |
    | "Avanzada 1"  | Avanzada            | Permite agregar pasos, dependencias y fechas específicas |




Feature: US021: Acceso a herramientas de edición avanzada de roadmaps para usuarios premium

    Como usuario con suscripción Premium en la plataforma Roademics
    Quiero tener acceso a herramientas de edición avanzada para la modificación de mis roadmaps profesionales
    Para aprovechar funcionalidades adicionales que me permitan optimizar la planificación y gestión de mis metas, brindándome mayor flexibilidad y precisión en la creación y ajuste de mis objetivos.

Scenario: Acceso a herramientas de edición avanzada

    Dado que un usuario tiene una suscripción Premium activa,
    Cuando el usuario accede a la sección de creación o edición de un roadmap,
    Entonces el sistema debe habilitar herramientas adicionales de edición avanzada, como la adición de dependencias complejas, la modificación de relaciones entre nodos, y la personalización de atributos avanzados.

Scenario: Personalización avanzada de nodos y aristas

    Dado que un usuario tiene acceso a herramientas de edición avanzada,
    Cuando el usuario personaliza un nodo o arista en un roadmap,
    Entonces el sistema debe permitir al usuario ajustar atributos avanzados de nodos, como la asignación de recursos, la prioridad de tareas, y la vinculación de sub-tareas o dependencias entre nodos de forma más detallada.

Scenario: Integración con otras funcionalidades de la plataforma

    Dado que un usuario está editando un roadmap con herramientas avanzadas,
    Cuando el usuario vincula un nodo a un objetivo externo o una herramienta de análisis de rendimiento,
    Entonces el sistema debe permitir la integración de datos externos, como objetivos de carrera o métricas de desempeño, para una mayor optimización y seguimiento del roadmap.

Scenario: Guardar cambios en el roadmap con edición avanzada

    Dado que un usuario ha realizado cambios en un roadmap utilizando herramientas de edición avanzada,
    Cuando el usuario guarda el roadmap,
    Entonces el sistema debe almacenar los cambios realizados de manera eficiente, asegurando que los nodos, aristas y personalizaciones avanzadas se persistan correctamente para futuras ediciones y análisis.

Examples:
    | Herramienta de Edición         | Funcionalidad Permitida              | Usuario Premium |
    | "Edición de Dependencias"      | Modificar relaciones complejas entre nodos | Sí             |
    | "Asignación de Recursos"       | Asignar recursos específicos a nodos  | Sí             |
    | "Vinculación con Sub-tareas"   | Añadir sub-tareas detalladas a nodos  | Sí             |




Feature: US018: Menú de almacenamiento de Roadmaps de un usuario

    Como usuario que busca optimizar su trayectoria profesional con la aplicación de Roademics,
    Quiero que la plataforma tenga un pequeño menú o dashboard donde se muestren todos los roadmaps u hojas de ruta que he generado en la aplicación,
    Para tener un acceso directo a cada uno de mis roadmaps y poder almacenarlos de forma más sencilla, cómoda y organizada.

Scenario: Visualización del menú de almacenamiento de roadmaps

    Dado que un usuario está en la página principal de la aplicación Roademics,
    Cuando el usuario accede a la sección de roadmaps,
    Entonces el sistema debe mostrar un menú o dashboard con una lista de todos los roadmaps generados por el usuario, incluyendo información como el nombre del roadmap y la fecha de creación.

Scenario: Acceso directo a un roadmap desde el menú

    Dado que un usuario está viendo la lista de roadmaps en el menú de almacenamiento,
    Cuando el usuario selecciona uno de los roadmaps de la lista,
    Entonces el sistema debe redirigir al usuario a la vista detallada del roadmap seleccionado para su edición o visualización.

Scenario: Almacenamiento de nuevos roadmaps

    Dado que un usuario ha creado un nuevo roadmap en la plataforma,
    Cuando el usuario guarda el roadmap,
    Entonces el sistema debe agregar automáticamente el roadmap a la lista del menú de almacenamiento, asegurando que sea accesible para futuras ediciones o consultas.

Scenario: Organización de roadmaps en el menú

    Dado que un usuario tiene múltiples roadmaps almacenados,
    Cuando el usuario accede al menú de almacenamiento,
    Entonces el sistema debe permitir la organización de los roadmaps, proporcionando opciones para ordenar por fecha de creación, nombre, o cualquier otro criterio relevante.

Examples:
    | Roadmap      | Fecha de Creación     | Estado            |
    | "Roadmap 1"  | "2024-11-10"          | "Activo"          |
    | "Roadmap 2"  | "2024-11-09"          | "Completado"      |
    | "Roadmap 3"  | "2024-10-20"          | "En Progreso"     |




Feature: US024: Recibir análisis avanzados sobre mi propio roadmap (Usuario Premium)

    Como usuario Premium de la plataforma Roademics,
    Quiero recibir análisis avanzados y detallados sobre el progreso y la estructura de mi roadmap profesional,
    Para obtener información valiosa que me permita identificar áreas de mejora, optimizar mi planificación, y tomar decisiones informadas que me ayuden a alcanzar mis objetivos profesionales de manera más efectiva y eficiente.

Scenario: Acceso a análisis avanzados del roadmap

    Dado que un usuario Premium ha creado un roadmap y ha alcanzado ciertos hitos,
    Cuando el usuario accede a su roadmap desde su perfil,
    Entonces el sistema debe ofrecer un análisis avanzado que incluya métricas sobre el progreso, las relaciones entre los nodos, y la efectividad de los pasos tomados hasta el momento.

Scenario: Análisis de áreas de mejora

    Dado que un usuario Premium está visualizando el análisis de su roadmap,
    Cuando el sistema realiza un análisis de los datos del roadmap,
    Entonces el sistema debe identificar áreas de mejora, destacando los nodos que están retrasados, las relaciones que podrían mejorarse y los pasos que no han sido completados a tiempo.

Scenario: Visualización de tendencias y proyecciones futuras

    Dado que un usuario Premium está revisando los análisis avanzados de su roadmap,
    Cuando se presentan las métricas y los análisis del progreso,
    Entonces el sistema debe mostrar proyecciones sobre los pasos futuros basados en el rendimiento actual y tendencias pasadas, proporcionando estimaciones sobre el tiempo que se podría necesitar para completar el roadmap.

Scenario: Recomendaciones personalizadas para optimización

    Dado que un usuario Premium ha recibido el análisis de su roadmap,
    Cuando el sistema evalúa el progreso y los patrones del usuario,
    Entonces el sistema debe ofrecer recomendaciones personalizadas sobre cómo mejorar la planificación, tales como ajustar fechas límite, modificar prioridades de nodos, o reestructurar relaciones entre los pasos.

Examples:
    | Roadmap      | Análisis de Progreso        | Áreas de Mejora          | Recomendaciones           |
    | "Roadmap 1"  | "80% completado, 2 tareas pendientes" | "Revisar tareas retrasadas" | "Reajustar fechas de los pasos 3 y 4" |
    | "Roadmap 2"  | "50% completado, 1 tarea pendiente" | "Mejorar relación entre paso 4 y paso 5" | "Revisar prioridades en los próximos pasos" |
    | "Roadmap 3"  | "100% completado"            | "Ninguna"               | "Considerar agregar más pasos para nuevos objetivos" |




Feature: US002: Registro en la plataforma mediante una cuenta externa

    Como un nuevo usuario en la aplicación de Roademics,
    Quiero ser capaz de registrarme en la plataforma creando una cuenta personal a través del uso de las credenciales que tengo guardadas en otra cuenta externa, como una cuenta de un navegador o de una red social,
    Para obtener un acceso directo y rápido a las funcionalidades de la aplicación sin tener que completar manualmente el formulario de registro.

Scenario: Registro a través de una cuenta externa (Red Social)

    Dado que un nuevo usuario quiere registrarse en Roademics,
    Cuando el usuario elige registrarse utilizando una cuenta externa (por ejemplo, Facebook, Google),
    Entonces el sistema debe permitir que el usuario se registre en la plataforma usando las credenciales de esa cuenta externa, y crear una cuenta en Roademics vinculada a esa cuenta externa.

Scenario: Registro a través de una cuenta externa (Navegador)

    Dado que un nuevo usuario quiere registrarse en Roademics,
    Cuando el usuario elige registrarse mediante su cuenta de navegador (como Firefox o Chrome),
    Entonces el sistema debe permitir que el usuario se registre utilizando las credenciales guardadas en el navegador, y crear una cuenta en Roademics vinculada a esa cuenta de navegador.

Scenario: Validación y recuperación de datos desde la cuenta externa

    Dado que un usuario ha elegido registrarse utilizando una cuenta externa,
    Cuando el sistema recupera los datos del usuario desde la cuenta externa,
    Entonces el sistema debe verificar que los datos recuperados son válidos y completar el registro en Roademics, solicitando los datos faltantes si es necesario.

Scenario: Acceso rápido a la plataforma

    Dado que un usuario ha completado su registro mediante una cuenta externa,
    Cuando el usuario inicia sesión en Roademics,
    Entonces el sistema debe permitir el acceso directo a la plataforma sin la necesidad de completar un formulario de inicio de sesión, utilizando las credenciales de la cuenta externa.

Examples:
    | Cuenta Externa | Tipo de Cuenta           | Acción Realizada     |
    | "Google"       | "Red Social"             | "Registro exitoso"    |
    | "Facebook"     | "Red Social"             | "Registro exitoso"    |
    | "Chrome"       | "Navegador"              | "Registro exitoso"    |




Feature: US006: Inicio de sesión mediante cuentas externas

    Como usuario de la aplicación Roademics que prefiere opciones rápidas de acceso,
    Quiero poder iniciar sesión utilizando otras cuentas externas (Google, Facebook, LinkedIn),
    Para poder acceder a la plataforma sin necesidad de crear una nueva cuenta o recordar diferentes credenciales en cada ocasión.

Scenario: Inicio de sesión con cuenta de Google

    Dado que un usuario está en la pantalla de inicio de sesión de la aplicación Roademics,
    Cuando el usuario selecciona la opción de "Iniciar sesión con Google",
    Entonces el sistema debe redirigir al usuario a la página de inicio de sesión de Google para autenticar sus credenciales.

Scenario: Inicio de sesión con cuenta de Facebook

    Dado que un usuario está en la pantalla de inicio de sesión de la aplicación Roademics,
    Cuando el usuario selecciona la opción de "Iniciar sesión con Facebook",
    Entonces el sistema debe redirigir al usuario a la página de inicio de sesión de Facebook para autenticar sus credenciales.

Scenario: Inicio de sesión con cuenta de LinkedIn

    Dado que un usuario está en la pantalla de inicio de sesión de la aplicación Roademics,
    Cuando el usuario selecciona la opción de "Iniciar sesión con LinkedIn",
    Entonces el sistema debe redirigir al usuario a la página de inicio de sesión de LinkedIn para autenticar sus credenciales.

Scenario: Redirección después de iniciar sesión correctamente

    Dado que un usuario ha iniciado sesión correctamente a través de una cuenta externa,
    Cuando el inicio de sesión es exitoso,
    Entonces el sistema debe redirigir al usuario a la página principal de la plataforma Roademics, permitiéndole acceder a sus roadmaps y funcionalidades.

Scenario: Manejo de error en inicio de sesión con cuentas externas

    Dado que un usuario intenta iniciar sesión con una cuenta externa (Google, Facebook, LinkedIn),
    Cuando las credenciales no son válidas o ocurre un error durante el proceso de inicio de sesión,
    Entonces el sistema debe mostrar un mensaje de error indicando que no se pudo completar el inicio de sesión y ofrecer opciones para reintentar o usar otro método.

Examples:
    | Cuenta Externa | Acción del Usuario                  | Resultado Esperado                                        |
    | "Google"       | "Seleccionar 'Iniciar sesión con Google'" | "Redirigir a la página de inicio de sesión de Google"     |
    | "Facebook"     | "Seleccionar 'Iniciar sesión con Facebook'" | "Redirigir a la página de inicio de sesión de Facebook"   |
    | "LinkedIn"     | "Seleccionar 'Iniciar sesión con LinkedIn'" | "Redirigir a la página de inicio de sesión de LinkedIn"   |



Feature: US014: Gestión de notificaciones de usuario

    Como usuario registrado en la aplicación de Roademics,
    Quiero poder gestionar de forma adecuada cómo se controlan las notificaciones en mi cuenta y perfil dentro de Roademics,
    Para estar informado sobre los cambios que son de mi interés, mientras selecciono qué otros eventos no requieren que reciba notificaciones, brindándome control total sobre las alertas que recibo.

Scenario: Visualización de la configuración de notificaciones

    Dado que un usuario está en su perfil dentro de la aplicación Roademics,
    Cuando el usuario accede a la sección de configuraciones de notificaciones,
    Entonces el sistema debe mostrar una lista de todas las notificaciones disponibles, con opciones para activar o desactivar cada tipo de notificación.

Scenario: Activación de notificaciones

    Dado que un usuario quiere recibir notificaciones sobre eventos específicos en Roademics,
    Cuando el usuario activa una opción de notificación,
    Entonces el sistema debe enviar alertas al usuario cada vez que ocurra el evento relacionado, de acuerdo con sus preferencias seleccionadas.

Scenario: Desactivación de notificaciones

    Dado que un usuario no desea recibir notificaciones sobre ciertos eventos en Roademics,
    Cuando el usuario desactiva una opción de notificación,
    Entonces el sistema debe dejar de enviar alertas sobre ese tipo de evento.

Scenario: Notificación de cambios importantes en el roadmap

    Dado que un usuario tiene un roadmap activo en Roademics,
    Cuando se realice un cambio importante en su roadmap (por ejemplo, actualización de un paso o fecha límite),
    Entonces el sistema debe enviar una notificación al usuario informándole sobre el cambio, si la opción de notificación está activada para ese tipo de evento.

Scenario: Configuración de notificaciones personalizadas

    Dado que un usuario quiere personalizar las notificaciones según sus preferencias,
    Cuando el usuario configura sus notificaciones para diferentes eventos (por ejemplo, cambios en roadmaps, mensajes de otros usuarios, etc.),
    Entonces el sistema debe permitirle elegir qué eventos desea recibir, y qué eventos desea omitir, asegurando que las alertas se ajusten a sus preferencias.

Examples:
    | Tipo de Notificación         | Estado de Notificación | Descripción                             |
    | "Cambio en roadmap"          | Activada               | Notificación sobre cambios en el roadmap |
    | "Nuevo mensaje de usuario"   | Desactivada            | No recibir notificación por mensajes    |
    | "Recordatorio de fecha límite" | Activada               | Notificación sobre fechas límite de tareas |




Feature: US015: Notificaciones personalizadas para el usuario

    Como usuario registrado en la aplicación de Roademics,
    Quiero recibir notificaciones sobre actualizaciones importantes y eventos relevantes,
    Para estar al tanto de cualquier cambio o evento que ocurra en mi perfil o red de conexiones, asegurando así una experiencia de usuario más informada y proactiva.

Scenario: Recepción de notificaciones por actualizaciones en el perfil

    Dado que un usuario ha actualizado su perfil en la aplicación Roademics,
    Cuando se guarda la actualización del perfil,
    Entonces el sistema debe enviar una notificación al usuario informándole sobre los cambios realizados en su perfil.

Scenario: Recepción de notificaciones sobre nuevas conexiones

    Dado que un usuario ha establecido una nueva conexión en la red profesional de Roademics,
    Cuando se completa la conexión entre usuarios,
    Entonces el sistema debe enviar una notificación al usuario informándole sobre la nueva conexión establecida.

Scenario: Configuración de preferencias de notificaciones

    Dado que un usuario desea personalizar las notificaciones que recibe,
    Cuando el usuario accede a la sección de preferencias de notificaciones,
    Entonces el sistema debe permitir al usuario activar o desactivar diferentes tipos de notificaciones (actualizaciones de perfil, nuevas conexiones, eventos, etc.).

Scenario: Notificación sobre eventos importantes

    Dado que un usuario está inscrito en un evento relevante dentro de la plataforma Roademics,
    Cuando se acerca la fecha del evento,
    Entonces el sistema debe enviar una notificación recordando al usuario la fecha y hora del evento.

Examples:
    | Tipo de Notificación       | Descripción                            | Estado de Envío     |
    | "Actualización de perfil"  | "Notificación de cambios en perfil"     | "Enviada"           |
    | "Nueva conexión"           | "Notificación sobre una nueva conexión" | "Enviada"           |
    | "Recordatorio de evento"   | "Notificación sobre un evento próximo"  | "Pendiente"         |




Feature: US027: Recibir notificación si un nodo en mi grafo se vuelve obsoleto o ya no está disponible

    Como usuario registrado en la plataforma Roademics,
    Quiero recibir una notificación si un nodo en mi grafo se vuelve obsoleto o ya no está disponible,
    Para estar al tanto de cualquier cambio que pueda afectar la estructura y el progreso de mi roadmap,
    Y tomar las medidas necesarias para actualizar o ajustar mi plan según sea necesario.

Scenario: Notificación de nodo obsoleto

    Dado que un nodo en el grafo de un roadmap se vuelve obsoleto debido a cambios en la plataforma o actualizaciones del sistema,
    Cuando el nodo es marcado como obsoleto,
    Entonces el sistema debe enviar una notificación al usuario para informarle que el nodo ha quedado obsoleto, incluyendo detalles sobre el motivo del cambio y posibles acciones recomendadas.

Scenario: Notificación de nodo no disponible

    Dado que un nodo en el grafo de un roadmap ya no está disponible debido a una eliminación o desactivación en la plataforma,
    Cuando el nodo es removido o desactivado,
    Entonces el sistema debe enviar una notificación al usuario informándole que el nodo ya no está disponible, junto con opciones para reemplazarlo o ajustar el roadmap.

Scenario: Visualización de estado de obsolescencia de nodos en el grafo

    Dado que un nodo en el grafo ha sido marcado como obsoleto o no disponible,
    Cuando el usuario accede a su roadmap en la plataforma,
    Entonces el sistema debe mostrar el nodo con una notificación visual destacando su estado (obsoleto o no disponible) y proporcionando una opción para actualizar o eliminar el nodo afectado.

Scenario: Actualización del grafo tras notificación

    Dado que un usuario ha recibido una notificación de un nodo obsoleto o no disponible,
    Cuando el usuario realiza cambios en su roadmap para ajustarlo según la notificación,
    Entonces el sistema debe permitir la modificación o eliminación del nodo afectado y reflejar los cambios en la estructura del grafo de manera eficiente.

Examples:
    | Nodo         | Estado del Nodo    | Notificación                                         |
    | "Paso 1"     | "Obsoleto"         | "Este paso ha quedado obsoleto. Se recomienda revisar las dependencias." |
    | "Paso 2"     | "No disponible"    | "Este paso ya no está disponible. Puede ser eliminado o reemplazado."     |




Feature: US025: Poder exportar mis roadmaps en formato como PDF o PNG

    Como usuario premium de la plataforma Roademics,
    Quiero poder exportar mis roadmaps generados y editados mediante formatos de archivo como PDF o PNG,
    Para disponer de una copia accesible, portable y presentable de mis planes profesionales, que pueda ser utilizada para compartir, almacenar o imprimir con facilidad y conservar la integridad del diseño visual y la información estructurada en la plataforma.

Scenario: Exportar un roadmap en formato PDF

    Dado que un usuario tiene un roadmap generado y editado en Roademics,
    Cuando el usuario selecciona la opción de exportar a PDF,
    Entonces el sistema debe generar un archivo PDF que contenga el roadmap con todos sus pasos, relaciones, y atributos, manteniendo la estructura visual y la integridad de la información.

Scenario: Exportar un roadmap en formato PNG

    Dado que un usuario tiene un roadmap generado y editado en Roademics,
    Cuando el usuario selecciona la opción de exportar a PNG,
    Entonces el sistema debe generar un archivo PNG que contenga una representación visual del roadmap, manteniendo la calidad gráfica y la legibilidad del diseño.

Scenario: Confirmación de la exportación exitosa

    Dado que un usuario ha seleccionado el formato de exportación para su roadmap,
    Cuando la exportación se ha completado con éxito,
    Entonces el sistema debe mostrar un mensaje de confirmación al usuario, indicando que el archivo ha sido exportado correctamente y está listo para ser descargado.

Scenario: Fallo en la exportación del roadmap

    Dado que un usuario ha seleccionado la opción de exportar un roadmap,
    Cuando ocurre un error durante la exportación,
    Entonces el sistema debe mostrar un mensaje de error al usuario, indicando que no fue posible completar la exportación y sugiriendo que intente nuevamente.

Examples:
    | Formato de Exportación | Nombre del Roadmap   | Estado de Exportación |
    | PDF                    | "Roadmap Profesional" | "Exportado Correctamente" |
    | PNG                    | "Plan de Carrera"     | "Error en la Exportación" |




Feature: US037: Poder revisar el historial de inicios de sesión recientes

    Como usuario de la plataforma,
    Quiero poder revisar el historial de inicios de sesión recientes,
    Para monitorear la actividad en mi cuenta y detectar cualquier acceso no autorizado o inusual.

Scenario: Visualización del historial de inicios de sesión recientes

    Dado que un usuario ha iniciado sesión en la plataforma,
    Cuando el usuario accede a la sección de "Historial de inicios de sesión" en la configuración de la cuenta,
    Entonces el sistema debe mostrar un historial con la lista de inicios de sesión recientes, incluyendo detalles como fecha, hora, IP y dispositivo desde el cual se realizó el inicio de sesión.

Scenario: Identificación de accesos inusuales

    Dado que un usuario está visualizando su historial de inicios de sesión,
    Cuando el sistema detecta un inicio de sesión desde una ubicación geográfica o dispositivo inusual,
    Entonces el sistema debe resaltar o marcar ese inicio de sesión como sospechoso para que el usuario lo revise más detenidamente.

Scenario: Acceso al historial completo de inicios de sesión

    Dado que un usuario desea consultar su historial de inicios de sesión más antiguo,
    Cuando el usuario selecciona la opción de "Mostrar más" o "Historial completo",
    Entonces el sistema debe cargar y mostrar más registros de inicios de sesión previos, permitiendo al usuario revisar todo su historial de manera continua.

Scenario: Seguridad del historial de inicios de sesión

    Dado que un usuario accede a su historial de inicios de sesión,
    Cuando el usuario visualiza el historial,
    Entonces el sistema debe asegurarse de que la información sea visible solo para el usuario autenticado, protegiendo la privacidad y seguridad de los datos.

Examples:
    | Fecha       | Hora      | IP Dirección      | Dispositivo        | Ubicación         | Estado     |
    | "2024-11-09" | "08:30 AM" | "192.168.1.1"     | "PC de oficina"    | "Lima, Perú"      | "Normal"   |
    | "2024-11-08" | "10:00 PM" | "203.0.113.45"    | "Móvil Android"    | "Arequipa, Perú"  | "Inusual"  |
    | "2024-11-07" | "02:15 PM" | "198.51.100.22"   | "Laptop"           | "Cusco, Perú"     | "Normal"   |





Feature: US010: Gestión de preferencias de visibilidad del perfil

    Como usuario registrado en la aplicación de Roademics,
    Quiero poder configurar la visibilidad de mi perfil para que sea público o privado o que solo un grupo de usuarios puedan revisarlo,
    Para tener control sobre quién puede ver mi información personal y mis actividades dentro de la plataforma.

Scenario: Configuración de visibilidad del perfil a público

    Dado que un usuario ha accedido a la configuración de su perfil en Roademics,
    Cuando el usuario selecciona la opción "Público" para la visibilidad de su perfil,
    Entonces el sistema debe actualizar la visibilidad del perfil para que sea accesible a todos los usuarios de la plataforma.

Scenario: Configuración de visibilidad del perfil a privado

    Dado que un usuario ha accedido a la configuración de su perfil en Roademics,
    Cuando el usuario selecciona la opción "Privado" para la visibilidad de su perfil,
    Entonces el sistema debe actualizar la visibilidad del perfil para que solo el usuario mismo pueda verlo.

Scenario: Configuración de visibilidad del perfil a grupo específico

    Dado que un usuario ha accedido a la configuración de su perfil en Roademics,
    Cuando el usuario selecciona la opción "Grupo específico" para la visibilidad de su perfil,
    Entonces el sistema debe permitir al usuario seleccionar un grupo de usuarios con acceso limitado a la información del perfil, y solo esos usuarios podrán visualizarlo.

Scenario: Verificación de visibilidad del perfil

    Dado que un usuario ha configurado la visibilidad de su perfil,
    Cuando otro usuario intenta acceder al perfil del primero,
    Entonces el sistema debe verificar la configuración de visibilidad y mostrar el perfil solo si el usuario tiene acceso según los criterios establecidos (público, privado, grupo específico).

Examples:
    | Usuario       | Visibilidad del Perfil   | Acceso Permitido         |
    | "Usuario A"   | "Público"                | "Todos los usuarios"     |
    | "Usuario B"   | "Privado"                | "Solo el usuario"        |
    | "Usuario C"   | "Grupo específico"       | "Grupo X de usuarios"    |
