Feature: TS001: Integrar un sistema de registro con Firebase Authentication

    Como desarrollador de Roademics
    Quiero integrar un sistema de registro utilizando Firebase Authentication
    Para garantizar un proceso de autenticación seguro para los usuarios.

Scenario: Registro de un nuevo usuario
    Dado que un usuario nuevo desea registrarse
    Cuando proporciona su correo electrónico y contraseña válidos a través de la aplicación usando Firebase Authentication
    Entonces el sistema debe crear la cuenta en Firebase y vincularla con los datos del usuario en la plataforma

Examples:
    | correo electrónico       | contraseña    |
    | "usuario@example.com"    | "ContraseñaSegura123" |

Scenario: Manejo de correo electrónico duplicado
    Dado que un usuario intenta registrarse con un correo electrónico ya existente en Firebase
    Cuando el sistema detecta que la dirección de correo electrónico está duplicada
    Entonces se debe mostrar un mensaje de error indicando que el correo ya está asociado a una cuenta existente
    Y no se debe permitir el registro

Examples:
    | correo electrónico       |
    | "usuario@example.com"    |




Feature: TS002: Implementación de validaciones de credenciales

    Como desarrollador de la plataforma
    Quiero implementar validaciones de credenciales durante el proceso de registro
    Para asegurar que los usuarios ingresen información válida.

Scenario: Validación de formato de correo electrónico
    Dado que un usuario ingresa su correo electrónico para registrarse
    Cuando el correo electrónico no tiene un formato válido
    Entonces el sistema debe mostrar un mensaje de error indicando que el formato del correo es incorrecto
    Y no proceder con el registro

Examples:
    | correo electrónico     |
    | "usuario@ejemplo"     |
    | "usuario@.com"        |

Scenario: Validación de requisitos de contraseña
    Dado que un usuario está creando una cuenta
    Cuando ingresa una contraseña que no cumple con los requisitos de seguridad
    Entonces el sistema debe mostrar un mensaje de error indicando los requisitos de contraseña que no se cumplen
    Y no permitir la creación de la cuenta

Examples:
    | contraseña         |
    | "123456"          |
    | "password"        |




Feature: TS003: Encriptación de datos del usuario cuando estén tanto en tránsito como en reposo

    Como desarrollador de la plataforma
    Quiero encriptar los datos del usuario tanto cuando estén en tránsito como en reposo
    Para garantizar la seguridad y privacidad de la información.

Scenario: Encriptación de datos en tránsito
    Dado que los datos del usuario están siendo transmitidos durante algún proceso en la aplicación
    Cuando el usuario envía su información a través de la plataforma
    Entonces los datos deben estar protegidos mediante protocolos de encriptación como HTTPS/TLS
    Y asegurar que la información sea inaccesible por terceros durante la transmisión

Examples:
    | información del usuario   |
    | "nombre, correo, contraseña" |

Scenario: Encriptación de datos en reposo
    Dado que los datos del usuario están almacenados en la base de datos
    Cuando se guarda la información sensible del usuario
    Entonces estos datos deben estar encriptados en reposo utilizando algoritmos de cifrado seguros

Examples:
    | datos sensibles          |
    | "contraseña, tarjeta de crédito" |




Feature: TS004: Integración de sistema de autenticación con Firebase Authentication

    Como desarrollador de la plataforma
    Quiero integrar Firebase Authentication para el proceso de inicio de sesión
    Para asegurar que los usuarios puedan autenticarse de manera segura y rápida utilizando los servicios de Firebase.

Scenario: Inicio de sesión exitoso
    Dado que un usuario registrado intenta iniciar sesión
    Cuando ingresa su correo electrónico y contraseña correctos a través de la aplicación
    Entonces el sistema debe autenticar al usuario correctamente
    Y permitirle acceder a su cuenta en la aplicación

Examples:
    | correo electrónico      | contraseña      |
    | "usuario@example.com"   | "contraseñaSegura" |

Scenario: Inicio de sesión fallido
    Dado que un usuario intenta iniciar sesión con una contraseña incorrecta
    Cuando Firebase Authentication verifica las credenciales y detecta el error
    Entonces el sistema debe mostrar un mensaje de error indicando que las credenciales son incorrectas
    Y no permitir el acceso

Examples:
    | correo electrónico      | contraseña incorrecta |
    | "usuario@example.com"   | "contraseñaErronea"  |




Feature: TS005: Implementar un sistema de autenticación segura en el backend

    Como desarrollador de la plataforma
    Quiero implementar un sistema de autenticación segura
    Para proteger las credenciales de los usuarios y asegurar el acceso a la plataforma.

