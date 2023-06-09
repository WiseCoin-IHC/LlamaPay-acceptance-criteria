Feature: Verificación de 2 pasos al iniciar sesión

  Como usuario
  Quiero que se me envíe el código de seguridad a mi celular o correo electrónico
  Para verificar mi identidad en el inicio de sesión

  Scenario: Recepción del código de seguridad en el celular del usuario
    Given que el usuario haya configurado su cuenta para la verificación de 2 pasos, previamente
    And el usuario ha ingresado su nombre de usuario y contraseña correctamente
    When seleccione la opción <Iniciar sesión>
    And elija recibir el código de seguridad en su celular
    And presione el botón <Enviar código>
    Then se enviará un código de seguridad al número de celular registrado del usuario
    And se mostrará un mensaje indicando que el código ha sido enviado al celular
    And se redirigirá al usuario a la pantalla para ingresar el código recibido en su celular

    Examples:
      | Usuario | Contraseña  |Enviar Codigo  |Notificacion               |Codigo |
      | user122 | password123 |               |Se envió el código por sms |123456 |


  Scenario: Recepción del código de seguridad en el correo electrónico del usuario
    Given que el usuario haya configurado su cuenta para la verificación de 2 pasos, previamente
    And el usuario ha ingresado su nombre de usuario y contraseña correctamente
    When seleccione la opción <Iniciar sesión>
    And elija recibir el código de seguridad en su correo electrónico
    And presione el botón <Enviar código>
    Then se enviará un código de seguridad al correo electrónico registrado del usuario
    And se mostrará un mensaje indicando que el código ha sido enviado al correo electrónico
    And se redirigirá al usuario a la pantalla para ingresar el código recibido en su correo electrónico

    Examples:
      | Usuario | Contraseña  |Enviar Codigo  |Notificacion                  |Codigo |
      | user123 | password123 |               |Se envió el código por correo |123456 |
