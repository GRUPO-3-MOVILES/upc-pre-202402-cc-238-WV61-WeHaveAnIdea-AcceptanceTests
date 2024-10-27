Feature: US007 - Agregar una foto o imagen en el perfil de usuario

    Como un usuario registrado en la aplicación de Roademics
    Quiero ser capaz de agregar una imagen o foto a mi perfil de usuario en la plataforma, siguiendo todos los formatos más adecuados
    Para personalizar mi cuenta y que otros usuarios puedan reconocerme fácilmente al interactuar conmigo

    Scenario: Agregar imagen de perfil exitosamente

        Dado que el usuario registrado ha accedido a su perfil y selecciona la opción de "Agregar imagen de perfil"
        Y ha seleccionado una imagen válida en formato permitido (JPEG, PNG) que no excede el tamaño máximo permitido (5MB)
        Cuando el usuario presiona el botón de "Guardar" después de seleccionar la imagen
        Entonces el sistema debe cargar la imagen, almacenarla de forma segura y mostrar un mensaje de confirmación de actualización exitosa del perfil dentro de los próximos 3 segundos, permitiéndole al usuario ver la imagen en su perfil inmediatamente

    Scenario: Formato de imagen no permitido

        Dado que el usuario ha accedido a la opción de "Agregar imagen de perfil" y selecciona una imagen
        Cuando intenta subir una imagen en un formato no permitido (por ejemplo, GIF)
        Entonces el sistema debe bloquear la carga de la imagen y mostrar un mensaje de error en los próximos 2 segundos que informe al usuario sobre los formatos permitidos (JPEG, PNG) y sugiera seleccionar un archivo en el formato correcto

    Scenario: Imagen supera el tamaño permitido

        Dado que el usuario ha accedido a la opción de "Agregar imagen de perfil"
        Cuando intenta subir una imagen que supera el límite de 5MB
        Entonces el sistema debe mostrar un mensaje de advertencia en los próximos 2 segundos que indique que la imagen excede el tamaño permitido, impidiendo la carga hasta que se seleccione una imagen de menor tamaño

    Examples:
        | sección "Navegador Web"            |
        | opción "Editar Perfil"             |
        | Interfaz de Perfil                 | Apartado de "imagen de perfil"   |





Feature: US008 - Gestión de sección de biografía

    Como usuario registrado en la aplicación de Roademics
    Quiero poder agregar, editar y eliminar mi biografía en la plataforma
    Para proporcionar información adicional sobre mí y personalizar mi perfil, reflejando datos relevantes para mi red de contactos

    Scenario: Agregar biografía exitosamente

        Dado que el usuario ha accedido a su perfil y selecciona la opción de "Agregar biografía"
        Y ha ingresado un texto válido en el campo de biografía (hasta 500 caracteres)
        Cuando el usuario presiona el botón de "Guardar"
        Entonces el sistema debe almacenar la biografía ingresada y mostrar un mensaje de confirmación de actualización exitosa en los próximos 2 segundos, permitiendo que el usuario vea el texto guardado en su perfil

    Scenario: Editar biografía

        Dado que el usuario ha accedido a la sección de biografía en su perfil
        Y ya cuenta con una biografía guardada previamente
        Cuando edita el contenido de la biografía y presiona "Guardar"
        Entonces el sistema debe actualizar la biografía con el nuevo contenido y mostrar un mensaje de confirmación de edición exitosa en los próximos 2 segundos

    Scenario: Eliminar biografía

        Dado que el usuario ha accedido a la sección de biografía en su perfil y cuenta con una biografía previamente guardada
        Cuando selecciona la opción de "Eliminar biografía" y confirma la acción
        Entonces el sistema debe eliminar el contenido de la biografía y mostrar un mensaje de confirmación de eliminación exitosa en los próximos 2 segundos, dejando la sección de biografía vacía en el perfil del usuario

    Examples:
        | sección "Navegador Web"      |
        | opción "Editar Perfil"       |
        | Interfaz de Perfil           | Apartado de "biografía"           |