Scenario: Acceso exitoso a funcionalidad restringida
    Dado que un usuario está intentando acceder a una funcionalidad restringida
    Cuando el usuario envía un token de autenticación válido (JWT) en la solicitud
    Entonces el sistema debe verificar la validez del token
    Y permitir el acceso solo si el token es válido y no ha expirado

Examples:
    | token de autenticación        |
    | "eyJhbGciOiJIUzI1NiIsInR..." | 

Scenario: Acceso denegado sin token o con token inválido
    Dado que un usuario intenta acceder a una funcionalidad restringida sin un token de autenticación o con un token inválido
    Cuando el sistema recibe la solicitud
    Entonces el sistema debe rechazar la solicitud
    Y devolver un código de error con un mensaje indicando que se requiere autenticación

Examples:
    | token de autenticación        |
    | "invalidoToken123"           |
    | ""                            |




Feature: TS006: Integración de un flujo de recuperación de contraseña

    Como desarrollador de la plataforma
    Quiero integrar un flujo de recuperación de contraseña
    Para permitir a los usuarios restablecer sus contraseñas de manera segura en caso de olvido.

Scenario: Generación y envío del enlace de restablecimiento de contraseña
    Dado que un usuario ha olvidado su contraseña y solicita una recuperación
    Cuando el usuario ingresa su correo electrónico en el formulario de recuperación y envía la solicitud
    Entonces el sistema debe generar un enlace seguro de restablecimiento de contraseña
    Y enviarlo al correo electrónico proporcionado

Examples:
    | correo electrónico          |
    | "usuario@example.com"      |

Scenario: Restablecimiento de contraseña exitoso
    Dado que un usuario recibe el enlace de restablecimiento de contraseña
    Cuando el usuario hace clic en el enlace y proporciona una nueva contraseña que cumpla con los requisitos de seguridad
    Entonces el sistema debe validar la nueva contraseña
    Y actualizarla en la base de datos
    Y permitir al usuario iniciar sesión con la nueva contraseña

Examples:
    | nueva contraseña         |
    | "NuevaContraseña123!"   |

Scenario: Enlace de restablecimiento de contraseña expirado o inválido
    Dado que el enlace de restablecimiento de contraseña ha expirado o es inválido
    Cuando un usuario intenta usar un enlace expirado o inválido para restablecer su contraseña
    Entonces el sistema debe mostrar un mensaje de error
    Indicando que el enlace no es válido o ha expirado

Examples:
    | enlace                     |
    | "https://ejemplo.com/enlace/invalido" |
    | "https://ejemplo.com/enlace/expirado"  |




Feature: TS007: Almacenamiento de contraseñas utilizando técnicas de hash y salting

    Como desarrollador de la plataforma
    Quiero almacenar las contraseñas de los usuarios utilizando técnicas de hash y salting
    Para asegurar que las contraseñas se mantengan seguras y sean resistentes a ataques.

Scenario: Almacenamiento de contraseñas seguras
    Dado que un usuario se registra en la plataforma o cambia su contraseña
    Cuando el sistema recibe la contraseña en texto plano
    Entonces el sistema debe aplicar un algoritmo de hash seguro
    Y utilizar un salt único para la contraseña
    Y almacenarlo en la base de datos

Examples:
    | contraseña             |
    | "MiContraseñaSegura!"  |

Scenario: Verificación de contraseña durante el inicio de sesión
    Dado que un usuario intenta iniciar sesión
    Cuando el sistema recibe la contraseña ingresada
    Entonces el sistema debe aplicar el mismo algoritmo de hash
    Y usar el salt asociado
    Y verificar la contraseña contra el hash almacenado en la base de datos

Examples:
    | contraseña ingresada     |
    | "MiContraseñaSegura!"    |




Feature: TS008: Implementación de autenticación de dos factores (2FA)

    Como desarrollador de la plataforma
    Quiero implementar autenticación de dos factores (2FA)
    Para añadir una capa adicional de seguridad al proceso de autenticación de usuarios y proteger mejor sus cuentas.

Scenario: Solicitud de segundo factor de autenticación
    Dado que un usuario ha habilitado la autenticación de dos factores en su cuenta
    Cuando el usuario intente iniciar sesión con su correo electrónico y contraseña válidos
    Entonces el sistema debe solicitar un segundo factor de autenticación
    Y no permitir el acceso a la cuenta hasta que se proporcione el segundo factor

Examples:
    | correo electrónico         | contraseña             |
    | "usuario@example.com"     | "MiContraseñaSegura!"  |

