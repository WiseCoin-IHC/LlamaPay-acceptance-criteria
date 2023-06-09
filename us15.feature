Feature: Modificar frecuencia de notificaciones 

    Como usuario
    quiero ajustar frecuencia de las notificaciones de mis pagos 
    para recibirlos a mi gusto.

Scenario: Modificar frecuencia de los recordatorios
    Given el usuario se encuentra en la sección de <Recordatorios de pagos>
    And el sistema muestra todos los recordatorios creados
    When el usuario seleccione un recordatorio creado
    And presione <Modificar frecuencia>
    Then el sistema pide al usuario ingresar la nueva frecuencia.

Scenario: Guardar cambios de modificación
    Given el sistema pide al usuario ingresar la nueva frecuencia
    And usuario ingrese la nueva "frecuencia"
    When el usuario presione <Guardar cambios>
    Then el sistema guarda los cambios
    And el sistema muestra el mensaje de "Se guardo correctamente"

    Examples:
        |    Recordatorio   |  frecuencia  |
        |  Pago de tarjeta  |  diaramente  |
        |  Pago de celular  | mensualmente | 