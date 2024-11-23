Feature: US029: Compartir un roadmap con otros usuarios

  Como usuario registrado en la plataforma Roademics,
  Quiero poder compartir mi roadmap con otros usuarios de la plataforma,
  Para recibir retroalimentación o colaborar en la planificación de mi carrera profesional, fomentando el intercambio de ideas y la mejora mutua, o para que pueda ser revisado directamente por otras empresas que podrían ofrecerme trabajos por mis habilidades.

Scenario: Selección de destinatarios y permisos
  Dado que un usuario autenticado accede a la sección de gestión de roadmaps y después a uno de sus roadmaps,
  Cuando selecciona la opción de compartir el roadmap entre las demás opciones de la interfaz,
  Entonces el sistema debe permitir al usuario seleccionar destinatarios entre otros usuarios registrados, ofrecer opciones para establecer permisos de visualización o edición, y enviar el roadmap a los usuarios seleccionados en un plazo de 5 segundos.
  Y el sistema debe confirmar que el roadmap ha sido compartido correctamente mediante una notificación en la plataforma.

Scenario: Notificación de compartición
  Dado que un usuario autenticado ha compartido su roadmap con otros usuarios de la plataforma a través de las funciones de compartición de la sección de gestión de roadmaps,
  Cuando se redacta la notificación de compartición y es enviada directamente a los destinatarios,
  Entonces el sistema debe mostrar una notificación en el perfil de los destinatarios en un plazo de 3 segundos,
  Permitiéndoles acceder al roadmap compartido desde la sección de notificaciones o desde la lista de roadmaps compartidos.

Scenario: Permisos de visualización
  Dado que un usuario autenticado ha compartido uno de sus roadmaps con solo permisos de visualización,
  Cuando el destinatario recibe la notificación de compartición de forma adecuada y accede al roadmap,
  Entonces el sistema debe permitirle ver el contenido del roadmap sin la posibilidad de realizar modificaciones,
  Asegurándose de que el destinatario pueda navegar por las distintas secciones del roadmap y visualizar la información relevante sin alterar los datos.

Scenario: Permisos de sugerencias y comentarios
  Dado que un usuario autenticado ha compartido uno de sus roadmaps con permisos de comentarios y sugerencias,
  Cuando el destinatario recibe la notificación de compartición de forma adecuada y accede al roadmap,
  Entonces el sistema debe permitirle ver el contenido en el roadmap,
  Y poder realizar comentarios y sugerencias para cada nodo y arista, sin afectar la estructura de este en ningún momento.
  Y el sistema debe guardar automáticamente cualquier comentario realizado por el destinatario en un plazo de 2 segundos.

Scenario: Revocación de permisos de compartición
  Dado que un usuario autenticado ha compartido uno de sus roadmaps con otros usuarios de forma adecuada, pero ahora quiere revocar los permisos de acceso de forma inmediata,
  Cuando el propietario vuelva a ingresar a la pantalla de compartición en la interfaz de la sección de gestión de roadmaps,
  Entonces el sistema debe ofrecer la opción de eliminar los permisos para uno o más usuarios,
  Y actualizar el acceso al roadmap en un plazo de 2 segundos,
  Y notificar a los usuarios afectados que ya no tienen acceso al roadmap.
  Y el propietario también puede realizar un comentario en la notificación para informar sobre el motivo de la revocación.



Feature: US030: Recibir notificaciones cuando alguien visualiza mi perfil o mi roadmap profesional
Feature: Recibir notificaciones cuando alguien visualiza mi perfil o mi roadmap profesional

  Como usuario registrado en la plataforma Roademics,
  Quiero recibir notificaciones cuando alguien visualiza mi perfil o mi roadmap académico,
  Para estar al tanto de quién está interesado en mi información y poder gestionar mejor la privacidad y visibilidad de mis datos, tomando decisiones informadas sobre la exposición de mi contenido.

