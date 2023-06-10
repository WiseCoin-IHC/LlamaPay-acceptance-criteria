Feature: Categorizar gastos mensuales 

    Como usuario
    quiero que pueda categorizar mis gastos mensuales 
    para que pueda ver en que categoría gasté de más

Scenario: Categorizar gastos
    Given que el usuario quiera consejos hechos por la IA
    When ingrese al apartado de <Consejos>
    And seleccione <Categorizar>
    Then la IA revisará los gastos de los últimos meses
    And categorizará cada gasto realizado

    Examples:
        |               Categorizar                 |
        |  50% Alimentos, 30% ropa, 20% servicios   |