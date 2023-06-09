Feature: Inicio de sesión seguro

    Como usuario
    Quiero iniciar sesión con mi correo, contraseña y un código de verificación para un acceso seguro

    Scenario: Inicio de sesión mediante correo electrónico y contraseña
    Given que el usuario se encuentre en la sección de "Inicio de sesión"
    When ingrese su correo "correo" y contraseña "contraseña" correctamente
    And presione el botón <Iniciar sesión>
    Then el sistema enviará un mensaje con un código de seguridad
    And el sistema solicitará al usuario que ingrese el código para verificar su identidad

    Examples:
        | correo                | contraseña   | Codigo Ingresado  |
        | usuario1@example.com  | contraseña1  | 123456            |
        | usuario2@example.com  | password2    | 987654            |
        | usuario3@example.com  | securepass3  | 543210            |

    Scenario: Inicio de sesión luego de verificar la identidad
    Given que el sistema solicita al usuario que ingrese el código para verificar su identidad
    When el usuario ingrese correctamente el código "<codigo>"
    And presione el botón <Verificar>
    Then el sistema iniciará la sesión del usuario
    And el sistema mostrará un mensaje de bienvenida

    Examples:
        | codigo  | mensaje                 |
        | 123456  | Bienvenido a LlamaPay   |
        | 987654  | Codigo Erroneo          |
        | 543210  | Bienvenido a LlamaPay   |
