Feature: Configuración de la verificación de 2 pasos

  Como usuario
  Quiero configurar la verificación de 2 pasos en mi cuenta para mayor seguridad en mis datos personales

  Scenario: Configuración correcta de la verificación de 2 pasos
    Given que el usuario ha iniciado sesión en su cuenta
    When acceda a la sección de configuración de seguridad
    And seleccione la opción <Verificación de 2 pasos>
    And siga los pasos para configurar la verificación de 2 pasos correctamente
    Then la verificación de 2 pasos se configurará correctamente en su cuenta
    And se mostrará un mensaje de "Verificación de 2 pasos configurada correctamente"

    Examples:
      | Verificación de 2 pasos | notificación                                      |
                                | Verificación de 2 pasos configurada correctamente |
                                | Verificación de 2 pasos configurada correctamente |

  Scenario: Error en la configuración de la verificación de 2 pasos
    Given que el usuario ha iniciado sesión en su cuenta
    When acceda a la sección de configuración de seguridad
    And seleccione la opción "Verificación de 2 pasos"
    And al seguir los pasos de configuración se presente un error
    Then la verificación de 2 pasos no se configurará correctamente en su cuenta
    And se mostrará un mensaje de "Error en el proceso de verificación de 2 pasos" y se indicará el fallo

      | Verificación de 2 pasos | notificación                                                       |
                                | Error en el proceso de verificación de 2 pasos. Error en credencial|
                                | Error en el proceso de verificación de 2 pasos. Error en credencial|