Feature: US011 Actualización de información personal
  Como usuario registrado en la aplicación de Roademics,
  Quiero poder actualizar mi información personal como nombres, apellidos, país y nacionalidad, y detalles de contacto en la plataforma,
  Para mantener mi perfil actualizado y asegurarme de que otros usuarios puedan contactar conmigo de manera adecuada.

Scenario: Actualización de nombres y apellidos
    Dado que soy un usuario registrado en Roademics,
    Cuando actualizo mis nombres y apellidos en el perfil,
    Entonces el sistema debe reflejar estos cambios y mostrar la información actualizada en mi perfil.

Scenario: Actualización de detalles de contacto
    Dado que soy un usuario registrado en Roademics,
    Cuando modifico los detalles de contacto en mi perfil,
    Entonces el sistema debe almacenar y reflejar estos cambios para facilitar la comunicación.




Feature: US012 Eliminación de una cuenta de usuario
  Como usuario registrado en la aplicación de Roademics,
  Quiero ser capaz de eliminar mi cuenta de la plataforma una vez me encuentre autenticado en mi perfil,
  Para eliminar todos los datos personales asociados si ya no deseo utilizar el servicio de manera segura y permanente.

Scenario: Eliminación de cuenta tras autenticación
    Dado que el usuario está autenticado en su cuenta,
    Cuando selecciona la opción de eliminar cuenta,
    Entonces el sistema debe eliminar de forma segura todos sus datos personales de la plataforma.

Scenario: Confirmación de eliminación de cuenta
    Dado que el usuario desea eliminar su cuenta,
    Cuando confirma la acción de eliminación,
    Entonces el sistema debe pedir una última confirmación antes de proceder con la eliminación permanente.





Feature: US016 Creación de roadmap académico básico
Como usuario de la aplicación de Roademics interesado en planificar mi trayectoria profesional con las funciones ofrecidas,
Quiero crear un roadmap académico básico en la plataforma,
Para visualizar y gestionar mi progreso académico, planificar mis cursos y establecer metas profesionales de manera eficiente y estructurada.

Scenario: Creación de roadmap básico inicial
    Dado que el usuario accede a la sección de creación de roadmaps,
    Cuando selecciona "roadmap básico",
    Entonces el sistema debe crear un roadmap con secciones básicas para completar.

Scenario: Personalización de roadmap básico
    Dado que el usuario ha creado un roadmap básico,
    Cuando añade cursos y objetivos,
    Entonces el sistema debe guardar estas modificaciones para una visualización clara del progreso.




Feature: US017 Generación automática de roadmap con el uso de Inteligencia Artificial
Como usuario que busca optimizar su trayectoria profesional con la aplicación de Roademics,
Quiero que la plataforma sea capaz de generar un roadmap profesional utilizando las herramientas de inteligencia artificial que dispone,
Para recibir una recomendación personalizada y optimizada de cursos y objetivos que se alineen con mis metas profesionales y educativas.

Scenario: Generación automática con AI basada en perfil
    Dado que el usuario tiene un perfil en Roademics,
    Cuando elige la opción de generación de roadmap con AI,
    Entonces el sistema debe utilizar la información del perfil para crear un roadmap alineado con sus objetivos.

Scenario: Personalización del roadmap generado por AI
    Dado que el usuario ha recibido un roadmap generado automáticamente,
    Cuando decide editarlo,
    Entonces el sistema debe permitir la modificación de nodos y añadir nuevas etapas o metas personalizadas.




Feature: US018 Menú de almacenamiento de Roadmaps de un usuario
Como usuario que busca optimizar su trayectoria profesional con la aplicación de Roademics,
Quiero que la plataforma tenga un pequeño menú o dashboard donde se muestren todos los roadmaps u hojas de ruta que he generado en la aplicación,
Para tener un acceso directo a cada uno de mis roadmaps y poder almacenarlos de forma más sencilla, cómoda y organizada.

