Feature: Registro y comparación de gastos mensuales

Como usuario 
quiero registrar y comparar mis gastos mensuales 
para crear presupuestos de los próximos meses

Scenario: Registro de gastos mensuales
    When seleccione la opción <Gastos Mensuales>
    And ingrese el gasto de fecha por un monto de 
    Then se registrará con éxito el gasto
    And se mostrará el mensaje "Registro exitoso"

    Examples:
    |Gastos Mensuales   | fecha      | monto  | notificación     |
                        | 2023-04-01 | 200.50 | Registro exitoso |
                        | 2023-04-15 | 50.00  | Registro exitoso |

Scenario: Comparación de gastos entre meses
    When seleccione la opción <astos Mensuales>
    And seleccione la opción <Comparar>
    And seleccione los meses y a comparar
    Then se mostrará la comparativa de gastos entre los meses seleccionados

    Examples:
    |Gastos Mensuales   |Comparar   | mes1     | mes2     |
                                    | enero    | febrero  |
                                    | S/2100   | S/1650   |