Scenario: Notificación de visualización de perfil
  Dado que un usuario emisor ya registrado en la aplicación de Roademics desea visualizar el perfil de otro usuario con quien tiene o no tiene una conexión,
  Cuando el usuario emisor entra a la página de perfil de un usuario receptor y permanece ahí por 1 segundo o más,
  Entonces el sistema debe enviar una notificación al usuario receptor en un plazo de 3 segundos,
  Informando el nombre del usuario que visualizó el perfil (si la configuración de privacidad lo permite) y la hora exacta de la visualización.

Scenario: Notificación de visualización de roadmap profesional
  Dado que un usuario emisor ya registrado en la aplicación de Roademics desea visualizar uno de los roadmaps profesionales de otro usuario con quien tiene o no tiene una conexión,
  Cuando el usuario emisor entra a la página de visualización de uno de los roadmaps de un usuario receptor y permanece ahí por 1 segundo o más,
  Entonces el sistema debe enviar una notificación al usuario receptor en un plazo de 3 segundos,
  Informando el nombre del usuario que visualizó el roadmap (si la configuración de privacidad lo permite),
  Cuál fue el roadmap visualizado y la hora exacta de la visualización.

Scenario: Personalización de notificaciones
  Dado que un usuario registrado en la aplicación prefiere controlar qué tipo de notificaciones recibe que estén relacionadas con su perfil y/o roadmaps,
  Cuando el usuario accede a la pantalla de configuración de notificaciones desde la sección de ajustes en su pantalla de perfil,
  Entonces el sistema debe permitir al usuario activar o desactivar las notificaciones específicas de visualización de perfil y roadmaps en un período no mayor a 3 segundos,
  Asegurando que estas preferencias sean respetadas en futuras interacciones.

Scenario: Historial de visualizaciones
  Dado que un usuario registrado en la aplicación ha recibido múltiples notificaciones sobre visualizaciones de su perfil o roadmap y quiere revisar el total de notificaciones junto a todos los detalles posibles,
  Cuando el usuario accede a su pantalla de perfil, después a su sección de ajustes e ingresa a la sección de historial de visualizaciones,
  Entonces el sistema debe mostrar un registro de todas las visualizaciones recientes en orden cronológico,
  Con detalles de quién visualizó el contenido (si la configuración de privacidad lo permite), y la fecha y hora de cada visualización.
  En caso de roadmaps, también debe aparecer el roadmap que fue visualizado.



Feature: US031: Poder chatear directamente con otros usuarios y empresas
Feature: Poder chatear directamente con otros usuarios y empresas

  Como usuario registrado en la plataforma Roademics,
  Quiero poder chatear directamente con otros usuarios y cuentas de empresas,
  Para facilitar la comunicación, resolver dudas y establecer conexiones relevantes sin tener que salir de la aplicación, mejorando así la eficiencia y comodidad en las interacciones.

Scenario: Chat en tiempo real entre usuarios
  Dado que un usuario autenticado quiere comunicarse con otro usuario autenticado dentro de la aplicación, ya sea si tienen una conexión o no,
  Cuando el usuario inicia una conversación desde la interfaz de chat en la pantalla de perfil o de networking,
  Entonces el sistema debe abrir una pequeña pestaña de chat y permitir la comunicación en tiempo real entre ambos usuarios,
  Mostrando los mensajes enviados y recibidos de manera inmediata, con una latencia menor a 2 segundos,
  Y asegurando que las conversaciones se mantengan organizadas y accesibles en el historial de chat.

Scenario: Chat en tiempo real entre usuarios y empresas
  Dado que un usuario autenticado quiere comunicarse con la cuenta de una empresa también autenticada dentro de la aplicación,
  Cuando el usuario inicia una conversación desde la interfaz de chat en la pantalla de perfil o de networking,
  Entonces el sistema debe abrir una pequeña pestaña de chat y permitir la comunicación en tiempo real entre el usuario y el usuario a cargo de la cuenta de la empresa,
  Mostrando los mensajes enviados y recibidos de manera inmediata, con una latencia menor a 2 segundos,
  Y asegurando que las conversaciones se mantengan organizadas y accesibles en el historial de chat.