Scenario: Visualización de todos los roadmaps del usuario
    Dado que el usuario tiene varios roadmaps creados,
    Cuando accede al menú de almacenamiento,
    Entonces el sistema debe mostrar todos los roadmaps organizados para fácil acceso.

Scenario: Eliminación de un roadmap desde el menú
    Dado que el usuario está en el menú de almacenamiento,
    Cuando selecciona un roadmap para eliminar,
    Entonces el sistema debe confirmar la eliminación y actualizar el menú.




Feature: US019: Acceso a plantillas básicas y avanzadas para la creación de Roadmaps

    Como usuario que desea mejorar su planificación profesional con el uso de la aplicación de Roademics,
    Quiero tener acceso a plantillas predeterminadas y avanzadas para mis hojas de rutas y roadmaps,
    Para facilitar el desarrollo y diseño de los roadmaps de forma profesional, detallada y personalizada, que se ajuste a mis necesidades y objetivos específicos.

Scenario: Visualización de plantillas disponibles

    Dado que un usuario está en la sección de plantillas de Roademics,
    Cuando el usuario accede a la lista de plantillas,
    Entonces el sistema debe mostrar una lista de plantillas básicas y avanzadas, con descripciones breves de cada plantilla.

Scenario: Selección de una plantilla para crear un roadmap

    Dado que un usuario ha visualizado las plantillas disponibles,
    Cuando el usuario selecciona una plantilla,
    Entonces el sistema debe permitir al usuario iniciar la creación de un roadmap basado en la plantilla seleccionada, mostrando un formulario de personalización.

Scenario: Personalización de una plantilla

    Dado que un usuario ha seleccionado una plantilla para su roadmap,
    Cuando el usuario personaliza los atributos de la plantilla,
    Entonces el sistema debe actualizar en tiempo real la vista previa del roadmap con los cambios realizados, asegurando que los ajustes sean visibles antes de finalizar la creación.

Examples:
    | Acción                       | Resultado esperado                                         |
    | Visualizar plantillas        | Lista de plantillas básicas y avanzadas con descripciones |
    | Seleccionar plantilla        | Inicio del formulario de creación de roadmap              |
    | Personalizar plantilla       | Vista previa del roadmap actualizada en tiempo real       |





Feature: US020: Edición de roadmaps básicos

    Como usuario que ha creado un roadmap básico en la plataforma de Roademics,
    Quiero poder editar el roadmap existente con el uso de herramientas variadas de edición y modificación,
    Para actualizar la información relevante, ajustar mis objetivos profesionales o académicos, y modificar mis planes según mis necesidades actuales.

Scenario: Acceso a la herramienta de edición

    Dado que un usuario ha creado un roadmap básico en la plataforma,
    Cuando el usuario selecciona el roadmap que desea editar,
    Entonces el sistema debe proporcionar acceso a la herramienta de edición, mostrando todos los elementos del roadmap.

Scenario: Modificación de información del roadmap

    Dado que un usuario está en la herramienta de edición del roadmap,
    Cuando el usuario actualiza la información de algún nodo o elemento del roadmap,
    Entonces el sistema debe permitir guardar los cambios realizados y reflejar la información actualizada en la vista principal del roadmap.

Scenario: Cancelación de edición

    Dado que un usuario está editando un roadmap,
    Cuando el usuario decide cancelar la edición sin guardar cambios,
    Entonces el sistema debe mostrar un mensaje de confirmación y revertir el roadmap a su estado anterior.

Examples:
    | Acción                       | Resultado esperado                                       |
    | Acceder a herramienta de edición | Herramienta de edición mostrada con elementos del roadmap |
    | Modificar información        | Cambios guardados y reflejados en la vista principal    |
    | Cancelar edición             | Mensaje de confirmación y roadmap revertido a estado anterior |




Feature: US21: Acceso a herramientas de edición avanzada de roadmaps para usuarios premium

    Como usuario con suscripción Premium en la plataforma Roademics,
    Quiero tener acceso a herramientas de edición avanzada para la modificación de mis roadmaps profesionales,
    Para aprovechar funcionalidades adicionales que me permitan optimizar la planificación y gestión de mis metas, brindándome mayor flexibilidad y precisión en la creación y ajuste de mis objetivos.

