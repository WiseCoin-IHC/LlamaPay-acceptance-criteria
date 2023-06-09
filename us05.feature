Feature: Edición de datos de la tarjeta

    Como usuario
    Quiero editar los datos de mis tarjetas registradas para que estén actualizadas con los reales

    Scenario: Edición correcta de los datos de la tarjeta del usuario
    Given que el usuario ha iniciado sesión
    And se encuentre en la sección de "Lista de tarjetas"
    And seleccione la tarjeta de su preferencia
    And presione el botón <Editar>
    When ingrese los datos de la tarjeta a modificar correctamente
    And se valide que los datos ingresados son correctos y corresponden a una tarjeta válida
    And confirme el cambio de los datos de su tarjeta mediante un correo de confirmación
    Then la tarjeta será editada correctamente
    And se mostrará un mensaje de "Datos correctamente modificados"

    Examples:
    |Lista de tarjetas  | número de tarjeta  | fecha de vencimiento | código de seguridad | nombre del titular | notificación                    |
    |Editar             | 1234567890123456   | 12/24                | 123                 | Juan Pérez         | Datos correctamente modificados |
    |Editar             | 9876543210987654   | 06/23                | 789                 | María Gómez        | Datos correctamente modificados |

    Scenario: Edición incorrecta de algún dato de la tarjeta del usuario
    Given que el usuario ha iniciado sesión
    And se encuentre en la sección de "Lista de tarjetas"
    And seleccione la tarjeta de su preferencia
    And presione el botón <Editar>
    When ingrese los datos a modificar de la tarjeta
    And no se valide que los datos ingresados son correctos o no corresponden a una tarjeta válida o no ha sido completado algún campo
    Then la tarjeta no será editada
    And se mostrará un mensaje de "Datos ingresados no válidos"
    Examples:
    |Lista de tarjetas  | número de tarjeta  | fecha de vencimiento | código de seguridad | nombre del titular | notificación                    |
    |Editar             | 1234567890123456   | 12/24                | 123                 | Juan Pérez         | Datos ingresados no válidos     |
    |Editar             | 9876543210987654   | 06/23                | 789                 | María Gómez        | Datos ingresados no válidos     |

    Scenario: Eliminación de la tarjeta del usuario
    Given que el usuario ha iniciado sesión
    And se encuentre en la sección de "Lista de tarjetas"
    When seleccione la tarjeta de su preferencia
    And presione el botón <Eliminar>
    And se valide que la tarjeta no posee algún trámite pendiente
    And confirme su decisión con el botón <Aceptar>
    Then la tarjeta será eliminada de la lista de tarjetas del usuario
    And se mostrará un mensaje de "Tarjeta eliminada correctamente"
    |Lista de tarjetas  | número de tarjeta  |Tramite pendiente  | notificación                    |
    |Eliminar           | 1234567890123456   |No                 | Tarjeta no eliminada            |
    |Eliminar           | 9876543210987654   |Sí                 | Tarjeta eliminada correctamente |
