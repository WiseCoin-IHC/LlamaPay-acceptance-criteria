Feature: Consejos optimización de economía

    Como usuario
    quiero recibir consejos económicos específicos 
    para mejorar mi economía

Scenario: Consejos para mejorar mi economía
    Given que el usuario quiera consejos hechos por la IA
    When ingrese al apartado de <Consejos>
    And  seleccione <Mejorar mi economia>
    Then la IA revisará los gastos del último mes
    And generará "consejos" para ayudar al usuario con su economía

    Examples:
        |                    Consejo                      |
        |   Trata de reducir tus gastos en comida rapida  |