Scenario: Acceso a herramientas de edición avanzada

    Dado que un usuario con suscripción Premium ha iniciado sesión en la plataforma,
    Cuando el usuario accede a la sección de edición de roadmaps,
    Entonces el sistema debe mostrar las herramientas de edición avanzada disponibles para el usuario.

Scenario: Uso de herramientas avanzadas para la edición de roadmaps

    Dado que un usuario tiene acceso a herramientas de edición avanzada,
    Cuando el usuario utiliza una de las funcionalidades avanzadas para modificar un roadmap,
    Entonces el sistema debe permitir la aplicación de cambios complejos, como la reestructuración de nodos o la integración de elementos multimedia.

Scenario: Guardado de cambios realizados con herramientas avanzadas

    Dado que un usuario ha realizado cambios en un roadmap utilizando herramientas avanzadas,
    Cuando el usuario guarda los cambios,
    Entonces el sistema debe reflejar los ajustes realizados en la vista principal del roadmap y ofrecer una opción para revertir los cambios si es necesario.

Examples:
    | Acción                               | Resultado esperado                                          |
    | Acceder a herramientas avanzadas     | Herramientas de edición avanzada mostradas                 |
    | Utilizar funcionalidad avanzada       | Cambios complejos aplicados a la estructura del roadmap    |
    | Guardar cambios                       | Cambios reflejados en la vista principal con opción de reversión |




Feature: US022	Eliminación de Roadmaps

    Como usuario registrado en la plataforma Roademics,
    Quiero poder eliminar roadmaps que ya no necesito,
    Para mantener mi perfil organizado, optimizar el uso de la plataforma y evitar la acumulación de información obsoleta o irrelevante.

Scenario: Acceso a la opción de eliminación de roadmaps

    Dado que un usuario ha iniciado sesión en su cuenta de Roademics,
    Cuando el usuario navega a la sección de sus roadmaps,
    Entonces el sistema debe mostrar la opción de eliminar cada roadmap existente.

Scenario: Confirmación de eliminación de un roadmap

    Dado que un usuario ha seleccionado un roadmap para eliminar,
    Cuando el usuario hace clic en la opción de eliminar,
    Entonces el sistema debe solicitar una confirmación para proceder con la eliminación.

Scenario: Eliminación exitosa de un roadmap

    Dado que un usuario ha confirmado la eliminación de un roadmap,
    Cuando el sistema procesa la solicitud,
    Entonces el roadmap debe ser eliminado de la cuenta del usuario y no debe aparecer en la lista de roadmaps.

Scenario: Manejo de errores en la eliminación de un roadmap

    Dado que un usuario intenta eliminar un roadmap que no existe o ha sido eliminado previamente,
    Cuando el usuario solicita la eliminación,
    Entonces el sistema debe mostrar un mensaje de error informando que el roadmap no se puede encontrar.

Examples:
    | Acción                               | Resultado esperado                                   |
    | Acceder a la sección de roadmaps     | Opción de eliminar disponible para cada roadmap      |
    | Confirmar eliminación                 | Solicitud de confirmación mostrada                   |
    | Completar eliminación                 | Roadmap eliminado de la lista de roadmaps           |
    | Intentar eliminar roadmap inexistente  | Mensaje de error indicando que no se encuentra el roadmap |




Feature:US023:	 Visualización de limitaciones en la cantidad de roadmaps

    Como usuario registrado de Roademics,
    Quiero visualizar las limitaciones respecto a la cantidad de roadmaps que puedo gestionar,
    Para tener un control claro y transparente sobre el número de roadmaps que puedo crear y editar, asegurándome de no sobrepasar los límites establecidos por mi plan de suscripción o la configuración de la misma plataforma.

Scenario: Visualización de la cantidad de roadmaps permitidos

    Dado que un usuario ha iniciado sesión en su cuenta de Roademics,
    Cuando el usuario navega a la sección de organización de roadmaps,
    Entonces el sistema debe mostrar claramente la cantidad máxima de roadmaps permitidos según el plan de suscripción del usuario.

