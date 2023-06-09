Feature: Organización de gastos mensuales

Como usuario
quiero tener una lista de mis gastos mensuales
para poder tener un registro detallado de mis gastos y realizar un seguimiento efectivo de mis finanzas personales

Scenario: Descargar gastos en un Excel
    Given que el usuario se encuentre en el apartado de "Gastos"
    And seleccione la opción de <Gastos Mensuales>
    When ingrese, visualizará el mes actual con el registro de gastos
    And haga clic en el mes que es una opción desplegable
    And se le mostrará todos los meses registrados
    And seleccione el mes que desea visualizar
    Then le aparecerá al lado del mes un botón <Excel>
    When el usuario haga clic en el botón <Excel>
    Then se descargará automáticamente el listado de gastos en formato Excel

Examples:
    |Gastos|Gastos Mensuales| mes     |Total de gastos |
                            | Enero   |S/1600          |"Excel"|
                            | Febrero |S/900           |"Excel"|
                            | Marzo   |S/1950          |"Excel"|