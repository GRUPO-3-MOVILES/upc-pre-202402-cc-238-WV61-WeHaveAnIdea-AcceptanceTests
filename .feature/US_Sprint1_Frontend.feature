Feature: HU001: Registro de cuenta en la plataforma

    Como un nuevo usuario en la aplicación de Roademics
    Quiero registrarme en la plataforma creando una cuenta personal con el uso de datos pertinentes y adecuadamente informados por la aplicación
    Para obtener acceso completo a todas las funcionalidades de la aplicación, permitiéndome gestionar mi perfil, interactuar con el contenido y beneficiarme de las características ofrecidas

Scenario: Registro exitoso

    Dado que un usuario nuevo ha ingresado a la aplicación y ha completado todos los campos requeridos en el formulario de registro, incluyendo nombre, dirección de correo electrónico válida y contraseña, y ha aceptado los términos y condiciones de uso de la plataforma
    Cuando presiona el botón de "Registrar"
    Entonces el sistema debe crear la cuenta, almacenar de forma segura los datos provistos y mostrar un mensaje de confirmación del registro exitoso dentro de los próximos 3 segundos, permitiéndole proceder inmediatamente a la pantalla de inicio

Scenario: Correo electrónico ya en uso

    Dado que un usuario se encuentra dentro de la aplicación e intenta registrarse
    Cuando ingresa un correo electrónico que ya está registrado en el sistema
    Entonces la plataforma debe bloquear la creación de la cuenta y mostrar un mensaje de error indicando que el correo electrónico ya está en uso dentro de los próximos 2 segundos, sugiriendo además la opción de iniciar sesión

Scenario: Campos requeridos incompletos

    Dado que un usuario se encuentra dentro de la aplicación e intenta registrarse sin haber completado todos los campos obligatorios del formulario
    Cuando intenta enviar el formulario al presionar el botón de "Registrar"
    Entonces el sistema debe mostrar un mensaje de advertencia resaltando los campos faltantes dentro de los próximos 2 segundos, impidiendo que se avance hasta que se completen todos los datos requeridos

Scenario: Contraseña no cumple con los requisitos

    Dado que un usuario ha ingresado a la aplicación para registrarse y durante el registro ha ingresado una contraseña que no cumple con los requisitos mínimos de seguridad establecidos por la plataforma (como longitud, uso de caracteres especiales, números y mayúsculas)
    Cuando intente registrarse al presionar el botón "Registrar"
    Entonces el sistema debe mostrar un mensaje de error específico dentro de los próximos 3 segundos, detallando los criterios que no se cumplen, y bloquear el registro hasta que la contraseña cumpla con las políticas establecidas

Examples:
    | sección "Navegador Web"       |
    | opción "Formulario de Registro" |
    | Interfaz de Registro          | Apartado de "nueva cuenta"       |




Feature: HU003: Verificación de Correo Electrónico durante el registro

    Como un nuevo usuario dentro de la aplicación de Roademics
    Quiero recibir un correo electrónico de verificación de parte de la plataforma tras registrarme de forma adecuada
    Para poder confirmar mi identidad y activar mi cuenta de forma segura, evitando posibles problemas de seguridad en el futuro

Scenario: Envío exitoso del correo de verificación

    Dado que un nuevo usuario ha ingresado en la aplicación de Roademics y ha completado el registro en la plataforma de forma adecuada
    Cuando el sistema confirma la creación de la cuenta para el usuario
    Entonces debe enviarse automáticamente un correo electrónico con un enlace de verificación dentro de los próximos 5 segundos al correo indicado por el usuario en el formulario, el cual debe permitir la activación de la cuenta al ser clicado

Scenario: Usuario intenta iniciar sesión sin haber verificado la cuenta

    Dado que un usuario ha creado su cuenta de forma exitosa, pero ha intentado iniciar sesión sin haber completado el proceso de verificación de correo electrónico
    Cuando introduce sus credenciales en la pantalla de inicio de sesión dentro de la aplicación
    Entonces el sistema debe mostrar un mensaje de error en los próximos 2 segundos que le informe que debe verificar su correo electrónico para poder acceder a su cuenta, y proporcionarle la opción de reenviar el correo de verificación

Scenario: Reenvío del correo de verificación

    Dado que un usuario ya se ha registrado correctamente hasta el proceso de verificación, pero el correo aún no le ha sido enviado, y solicita reenviar el correo de verificación desde la pantalla de registro
    Cuando selecciona la opción de "Reenviar correo"
    Entonces el sistema debe enviar nuevamente el correo electrónico de verificación dentro de los próximos 5 segundos y mostrar un mensaje confirmando que el correo ha sido reenviado exitosamente, además de indicarle al usuario que hay un temporizado de 30 segundos antes de que pueda volver a presionar la opción de "Reenviar correo"