Scenario: Notificación de límite alcanzado

    Dado que un usuario ha creado el número máximo de roadmaps permitidos,
    Cuando el usuario intenta crear un nuevo roadmap,
    Entonces el sistema debe mostrar un mensaje de error informando que se ha alcanzado el límite de roadmaps permitidos.

Scenario: Visualización de roadmaps existentes

    Dado que un usuario está en la sección de organización de roadmaps,
    Cuando el usuario revisa sus roadmaps,
    Entonces el sistema debe mostrar una lista de los roadmaps existentes junto con la cantidad total de roadmaps creados.

Scenario: Actualización de límites al cambiar de plan

    Dado que un usuario decide cambiar su plan de suscripción,
    Cuando el usuario actualiza su suscripción a un plan superior,
    Entonces el sistema debe reflejar la nueva cantidad máxima de roadmaps permitidos en la sección de organización de roadmaps.

Examples:
    | Acción                                 | Resultado esperado                                     |
    | Acceder a la sección de roadmaps       | Límite de roadmaps permitidos mostrado                |
    | Intentar crear roadmap con límite alcanzado | Mensaje de error sobre el límite de roadmaps        |
    | Revisar roadmaps existentes             | Lista de roadmaps mostrada con cantidad total         |
    | Cambiar plan de suscripción             | Límite de roadmaps actualizado según nuevo plan       |






Feature: US24: Análisis avanzados sobre un Roadmap para usuarios Premium

    Como usuario Premium de la plataforma Roademics,
    Quiero recibir análisis avanzados y detallados sobre el progreso y la estructura de mi roadmap profesional,
    Para obtener información valiosa que me permita identificar áreas de mejora, optimizar mi planificación, y tomar decisiones informadas que me ayuden a alcanzar mis objetivos profesionales de manera más efectiva y eficiente.

Scenario: Acceso a análisis avanzados

    Dado que un usuario tiene una suscripción Premium en Roademics,
    Cuando el usuario selecciona un roadmap específico para analizar,
    Entonces el sistema debe proporcionar un análisis detallado que incluya métricas de progreso, áreas de mejora y recomendaciones personalizadas.

Scenario: Visualización de datos analíticos

    Dado que un usuario está visualizando el análisis de su roadmap,
    Cuando el análisis se genera,
    Entonces el sistema debe mostrar gráficos y tablas que representen el progreso del roadmap y las áreas de mejora.

Scenario: Recomendaciones basadas en el análisis

    Dado que un usuario ha recibido el análisis avanzado de su roadmap,
    Cuando el usuario revisa las recomendaciones proporcionadas,
    Entonces el sistema debe ofrecer sugerencias específicas para optimizar su planificación y alcanzar sus objetivos.

Scenario: Notificación de análisis disponible

    Dado que un usuario ha completado hitos importantes en su roadmap,
    Cuando el sistema genera un nuevo análisis avanzado,
    Entonces el usuario debe recibir una notificación informándole que un nuevo análisis está disponible para su revisión.

Examples:
    | Acción                          | Resultado esperado                                         |
    | Seleccionar roadmap para analizar | Análisis detallado con métricas y recomendaciones       |
    | Visualizar análisis               | Gráficos y tablas representando el progreso              |
    | Revisar recomendaciones           | Sugerencias específicas para optimizar la planificación   |
    | Completar hitos                  | Notificación de análisis avanzado disponible               |





Feature: US25:  Exportar roadmaps en formato PDF o PNG

    Como usuario premium de la plataforma Roademics,
    Quiero poder exportar mis roadmaps generados y editados mediante formatos de archivo como PDF o PNG,
    Para disponer de una copia accesible, portable y presentable de mis planes profesionales, que pueda ser utilizada para compartir, almacenar o imprimir con facilidad y conservar la integridad del diseño visual y la información estructurada en la plataforma.