Scenario: Notificaciones de nuevos mensajes
  Dado que un usuario autenticado recibe un nuevo mensaje en su interfaz de chat, pero no se encuentra presente en ese momento dentro de la pestaña,
  Cuando el mensaje es enviado por otro usuario o una empresa y el sistema detecta que el usuario no se encuentra dentro de la pestaña de conversaciones,
  Entonces el sistema debe enviar una notificación al usuario receptor en un plazo de 3 segundos,
  Informando de la recepción del nuevo mensaje junto al nombre del usuario emisor,
  Con la opción de visualizar la conversación directamente desde la notificación.

Scenario: Función de búsqueda en el historial de chat
  Dado que un usuario autenticado tiene varias conversaciones activas o archivadas dentro de su interfaz de chat,
  Cuando el usuario accede al historial de chat y utiliza la función de búsqueda que se debe encontrar en el tope de la pequeña pestaña,
  Entonces el sistema debe permitir al usuario buscar conversaciones anteriores o mensajes específicos utilizando palabras clave o nombres de usuarios/empresas,
  Mostrando los resultados en un plazo máximo de 5 segundos.




Feature: US032: Gestión de privacidad en el chat
Feature: Gestión de privacidad en el chat

  Como usuario registrado en la aplicación de Roademics,
  Quiero poder gestionar la privacidad de todas mis conversaciones en el chat,
  Para asegurar que mi información y comunicaciones estén protegidas y se respeten mis preferencias de privacidad en todo momento.

Scenario: Configuración de privacidad de chat
  Dado que un usuario autenticado desea ajustar sus preferencias de privacidad en el chat,
  Cuando el usuario accede a la interfaz de conversaciones en la pantalla de perfil o de networking, y después accede a la sección de configuración de privacidad en el chat,
  Entonces el sistema debe permitirle activar o desactivar la opción de recibir mensajes de usuarios no conectados,
  Y debe permitir seleccionar el tipo de acceso a sus mensajes, de modo que solo los usuarios y empresas autorizadas puedan iniciar una conversación.

Scenario: Bloqueo de usuarios en el chat
  Dado que un usuario autenticado quiere bloquear a otro usuario en la plataforma para que no pueda enviarle más mensajes,
  Cuando el usuario accede a la ventana de chat y selecciona la opción de bloquear a un usuario específico desde el chat,
  Entonces el sistema debe evitar que el usuario bloqueado pueda seguir enviando mensajes al usuario bloqueador,
  Y debe mostrar una notificación de bloqueo confirmada en un plazo de 3 segundos.




Feature: US033: Tener la opción de reportar perfiles que consideren inapropiados o que violen las políticas de la plataforma

    Como usuario registrado en la aplicación de Roademics,
    Quiero tener la opción de reportar perfiles que considere inapropiados o que violen las políticas de la plataforma,
    Para contribuir a la seguridad y el cumplimiento de las normas, asegurando un entorno respetuoso y libre de contenido no permitido.

Scenario: Opción de reporte de perfiles
    Dado que un usuario autenticado encuentra un perfil inapropiado o que viola las políticas de la plataforma según los términos y condiciones,
    Cuando el usuario ingresa al perfil inapropiado y selecciona la opción de reporte en la esquina superior derecha de la interfaz del perfil,
    Entonces el sistema debe permitir al usuario completar un formulario de reporte detallado, que incluya la razón del reporte, categoría de la violación (como lenguaje inapropiado, contenido ofensivo, etc.) y cualquier evidencia adicional.
    Y el sistema debe confirmar la recepción del reporte en un plazo de 10 segundos.

Scenario: Revisión del reporte por moderadores
    Dado que un perfil ha sido reportado mediante el uso de un formulario de reporte por un usuario adecuadamente autenticado en la aplicación,
    Cuando el reporte es recibido por en la bandeja de informes del equipo de moderación,
    Entonces el sistema debe notificar al equipo de moderación y poner a disposición del equipo la información proporcionada por el usuario, junto con cualquier contenido relevante del perfil reportado,
    Para que se realice una revisión en un plazo de 48 horas para determinar si el caso procede.

