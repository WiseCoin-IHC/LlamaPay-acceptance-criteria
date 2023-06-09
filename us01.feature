Feature: Creación de la cuenta

    Como usuario
    Quiero crear una cuenta en la aplicación
    Para acceder a las funcionalidades

    Scenario: Creación correcta de la cuenta mediante correo electrónico y contraseña
    Given que el usuario se encuentre en la sección de "Registrarse"
    When ingrese un correo no registrado "correo" y una contraseña que cumpla los requisitos de seguridad "contraseña"
    And presione el botón <Crear cuenta>
    And confirme la creación de su cuenta
    Then se creará su cuenta correctamente
    Examples:
    |Registrarse    | correo                 | contraseña    | notificación     |
                    | usuario1@example.com   | Contraseña123 | Registro exitoso |
                    | usuario2@example.com   | Password456   | Registro exitoso |
                    | usuario3@example.com   | Securepass789 | Registro exitoso |

    Scenario: La contraseña no cumple con los requisitos
    Given que el usuario se encuentre en la sección de "Registrarse"
    When ingrese un correo no registrado "correo" y una contraseña que no cumpla los requisitos de seguridad "contraseña"
    And presione el botón <Crear cuenta>
    Then se mostrará un mensaje de error indicando que la contraseña no cumple con los requisitos
    |Registrarse    | correo                 | contraseña    | notificación                                 |
                    | usuario1@example.com   | 123           | Contraseña no segura. Valida los requisitos"  |
                    | usuario2@example.com   | 0981          | Contraseña no segura. Valida los requisitos"  |
                    | usuario3@example.com   | riki16        | Contraseña no segura. Valida los requisitos"  |
    Scenario: El correo electrónico se encuentra registrado
    Given que el usuario se encuentre en la sección de "Registrarse"
    When ingrese un correo registrado "correo" o una contraseña que cumpla los requisitos de seguridad "contraseña"
    And presione el botón <Crear cuenta>
    Then se mostrará un mensaje de error indicando que el correo ya ha sido registrado

Examples:
    |Registrarse    | correo                 | contraseña    |
                    | usuario1@example.com   | Hay una cuenta creada con este correo. Inicie sesion  |
                    | usuario2@example.com   | Hay una cuenta creada con este correo. Inicie sesion  |
                    | usuario3@example.com   | Hay una cuenta creada con este correo. Inicie sesion  |