Scenario: Verificación del código de autenticación
    Dado que un usuario recibe un código de autenticación en su dispositivo móvil o aplicación de autenticación
    Cuando el usuario ingresa el código en el formulario de autenticación de dos factores
    Entonces el sistema debe verificar la validez del código
    Y permitir el acceso solo si el código es correcto y no ha expirado

Examples:
    | código de autenticación |
    | "123456"               |




Feature: TS009: Módulo de ajuste de usuario

    Como usuario registrado
    Quiero acceder a un módulo detallado de ajustes de usuario
    Para personalizar completamente mis preferencias y gestionar con facilidad los aspectos más importantes de mi cuenta.

Scenario: Acceso al módulo de ajustes de usuario
    Dado que un usuario está plenamente autenticado en la plataforma
    Cuando accede al módulo de ajustes de usuario
    Entonces el sistema debe mostrar de manera clara y organizada todas las opciones de personalización

Examples:
    | opción de personalización         |
    | "Cambiar contraseña"             |
    | "Actualizar correo electrónico"  |
    | "Configurar notificaciones"      |

Scenario: Modificación de preferencias
    Dado que un usuario modifica cualquiera de sus preferencias dentro del módulo de ajustes
    Cuando el sistema recibe las actualizaciones
    Entonces el sistema debe guardar los cambios instantáneamente, de manera rápida y eficiente




Feature: TS010: Formulario de edición de perfil

    Como usuario registrado
    Quiero tener un formulario de edición de perfil
    Para actualizar mi información personal y mantener mi perfil actualizado con datos precisos.

Scenario: Acceso al formulario de edición de perfil
    Dado que un usuario está autenticado en la plataforma
    Cuando accede al formulario de edición de perfil
    Entonces el sistema debe mostrar un formulario con campos editables para la información personal del usuario

Examples:
    | campo              | tipo de dato     |
    | "Nombre"          | "Texto"          |
    | "Apellido"        | "Texto"          |
    | "Correo electrónico" | "Texto"      |
    | "Teléfono"        | "Número"         |

Scenario: Envío de datos actualizados
    Dado que un usuario realiza cambios en el formulario de edición de perfil
    Cuando el usuario envía el formulario con los datos actualizados
    Entonces el sistema debe validar la información ingresada
    Y guardar los cambios en la base de datos
    Y mostrar un mensaje de confirmación de que la actualización fue exitosa




Feature: TS011: Funcionalidad para gestión de fotos de perfil

    Como usuario registrado
    Quiero poder gestionar mi foto de perfil
    Para personalizar mi perfil con una nueva imagen y actualizarla cuando lo desee.

Scenario: Acceso a la gestión de foto de perfil
    Dado que un usuario está autenticado en la plataforma
    Cuando accede a la sección de gestión de foto de perfil
    Y selecciona la opción para agregar o actualizar su foto
    Entonces el sistema debe permitir al usuario cargar una nueva imagen desde su dispositivo
    Y permitir al usuario guardar la nueva foto de perfil

Scenario: Actualización de la foto de perfil
    Dado que un usuario ha cargado una foto de perfil
    Cuando el sistema recibe la imagen
    Entonces el sistema debe realizar validaciones básicas
    Y si la imagen cumple con los requisitos
    Entonces actualizar la foto de perfil en la base de datos
    Y mostrar un mensaje de confirmación indicando que la actualización fue exitosa




Feature: TS012: Funcionalidad de edición de perfil conectada a una API backend

    Como usuario registrado
    Quiero que la funcionalidad de edición de perfil esté conectada a una API backend
    Para asegurar que los cambios realizados en mi perfil se sincronicen correctamente con el servidor y se reflejen en la base de datos.

Scenario: Actualización de perfil exitoso
    Dado que un usuario está autenticado y accede al formulario de edición de perfil
    Cuando el usuario realiza cambios en su información personal
    Y envía el formulario
    Entonces el sistema debe hacer una llamada a la API backend con los datos actualizados
    Y recibir una respuesta que confirme que los cambios se han guardado correctamente en la base de datos
    Y mostrar un mensaje de confirmación al usuario

Scenario: Envío de formulario con datos incorrectos
    Dado que un usuario envía el formulario de edición de perfil con datos incorrectos o incompletos
    Cuando la API backend procesa la solicitud
    Entonces el sistema debe recibir un mensaje de error detallado desde la API




Feature: TS018: Implementar un sistema de notificaciones para avisar a los usuarios cuando alguien visualice su perfil o roadmap

    Como usuario registrado
    Quiero implementar un sistema de notificaciones que avise cuando alguien visualice mi perfil o roadmap
    Para estar informado sobre las visitas a mi perfil y roadmap, y poder gestionar mi privacidad y las interacciones de manera efectiva.