Examples:
    | sección "Navegador Web"       |
    | opción "Formulario de Registro" |
    | Interfaz de Registro          | Apartado de "verificación de correo" |




Feature: HU004: Inicio de sesión con cuenta de la aplicación

    Como usuario ya registrado de forma adecuada en la aplicación de Roademics
    Quiero poder iniciar sesión en la plataforma utilizando datos pertinentes como mi correo electrónico y contraseña
    Para acceder a mi cuenta de manera rápida y directa, lo que me permitirá gestionar todas las funcionalidades y datos asociados a la misma de forma eficiente

Scenario: Inicio de sesión exitoso

    Dado que un usuario tiene una cuenta registrada en la plataforma
    Cuando ingresa correctamente su correo electrónico o nombre de usuario y contraseña en el formulario de inicio de sesión
    Entonces el sistema debe autenticar al usuario y redirigirlo automáticamente al dashboard principal de su cuenta dentro de los próximos 3 segundos, permitiéndole acceder a sus datos y configuraciones personales

Scenario: Datos o contraseña incorrectos

    Dado que un usuario intenta iniciar sesión en la aplicación de Roademics
    Cuando ingresa una contraseña o correo electrónico incorrecto
    Entonces el sistema no debe permitir el acceso a la cuenta y debe mostrar un mensaje de error claro que indique que las credenciales son incorrectas, junto con opciones para recuperar o restablecer la contraseña dentro de los próximos 3 segundos

Scenario: Bloqueo de cuenta tras múltiples intentos fallidos

    Dado que un usuario ha realizado 5 intentos fallidos de inicio de sesión
    Cuando intenta realizar un sexto intento, el cual también es fallido
    Entonces el sistema debe bloquear temporalmente la cuenta durante un período de 15 minutos y mostrar un mensaje de advertencia indicando que la cuenta ha sido bloqueada por motivos de seguridad, sugiriendo al usuario que intente nuevamente más tarde

Scenario: Advertencia de bloqueo de cuenta tras múltiples intentos fallidos

    Dado que un usuario ha realizado 4 intentos fallidos de inicio de sesión
    Cuando intenta realizar un quinto intento
    Entonces el sistema debe enviarle una advertencia a través de un mensaje flotante en menos de 3 segundos donde se le indica que la cuenta se bloqueará por un total de 15 minutos si es que agrega sus credenciales de forma adecuada en esta ocasión

Scenario: Opción de recordar sesión

    Dado que un usuario está dentro de la aplicación y se encuentra en la pantalla de inicio de sesión
    Cuando selecciona la opción de "Recordar sesión" antes de iniciar sesión, opción que estará justo debajo del botón de "Recuperar Contraseña"
    Entonces el sistema debe almacenar de manera segura las credenciales del usuario en el dispositivo, permitiendo que la próxima vez que acceda a la aplicación se le redirija automáticamente al dashboard sin necesidad de ingresar nuevamente su correo electrónico y contraseña, todo esto dentro de los próximos 2 segundos tras el inicio de sesión exitoso

Examples:
    | sección "Navegador Web"       |
    | opción "Pantalla de Inicio de Sesión" |
    | Interfaz de Inicio de Sesión  | Apartado de "Recuperar Contraseña" |





Feature: HU041: Diseñar una landing page persuasiva con un claro llamado a la acción (CTA)

    Como diseñador web
    Quiero diseñar una landing page persuasiva con un claro llamado a la acción (CTA)
    Para maximizar la conversión de visitantes en usuarios activos y asegurar que el mensaje principal y las acciones deseadas sean destacadas y fácilmente accesibles

Scenario: El visitante accede a la landing page y visualiza el diseño

    Dado que un visitante accede a la landing page
    Cuando el visitante visualiza la página
    Entonces el diseño debe ser visualmente atractivo y funcional, con una estructura clara que dirija la atención hacia el llamado a la acción (CTA)

Scenario: El visitante interactúa con el llamado a la acción (CTA)

    Dado que un visitante está en la landing page
    Cuando el visitante interactúa con la página
    Entonces el llamado a la acción (CTA) debe ser claramente visible y fácilmente accesible, invitando a realizar la acción deseada

Examples:
    | sección "Navegador Web"     |
    | opción "Landing Page"       |
    | Interfaz de Landing Page     | Apartado de "suscripciones"     |




