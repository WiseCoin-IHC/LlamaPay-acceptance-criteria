Feature: Registro de datos de la tarjeta

    Como usuario
    Quiero registrar mi tarjeta en la plataforma para usarla en el momento del pago

    Scenario: Ingreso correcto de los datos de la tarjeta del usuario
    Given que el usuario ha iniciado sesión
    And se encuentre en la sección de <Registro de tarjeta>
    When ingrese los datos de la tarjeta correctamente
    And presione el botón <Registro de tarjeta>
    Then se validará que los datos ingresados son correctos y corresponden a una tarjeta válida
    And la tarjeta será agregada a la lista de tarjetas del usuario
    And se mostrará el mensaje "Registro de tarjeta correcto"

    Examples:
    |Registro de tarjeta| número de tarjeta  | fecha de vencimiento | código de seguridad | nombre del titular |notificación                    |
                        | 1234567890123456   | 12/24                | 123                 | Juan Pérez         | Registro de tarjeta correcto   |
    
    Scenario: Ingreso incorrecto de algún dato de la tarjeta del usuario
    Given que el usuario ha iniciado sesión
    And se encuentre en la sección de <Registro de tarjeta>
    When ingrese alguno de los datos de la tarjeta incorrectamente
    And presione el botón <Registro de tarjeta>
    Then se mostrará el mensaje "Alguno de los datos ingresados es incorrecto"

    Examples:
    |Registro de tarjeta| número de tarjeta  | fecha de vencimiento | código de seguridad | nombre del titular |notificación                                |
                        | 123456789012345   | 12/24                | 123                 | Juan Pérez          |Alguno de los datos ingresados es incorrecto|