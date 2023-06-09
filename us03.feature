Feature: Edición de datos del perfil

    Como usuario
    Quiero editar la información de mi perfil, como mi nombre, correo electrónico y contraseña
    Para actualizarla cuando yo desee

    Scenario: Edición de nombre del usuario
    Given que el usuario ha iniciado sesión
    And se encuentre en el apartado de <Perfil>
    When el usuario acceda a la sección de <Editar perfil>
    And cambia el nombre de su cuenta a <nuevo_nombre>
    Then el nombre anterior será reemplazado por el nuevo nombre en la información del perfil
    And se mostrará el mensaje "Cambio realizado con éxito"

    Examples:
    |Perfil         | nuevo_nombre   | notificación               |
    |Editar perfil  | Juan Pérez     | Cambio realizado con éxito |
                    | María López    | Cambio realizado con éxito |
                    | Carlos Ramírez | Cambio realizado con éxito |

    Scenario: Edición de correo electrónico
    Given que el usuario ha iniciado sesión
    And se encuentre en el apartado de <Perfil>
    When el usuario acceda a la sección de <Editar perfil>
    And cambia el nombre de su cuenta a <nuevo_nombre>
    And confirme el cambio de su correo electrónico mediante un correo de confirmación
    Then el correo electrónico anterior será reemplazado por el nuevo correo electrónico introducido
    And se mostrará el mensaje "Cambio realizado con éxito"

    Examples:
        | nuevo_correo                    | notificación               |
        | nuevo_usuario@example.com       | Cambio realizado con éxito |
        | usuario_actualizado@example.com | Cambio realizado con éxito |
        | correo_nuevo@example.com        | Cambio realizado con éxito |

    Scenario: Edición de contraseña
    Given que el usuario ha iniciado sesión
    And se encuentre en el apartado de <Perfil>
    When el usuario acceda a la sección de <Editar perfil>
    And cambia el nombre de su cuenta a <nuevo_nombre>
    And confirme el cambio de su contraseña mediante un correo de confirmación
    Then la contraseña anterior será reemplazada por la nueva contraseña introducida
    And se mostrará el mensaje "Cambio realizado con éxito"

    Examples:
        | nueva_contraseña | notificación               |
        | nueva123         | Cambio realizado con éxito |
        | segura456        | Cambio realizado con éxito |
        | actualizada789   | Cambio realizado con éxito |