Feature: HU042: Visualizar contenido de Landing Page

    Como visitante de la plataforma
    Quiero poder visualizar el contenido de la landing page
    Para obtener toda la información relevante sobre los productos o servicios ofrecidos y tomar una decisión informada sobre la acción a seguir

Scenario: El visitante accede y carga la landing page

    Dado que un visitante accede a la landing page
    Cuando el visitante carga la página
    Entonces el contenido debe ser completamente visible, incluyendo texto, imágenes, videos y otros elementos multimedia, sin problemas de carga o visualización

Scenario: El visitante busca información adicional

    Dado que un visitante está en la landing page
    Cuando el visitante desea obtener más información
    Entonces el sistema debe proporcionar enlaces o botones que permitan acceder a detalles adicionales, como descripciones extensas, especificaciones del producto o testimonios

Examples:
    | sección "Navegador Web"     |
    | opción "Landing Page"       |
    | Interfaz de Landing Page     | Apartado de "productos"         |




Feature: HU043: Formulario de contacto

    Como visitante de la plataforma
    Quiero tener acceso a un formulario de contacto
    Para poder enviar consultas, comentarios o solicitudes a la empresa de manera rápida y sencilla

Scenario: El visitante accede al formulario de contacto

    Dado que un visitante quiere contactar a la empresa
    Cuando el visitante accede al formulario de contacto
    Entonces el formulario debe ser accesible desde la landing page, permitiendo al visitante ingresar su nombre, dirección de correo electrónico, asunto y mensaje, y debe enviar la información de manera efectiva al equipo de soporte sin errores

Scenario: El visitante envía una consulta

    Dado que un visitante ha enviado una consulta a través del formulario de contacto
    Cuando el formulario es enviado
    Entonces el sistema debe mostrar una confirmación de envío exitosa y proporcionar un mensaje indicando que la consulta será revisada, además de enviar un correo electrónico de confirmación al visitante con la información proporcionada y un número de referencia si es aplicable

Examples:
    | sección "Navegador Web"     |
    | opción "Landing Page"       |
    | Interfaz de Landing Page     | Apartado de "contacto"         |




Feature: HU044: Implementación de footer

    Como visitante de la plataforma
    Quiero que el footer esté implementado en todas las páginas
    Para tener acceso a información adicional, enlaces importantes y recursos útiles sin importar en qué sección me encuentre

Scenario: El visitante visualiza el footer en cualquier página

    Dado que un visitante está en cualquier página de la plataforma
    Cuando el visitante desplaza hacia abajo
    Entonces el footer debe incluir enlaces visibles y accesibles a secciones importantes como "Sobre nosotros", "Contacto", "Términos y condiciones", "Política de privacidad" y enlaces a redes sociales, garantizando que el visitante pueda acceder a la información relevante fácilmente

Scenario: El visitante navega en diferentes dispositivos

    Dado que un visitante está navegando en diferentes dispositivos
    Cuando el visitante visualiza el footer en dispositivos móviles y de escritorio
    Entonces el diseño del footer debe ser consistente y funcional en todos los tamaños de pantalla, asegurando que los elementos sean legibles y accesibles, y que el footer se adapte correctamente a diferentes resoluciones sin pérdida de funcionalidad

Examples:
    | sección "Navegador Web"     |
    | opción "Landing Page"       |
    | Interfaz de Landing Page     | Apartado de "footer"          |




Feature: HU045: Responsive Landing Page

    Como visitante de la plataforma
    Quiero que la landing page se adapte de manera responsiva a diferentes dispositivos y tamaños de pantalla
    Para tener una experiencia de usuario óptima sin importar el dispositivo que utilice para acceder a la página

Scenario: El visitante accede a la landing page desde un dispositivo móvil

    Dado que un visitante accede a la landing page desde un dispositivo móvil
    Cuando el visitante visualiza la página
    Entonces el diseño debe adaptarse para que todos los elementos sean legibles y accesibles, con una navegación intuitiva y botones de llamada a la acción (CTA) claramente visibles y fáciles de usar en pantallas pequeñas

Scenario: El visitante accede a la landing page desde un dispositivo de escritorio

    Dado que un visitante accede a la landing page desde un dispositivo de escritorio
    Cuando el visitante visualiza la página
    Entonces el diseño debe ajustarse para aprovechar el espacio adicional en pantallas más grandes, manteniendo una disposición clara y organizada de los elementos, y asegurando que la experiencia de usuario sea coherente y atractiva en una variedad de resoluciones de pantalla

Examples:
    | sección "Navegador Web"     |
    | opción "Landing Page"       |
    | Interfaz de Landing Page     | Apartado de "responsive design" |
