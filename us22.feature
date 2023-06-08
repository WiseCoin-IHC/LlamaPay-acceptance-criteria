Feature: Consejo de inversión 

    Como usuario 
    quiero saber cuánto y cuándo es buen momento 
    para invertir correctamente

Scenario: Consejo de inversión
    Given que el usuario quiera consejos hechos por la IA
    When ingrese al apartado de <Consejos> 
    And seleccione <Inversion> 
    Then la IA revisará los gastos del último mes
    And revisará los objetivos que tengas
    And generará "consejos" para ayudar al usuario al empezar a invertir

    Examples:
        |                      Consejo                       |
        |  Recomendamos invertir cuando el dolar de aprecie  |