Scenario: Notificación de visualización de perfil
    Dado que un usuario ha visualizado el perfil de otro usuario
    Cuando la visualización del perfil se completa
    Entonces el sistema debe enviar una notificación al usuario cuyo perfil ha sido visualizado
    Y la notificación debe indicar la fecha y la hora de la visualización

Scenario: Notificación de visualización de roadmap
    Dado que un usuario ha visualizado el roadmap de otro usuario
    Cuando la visualización del roadmap se completa
    Entonces el sistema debe enviar una notificación al usuario cuyo roadmap ha sido visualizado
    Y la notificación debe incluir información sobre la fecha y la hora de la visualización
    Y ofrecer opciones para gestionar la notificación, como ver detalles sobre quién ha visualizado el roadmap o ajustar la configuración de notificaciones




Feature: TS019: Asegurar la integración del sistema de mensajes directos

    Como usuario registrado
    Quiero asegurar la integración del sistema de mensajes directos
    Para garantizar que las funcionalidades de mensajería entre usuarios y empresas funcionen correctamente y de manera fluida dentro de la aplicación, mejorando la comunicación y la interacción entre los usuarios.

Scenario: Integración de mensajes directos entre usuarios
    Dado que un usuario envía un mensaje directo a otro usuario
    Cuando el mensaje es enviado
    Entonces el sistema debe asegurar que el mensaje se entregue de manera inmediata al destinatario
    Y que ambos usuarios puedan ver el mensaje en su historial de chat
    Y no debe haber errores en la recepción o en la visualización de los mensajes

Scenario: Integración de mensajes directos entre usuarios y empresas
    Dado que un usuario envía un mensaje directo a una empresa
    Cuando el mensaje es enviado
    Entonces el sistema debe asegurar que el mensaje se entregue correctamente al destinatario en la empresa
    Y que ambos puedan visualizar el mensaje en su historial de chat
    Y la comunicación debe ser clara y no debe haber fallos en la entrega de mensajes




Feature: TS020: Implementación de un sistema de control de conexiones

    Como usuario registrado
    Quiero implementar un sistema de control de conexiones
    Para gestionar de manera eficiente las solicitudes y permisos de conexión, asegurando que las interacciones sean seguras y que se puedan administrar de acuerdo a las políticas de la plataforma.

Scenario: Control de solicitudes de conexión
    Dado que un usuario ha enviado una solicitud de conexión a otro usuario
    Cuando el destinatario recibe la solicitud
    Entonces el sistema debe permitir al destinatario aceptar, rechazar o ignorar la solicitud
    Y debe registrar el estado de la solicitud en el sistema para el seguimiento adecuado

Scenario: Gestión de conexiones existentes
    Dado que un usuario tiene conexiones establecidas con otros usuarios
    Cuando el usuario quiere gestionar estas conexiones
    Entonces el sistema debe permitir al usuario ver, modificar o eliminar las conexiones existentes
    Y el proceso debe ser intuitivo
    Y los cambios deben reflejarse inmediatamente en el sistema




Feature: TS021: Diseñar un sistema para reportar y bloquear usuarios

    Como usuario registrado
    Quiero diseñar un sistema para reportar y bloquear usuarios
    Para mantener un entorno seguro y libre de comportamiento inapropiado o no deseado, y poder gestionar mi experiencia en la plataforma de manera efectiva.

Scenario: Reportar usuarios
    Dado que un usuario encuentra a otro usuario que considera que está violando las políticas de la plataforma
    Cuando el usuario utiliza la opción de reporte desde el perfil del usuario en cuestión
    Entonces el sistema debe permitir al usuario enviar un reporte detallado sobre el comportamiento del usuario
    Y debe incluir la razón del reporte y cualquier evidencia relevante
    Y debe confirmar la recepción del reporte para su revisión por el equipo de moderación

Scenario: Bloquear usuarios
    Dado que un usuario desea evitar interacciones con otro usuario
    Cuando el usuario utiliza la opción de bloqueo desde el perfil del usuario en cuestión
    Entonces el sistema debe impedir que el usuario bloqueado pueda enviar mensajes o ver el perfil del usuario que ha realizado el bloqueo
    Y debe actualizar la lista de usuarios bloqueados del usuario para reflejar el nuevo estado




Feature: TS023: Poder suscribirme de manera fácil a una membresía premium

    Como usuario registrado
    Quiero poder suscribirme de manera fácil a una membresía premium
    Para acceder a todas las funcionalidades exclusivas de la plataforma sin complicaciones y mejorar mi experiencia de usuario.

