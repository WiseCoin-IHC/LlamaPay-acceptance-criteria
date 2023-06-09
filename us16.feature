Feature: Modificar frecuencia de notificaciones

    Como usuario 
    quiero marcar como realizado los recordatorios creados 
    para dejar de recibir notificación y evitar confusiones con otros pagos.

Scenario: Actualizar estado de recordatorio
    Given el usuario se encuentra en la sección de <Recordatorios de pagos>
    And el sistema muestra todos los recordatorios creados
    When el usuario seleccione un recordatorio creado
    And presione <Pago realizado>
    Then el sistema actualiza el estado del recordatorio 
        y dejará de notificar este recordatorio
    And  el sistema muestra el mensaje de "Estado actualizado correctamente"

