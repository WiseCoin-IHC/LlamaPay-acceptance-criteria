Feature: Gráfica de gastos mensuales

  Como usuario
  Quiero contar con un gráfico de mis gastos mensuales
  Para tener un registro detallado de mis gastos y realizar un seguimiento efectivo de mis finanzas personales

  Scenario: Obtener listado de gastos totales
    Given que el usuario se encuentre en el apartado de "Gastos"
    When haga clic en el mes que es una opción desplegable
    And seleccionará el mes que desea visualizar
    Then el sistema mostrará, mediante una gráfica, todos los gastos registrados del mes agrupados en categorías

Examples:
    |Gastos|Gastos Mensuales| Mes       | Gráfica |
                            | Enero     |         |
                            | Febrero   |         |
                            | Marzo     |         |
                            | Abril     |         |
                            | Mayo      |         |
                            | Junio     |         |
                            | Julio     |         |
                            | Agosto    |         |
                            | Septiembre|         |
                            | Octubre   |         |
                            | Noviembre |         |
                            | Diciembre |         |
