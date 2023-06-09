Feature: Deshabilitar verificación de 2 pasos

  Como usuario
  Quiero deshabilitar la verificación de 2 pasos
  Para tener un mayor control en mi cuenta

  Scenario: Deshabilitación correcta de la verificación de 2 pasos
    Given que el usuario ha iniciado sesión
    And se encuentre en la sección de configuración de seguridad
    When deshabilite la opción de verificación de 2 pasos
    And confirme su decisión mediante una ventana emergente
    And se valide mediante un código de confirmación a su correo electrónico o celular
    Then la verificación de 2 pasos será deshabilitada correctamente
    And se mostrará un mensaje de "Verificación de 2 pasos deshabilitada correctamente"
  Examples:
    | Usuario  | Contraseña    | Código de Confirmación | Mensaje Esperado                                        |
    | user122  | password123   | 123456                | Verificación de 2 pasos deshabilitada correctamente     |

  Scenario: Deshabilitación incorrecta de la verificación de 2 pasos
    Given que el usuario ha iniciado sesión
    And se encuentre en la sección de configuración de seguridad
    When deshabilite la opción de verificación de 2 pasos
    And confirme su decisión mediante una ventana emergente
    And la valide mediante un código de confirmación a su correo electrónico o celular no sea la correcta
    Then la verificación de 2 pasos no será deshabilitada
    And se mostrará un mensaje de "Error al momento de deshabilitar la verificación de 2 pasos"

  Examples:
    | Usuario  | Contraseña    | Código de Confirmación | Mensaje Esperado                                        |
    | user456  | password789   | 654321                | Error al momento de deshabilitar la verificación de 2 pasos |