Scenario: Notificación del estado del reporte al usuario
    Dado que el usuario autenticado ha enviado un reporte sobre un perfil que encontró inadecuado según las normativas de Roademics,
    Cuando el equipo de moderación completa la revisión del reporte y del propio perfil que fue reportado por el usuario,
    Entonces el sistema debe notificar al usuario que realizó el reporte sobre el estado del proceso,
    Incluyendo si el perfil ha sido suspendido, advertido o si no se han tomado medidas,
    Y esta notificación debe llegar en un plazo de 72 horas desde la recepción del reporte.

Scenario: Bloqueo de perfiles reportados
    Dado que un usuario autenticado ha reportado un perfil por contenido inapropiado o por alguna otra razón que esté en contra de las normativas presentadas en la aplicación de Roademics,
    Cuando el reporte ha sido confirmado como válido por parte del equipo de moderadores de Roademics,
    Entonces el sistema debe automáticamente bloquear el acceso del perfil reportado a las funcionalidades de contacto con el usuario que realizó el reporte,
    Y asegurar que no puedan visualizar sus datos,
    De llegar a ser el caso, también puede haber un bloque permanente con el resto de usuarios de la plataforma, o directamente una eliminación de cuenta y bloqueo de credenciales.

Scenario: Registro de historial de reportes
    Dado que un usuario autenticado ha reportado un perfil por contenido inapropiado o por alguna otra razón que esté en contra de las normativas presentadas en la aplicación de Roademics,
    Cuando el sistema recibe el reporte entregado por el usuario,
    Entonces este debe automáticamente ingresarse en el historial de reportes que tiene ese mismo perfil junto con el resto de reportes previos (si los hay) y las acciones tomadas para cada tipo de reporte,
    Para proporcionar un contexto más claro para el equipo de moderadores.

Examples:
    | Usuario      | Perfil Reportado            | Razón de Reporte    | Acción Tomada         |
    | "Usuario A"  | "Perfil de Usuario X"       | "Lenguaje inapropiado" | "Advertencia emitida" |
    | "Usuario B"  | "Perfil de Usuario Y"       | "Contenido ofensivo"  | "Bloqueo temporal"    |

Feature: US034: Poder ver quién ha aceptado mi solicitud de conexión y quién la ha ignorado o rechazado

    Como usuario registrado en la aplicación de Roademics,
    Quiero poder ver quién ha aceptado mi solicitud de conexión y quién la ha ignorado o rechazado,
    Para tener una visión clara de las interacciones y decisiones de otros usuarios respecto a mis solicitudes de conexión,
    Y gestionar mis conexiones de manera más efectiva.

Scenario: Visualización de solicitudes aceptadas
    Dado que un usuario autenticado ha enviado una solicitud de conexión a otro usuario que también se encuentre autenticado en la plataforma,
    Cuando el destinatario acepta la solicitud,
    Entonces el sistema debe notificar al usuario emisor que su solicitud ha sido aceptada,
    Y actualizar el estado de la solicitud en la lista de conexiones pendientes a "Aceptada" en un plazo de 10 segundos,
    Y mover la nueva conexión a la lista de contactos confirmados.

Scenario: Visualización de solicitudes ignoradas o rechazadas
    Dado que un usuario autenticado ha enviado una solicitud de conexión a otro usuario que también se encuentre autenticado en la plataforma,
    Cuando el destinatario ignora o rechaza la solicitud,
    Entonces el sistema debe notificar al usuario emisor que su solicitud ha sido rechazada,
    Y actualizar el estado de la solicitud a "Rechazada" en la lista de solicitudes pendientes, en un plazo de 10 segundos.

Scenario: Historial de solicitudes de conexión
    Dado que un usuario autenticado en la aplicación quiere ver el estado de sus solicitudes enviadas,
    Cuando accede a la sección de historial de solicitudes en la interfaz de conexiones con usuarios,
    Entonces el sistema debe mostrar una lista de todas las solicitudes de conexión enviadas en menos de 3 segundos,
    Con el estado actual de cada una (Aceptada, Rechazada, Pendiente) y la fecha en que ocurrió el último cambio de estado.