Scenario: Exportar roadmap en formato PDF

    Dado que un usuario ha creado y editado un roadmap en la plataforma,
    Cuando el usuario selecciona la opción de exportar a PDF,
    Entonces el sistema debe generar un archivo PDF que contenga el roadmap en su formato visual original.

Scenario: Exportar roadmap en formato PNG

    Dado que un usuario ha creado y editado un roadmap en la plataforma,
    Cuando el usuario selecciona la opción de exportar a PNG,
    Entonces el sistema debe generar un archivo PNG que represente el roadmap en su diseño visual.

Scenario: Confirmación de exportación exitosa

    Dado que un usuario ha solicitado la exportación de un roadmap,
    Cuando el archivo se genera correctamente,
    Entonces el sistema debe mostrar un mensaje de confirmación indicando que la exportación fue exitosa y proporcionar un enlace para descargar el archivo.

Scenario: Errores durante la exportación

    Dado que un usuario intenta exportar un roadmap,
    Cuando ocurre un error en el proceso de exportación,
    Entonces el sistema debe mostrar un mensaje de error informando al usuario que la exportación no se pudo completar y sugiriendo intentar de nuevo.

Examples:
    | Formato   | Resultado esperado                                    |
    | PDF       | Archivo PDF generado con el roadmap en formato original |
    | PNG       | Archivo PNG generado representando el roadmap         |
    | Éxito     | Mensaje de confirmación y enlace para descargar      |
    | Error     | Mensaje de error informando que la exportación falló  |




Feature: Creación de nodos de un roadmap

    Como usuario registrado de la plataforma Roademics,
    Quiero poder crear los nodos de mi roadmap de forma manual,
    Para estructurar y definir claramente las etapas, actividades y acciones necesarias para alcanzar mis objetivos profesionales de manera organizada y efectiva.

Scenario: US026	Crear un nuevo nodo en el roadmap

    Dado que un usuario está en la interfaz de creación de roadmaps,
    Cuando el usuario ingresa los detalles del nuevo nodo y selecciona la opción de crear,
    Entonces el sistema debe añadir el nuevo nodo al roadmap y mostrarlo en la visualización.

Scenario: Validación de información del nodo

    Dado que un usuario está creando un nuevo nodo,
    Cuando el usuario deja un campo requerido vacío,
    Entonces el sistema debe mostrar un mensaje de error indicando que todos los campos obligatorios deben ser completados.

Scenario: Edición de un nodo existente

    Dado que un usuario ha creado un nodo en su roadmap,
    Cuando el usuario selecciona la opción de editar el nodo,
    Entonces el sistema debe permitir al usuario modificar los detalles del nodo y guardar los cambios.

Scenario: Eliminación de un nodo

    Dado que un usuario ha creado un nodo en su roadmap,
    Cuando el usuario selecciona la opción de eliminar el nodo,
    Entonces el sistema debe eliminar el nodo del roadmap y actualizar la visualización.

Scenario: Confirmación de creación exitosa

    Dado que un usuario ha creado un nodo,
    Cuando el nodo se añade correctamente al roadmap,
    Entonces el sistema debe mostrar un mensaje de confirmación indicando que el nodo ha sido creado exitosamente.

Examples:
    | Acción         | Resultado esperado                                     |
    | Crear nodo     | Nuevo nodo añadido al roadmap y visible en la interfaz |
    | Validación     | Mensaje de error por campo vacío                       |
    | Editar nodo    | Detalles del nodo actualizados y guardados            |
    | Eliminar nodo   | Nodo eliminado y visualización actualizada            |
    | Éxito          | Mensaje de confirmación de creación del nodo          |





Feature: US27: Notificación de obsolescencia de nodos en el grafo

    Como usuario registrado en la plataforma Roademics,
    Quiero recibir una notificación si un nodo en mi grafo se vuelve obsoleto o ya no está disponible,
    Para estar al tanto de cualquier cambio que pueda afectar la estructura y el progreso de mi roadmap, y tomar las medidas necesarias para actualizar o ajustar mi plan según sea necesario.