Scenario: Proceso de suscripción simplificado
    Dado que un usuario desea suscribirse a una membresía premium
    Cuando el usuario inicia el proceso de suscripción
    Entonces el sistema debe proporcionar un flujo de suscripción simplificado
    Y debe permitir completar la suscripción con unos pocos pasos claros
    Y debe incluir la selección del plan, el ingreso de detalles de pago y la confirmación de la suscripción
    Y debe garantizar que el proceso sea intuitivo y eficiente

Scenario: Confirmación y acceso inmediato
    Dado que un usuario ha completado el proceso de suscripción a una membresía premium
    Cuando la transacción se haya procesado correctamente
    Entonces el sistema debe enviar una confirmación de suscripción al usuario
    Y debe activar inmediatamente todas las funcionalidades y beneficios de la membresía premium en la cuenta del usuario
    Y debe asegurar que el acceso a los recursos premium sea inmediato y sin interrupciones




Feature: TS024: Gestionar mi suscripción desde mi perfil

    Como usuario premium
    Quiero gestionar mi suscripción desde mi perfil
    Para tener la capacidad de revisar, actualizar o cancelar mi suscripción de manera sencilla y conveniente, según mis necesidades y preferencias.

Scenario: Visualización de detalles de suscripción
    Dado que un usuario premium accede a su perfil
    Cuando el usuario navega a la sección de suscripción
    Entonces el sistema debe mostrar claramente los detalles de la suscripción actual
    Y debe incluir el plan activo, la fecha de renovación, y los métodos de pago asociados
    Y debe permitir al usuario revisar esta información fácilmente

Scenario: Actualización y cancelación de suscripción
    Dado que un usuario premium desea actualizar o cancelar su suscripción
    Cuando el usuario selecciona la opción correspondiente en la sección de suscripción
    Entonces el sistema debe permitir al usuario actualizar el plan de suscripción
    Y debe permitir cambiar los detalles de pago, o cancelar la suscripción
    Y debe confirmar los cambios mediante notificaciones o mensajes de confirmación
    Y debe asegurar que las modificaciones se apliquen correctamente




Feature: TS025: Recibir una notificación antes de que mi membresía se renueve automáticamente

    Como usuario premium
    Quiero recibir una notificación antes de que mi membresía se renueve automáticamente
    Para tener la oportunidad de revisar mi suscripción, realizar ajustes si es necesario, y evitar cargos inesperados.

Scenario: Notificación de renovación próxima
    Dado que un usuario premium está a punto de alcanzar la fecha de renovación de su membresía
    Cuando la fecha de renovación se acerque (por ejemplo, 7 días antes)
    Entonces el sistema debe enviar una notificación por correo electrónico y/o dentro de la aplicación
    Y debe informar al usuario sobre la próxima renovación automática
    Y debe incluir detalles sobre la suscripción y opciones para gestionar la renovación

Scenario: Opciones para gestionar renovación
    Dado que un usuario premium recibe una notificación sobre la renovación automática
    Cuando el usuario hace clic en la notificación o accede a la sección de suscripción desde la aplicación
    Entonces el sistema debe ofrecer opciones para que el usuario revise su plan actual
    Y debe permitir actualizar la información de pago, o cancelar la renovación automática
    Y debe asegurar que el usuario pueda tomar decisiones informadas antes de que se efectúe el cargo




Feature: TS026: Acceso a un periodo de prueba

    Como usuario nuevo
    Quiero tener acceso a un periodo de prueba
    Para experimentar las funcionalidades premium de la plataforma sin compromiso y decidir si deseo continuar con una suscripción de pago.

Scenario: Activación del periodo de prueba
    Dado que un usuario nuevo desea probar las funcionalidades premium
    Cuando el usuario se registra para el periodo de prueba
    Entonces el sistema debe activar el acceso a todas las características premium durante el periodo de prueba especificado
    Y debe proporcionar una confirmación de la activación junto con detalles sobre la duración del periodo de prueba y las funcionalidades disponibles

Scenario: Notificación antes del final del periodo de prueba
    Dado que un usuario está en el periodo de prueba
    Cuando el periodo de prueba está a punto de finalizar (por ejemplo, 2 días antes de la expiración)
    Entonces el sistema debe enviar una notificación por correo electrónico y/o dentro de la aplicación
    Y debe informar al usuario sobre la proximidad del final del periodo de prueba
    Y debe ofrecer opciones para suscribirse a una membresía premium si desea continuar con el acceso a las funcionalidades premium