Scenario: Reenvío de solicitudes de conexión ignoradas
    Dado que un usuario autenticado en la aplicación quiere reenviar una solicitud de conexión ignorada por algún otro usuario,
    Cuando accede a la lista de solicitudes ignoradas en la interfaz de solicitudes de conexión,
    Entonces el sistema debe permitir al usuario reenviar la solicitud de conexión,
    Proporcionando una opción de reenvío en un plazo de 7 días después de que la solicitud ha sido ignorada.

Scenario: Notificación de solicitudes expiradas
    Dado que un usuario autenticado en la aplicación ha enviado una solicitud de conexión a un usuario o a una cuenta de una empresa,
    Cuando la solicitud no recibe una respuesta después de un período definido de 14 días por parte del usuario receptor,
    Entonces el sistema debe marcar la solicitud como "Ignorada",
    Enviar una notificación al usuario y moverla al historial de solicitudes ignoradas en un plazo no mayor de 5 segundos.

Examples:
    | Usuario Emisor | Usuario Receptor    | Estado de Solicitud | Fecha Última Modificación |
    | "Usuario A"    | "Usuario B"          | "Aceptada"          | "2024-11-20"             |
    | "Usuario C"    | "Usuario D"          | "Rechazada"         | "2024-11-21"             |

Feature: US035: Poder recibir informes avanzados sobre la actividad de mi perfil

    Como usuario Premium quiero recibir informes avanzados sobre la actividad de mi perfil,
    Para analizar en detalle la interacción y el rendimiento de mi perfil,
    Y tomar decisiones informadas para mejorar mi presencia y estrategias en la plataforma.

Scenario: Informe de actividad de perfil
    Dado que un usuario Premium solicita un informe sobre la actividad de su perfil,
    Cuando el sistema genera el informe,
    Entonces el sistema debe proporcionar un informe detallado que incluya métricas avanzadas como número de visitas, interacciones recibidas, conexiones realizadas,
    Y otras estadísticas relevantes, presentadas en un formato accesible.

Scenario: Informe de rendimiento de contenido
    Dado que un usuario Premium desea analizar el rendimiento de contenido específico en su perfil,
    Cuando el usuario solicita un informe sobre el rendimiento de dicho contenido,
    Entonces el sistema debe generar un informe que detalle la actividad relacionada con ese contenido,
    Como número de visualizaciones, interacciones, y el impacto en el perfil,
    Proporcionando insights que permitan al usuario ajustar y mejorar su contenido y estrategias de participación.

Examples:
    | Usuario    | Tipo de Informe         | Métricas Incluidas               |
    | "Usuario A"| "Informe de Actividad"  | "Visitas, interacciones, conexiones"|
    | "Usuario B"| "Informe de Contenido"  | "Visualizaciones, interacciones, impacto"|

Feature: US036: Recibir una notificación por correo electrónico o SMS si se detecta un inicio de sesión desde un dispositivo no reconocido

    Como usuario de la plataforma,
    Quiero recibir una notificación por correo electrónico o SMS si se detecta un inicio de sesión desde un dispositivo no reconocido,
    Para estar al tanto de cualquier actividad sospechosa en mi cuenta y tomar medidas preventivas en caso de que mi cuenta sea comprometida.

Scenario: Notificación por correo electrónico
    Dado que un inicio de sesión desde un dispositivo no reconocido es detectado,
    Cuando se confirma el acceso,
    Entonces el sistema debe enviar una notificación por correo electrónico al usuario,
    Informándole del inicio de sesión y proporcionando detalles sobre el dispositivo y la ubicación,
    Para que el usuario pueda revisar y verificar la actividad.

Scenario: Notificación por SMS
    Dado que un inicio de sesión desde un dispositivo no reconocido es detectado,
    Cuando se confirma el acceso,
    Entonces el sistema debe enviar una notificación por SMS al número de teléfono registrado del usuario,
    Informándole del acceso no reconocido y proporcionando detalles básicos,
    Para que el usuario pueda actuar rápidamente si es necesario.