Scenario: Notificación de nodo obsoleto

    Dado que un nodo en el grafo ha sido marcado como obsoleto,
    Cuando el sistema detecta que el nodo ya no está disponible,
    Entonces el usuario debe recibir una notificación en su panel de control informando sobre la obsolescencia del nodo.

Scenario: Notificación de eliminación de nodo

    Dado que un usuario tiene un nodo en su grafo,
    Cuando el nodo es eliminado por un administrador o el sistema,
    Entonces el usuario debe recibir una notificación alertando sobre la eliminación del nodo.

Scenario: Visualización de notificaciones en el panel de control

    Dado que un usuario ha recibido notificaciones sobre nodos obsoletos o eliminados,
    Cuando el usuario accede a su panel de control,
    Entonces el sistema debe mostrar un registro de las notificaciones recientes relacionadas con la obsolescencia o eliminación de nodos.

Scenario: Ignorar notificación

    Dado que un usuario ha recibido una notificación sobre un nodo obsoleto,
    Cuando el usuario elige ignorar la notificación,
    Entonces el sistema debe permitir al usuario cerrar la notificación sin cambiar el estado del nodo.

Scenario: Actualización de estado del nodo

    Dado que un usuario ha sido notificado sobre un nodo obsoleto,
    Cuando el usuario actualiza el nodo para reflejar la nueva información,
    Entonces el sistema debe confirmar la actualización y eliminar la notificación correspondiente.

Examples:
    | Acción                      | Resultado esperado                                               |
    | Recibir notificación        | Notificación de obsolescencia del nodo en el panel de control   |
    | Eliminar nodo              | Notificación sobre eliminación del nodo                          |
    | Visualizar notificaciones   | Registro de notificaciones en el panel de control                |
    | Ignorar notificación        | Notificación cerrada sin afectar el estado del nodo              |
    | Actualizar nodo            | Confirmación de actualización y eliminación de notificación      |






Feature: US028: Historial de versiones de un roadmap

    Como usuario registrado en la plataforma Roademics,
    Quiero ser capaz de guardar distintas versiones de mi roadmap,
    Para tener un historial de cambios y poder revertir a versiones anteriores si es necesario, asegurando así que pueda realizar ajustes sin perder progresos importantes.

Scenario: Guardar una nueva versión del roadmap

    Dado que un usuario ha realizado cambios en su roadmap,
    Cuando el usuario decide guardar la nueva versión,
    Entonces el sistema debe crear y almacenar una nueva entrada en el historial de versiones del roadmap.

Scenario: Visualizar historial de versiones

    Dado que un usuario tiene varias versiones guardadas de su roadmap,
    Cuando el usuario accede al historial de versiones,
    Entonces el sistema debe mostrar una lista de todas las versiones guardadas con la fecha y descripción de cada versión.

Scenario: Revertir a una versión anterior

    Dado que un usuario está revisando su historial de versiones,
    Cuando el usuario selecciona una versión anterior para revertir,
    Entonces el sistema debe restaurar el roadmap a esa versión seleccionada y confirmar la acción.

Scenario: Eliminar una versión del historial

    Dado que un usuario tiene un historial de versiones,
    Cuando el usuario decide eliminar una versión específica,
    Entonces el sistema debe eliminar la versión seleccionada del historial y confirmar la acción.

Scenario: Confirmación de cambios al guardar versiones

    Dado que un usuario ha guardado una nueva versión de su roadmap,
    Cuando el sistema confirma la acción,
    Entonces el usuario debe recibir una notificación de que la versión ha sido guardada exitosamente.

Examples:
    | Acción                        | Resultado esperado                                           |
    | Guardar nueva versión        | Nueva entrada en el historial de versiones                 |
    | Visualizar historial          | Lista de versiones con fechas y descripciones              |
    | Revertir a versión anterior   | Roadmap restaurado a la versión seleccionada               |
    | Eliminar versión             | Versión eliminada del historial y notificación de confirmación |
    | Confirmación de cambios      | Notificación de que la versión ha sido guardada exitosamente |
