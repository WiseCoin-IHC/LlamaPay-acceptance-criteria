Feature: Creación de recordatorio

    Como usuario
    quiero recibir notificaciones de los pagos pendientes 
    para así no olvidarme y tener que pagar intereses.

Scenario: Usuario visualiza el formulario “Crear recordatorio”
    Given el usuario entre a la sección de <Recordatorios de pagos>
    When el usuario selecciona <Crear recordatorio>
    Then el sistema muestra el apartado <Crear recordatorio> 
        conteniendo los campos "Tipo de pago", "Fecha de vencimiento"
         y "Frecuencia de aviso" los cuales son requeridos.
     

Scenario: Usuario crea recordatorio 
    Given el sistema muestra el apartado <Crear recordatorio>
    And el usuario rellene los campos requeridos con información válida.
    When el usuario presione <Crear Recordatorio>
    Then el sistema crea el recordatorio
    And el sistema muestra el mensaje de "Su recordatorio fue creado con éxito"

    Examples:
        |   Tipo de pago   | Fecha de vencimiento | Frecuencia de aviso |
        | Pago de tarjeta  |      10/07/2023      |     interdiario     |
        |   Pago de Luz    |      28/09/2023      |      diaramente     |