Scenario: Opción de bloqueo inmediato
    Dado que un usuario ha recibido una notificación por correo electrónico o SMS sobre un inicio de sesión desde un dispositivo no reconocido,
    Cuando el usuario revisa la notificación,
    Entonces debe tener la opción de bloquear el acceso a su cuenta inmediatamente a través de un enlace proporcionado,
    Para evitar el uso no autorizado de su cuenta.

Examples:
    | Usuario    | Método de Notificación | Detalles Incluidos              |
    | "Usuario A"| "Correo Electrónico"    | "Dispositivo, Ubicación, IP"    |
    | "Usuario B"| "SMS"                   | "Ubicación, dispositivo"        |





Feature: Leer y aceptar Términos y condiciones

  US038: Leer y aceptar Términos y condiciones
    Como usuario nuevo de la plataforma,
    quiero leer y aceptar los Términos y condiciones antes de completar el registro,
    para asegurarme de que comprendo y acepto las políticas y reglas de uso de la plataforma.

  Scenario: Visualización de Términos y condiciones
    Dado que un usuario está en la página de registro,
    Cuando el usuario hace clic en el enlace para leer los Términos y condiciones,
    Entonces el sistema debe mostrar un documento completo de los Términos y condiciones en una ventana emergente o en una nueva página,
    Permitido al usuario revisar el contenido antes de aceptar.

  Scenario: Aceptación de Términos y condiciones
    Dado que un usuario ha leído los Términos y condiciones,
    Cuando el usuario marca la casilla de aceptación y completa el registro,
    Entonces el sistema debe registrar la aceptación de los Términos y condiciones en la cuenta del usuario,
    Y permitir el acceso completo a la plataforma,
    Garantizando que la aceptación es obligatoria antes de usar la aplicación.

  US039: Revisar Términos y condiciones actualizados
    Como usuario activo de la plataforma,
    quiero revisar los Términos y condiciones actualizados,
    para asegurarme de que estoy al tanto de los cambios y de que continúo cumpliendo con las políticas y reglas vigentes.

  Scenario: Notificación de actualizaciones de Términos y condiciones
    Dado que los Términos y condiciones han sido actualizados,
    Cuando un usuario inicia sesión en la plataforma,
    Entonces el sistema debe notificar al usuario sobre las actualizaciones y proporcionar un enlace para revisar los Términos y condiciones actualizados,
    Asegurando que el usuario esté informado de los cambios.

  Scenario: Confirmación de aceptación de actualizaciones
    Dado que un usuario ha revisado los Términos y condiciones actualizados,
    Cuando el usuario confirma la aceptación de las actualizaciones,
    Entonces el sistema debe registrar la aceptación de los nuevos Términos y condiciones,
    Y permitir al usuario continuar usando la plataforma sin interrupciones,
    Garantizando que la aceptación de los cambios es obligatoria para seguir utilizando los servicios.

  US040: Accesibilidad a Términos y condiciones
    Como usuario de la plataforma,
    quiero tener acceso fácil a los Términos y condiciones desde cualquier sección de la aplicación,
    para poder consultarlos en cualquier momento y asegurarme de que estoy siempre informado sobre las políticas y reglas de uso.

  Scenario: Acceso a Términos y condiciones desde el menú principal
    Dado que un usuario está navegando en el menú principal de la aplicación,
    Cuando el usuario selecciona la opción de Términos y condiciones,
    Entonces el sistema debe mostrar el documento completo de los Términos y condiciones en una ventana emergente o en una nueva página,
    Permitido al usuario consultar el contenido fácilmente.

  Scenario: Acceso a Términos y condiciones desde el pie de página
    Dado que un usuario está en cualquier sección de la aplicación,
    Cuando el usuario hace clic en el enlace de Términos y condiciones en el pie de página,
    Entonces el sistema debe mostrar el documento completo de los Términos y condiciones en una ventana emergente o en una nueva página,
    Asegurando que el acceso a la información sea consistente y accesible desde todas las páginas de la aplicación.
