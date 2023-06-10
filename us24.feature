Feature: Cambiar idioma de la aplicación 

    Como usuario 
    quiero poder cambiar el idioma de la aplicación 
    para aprovechar al máximo las funcionalidades.

Scenario: Cambiar idioma
    Given que el usuario se encuentra en el apartado de <Home>
    And visualice la barra de navegación
    When pulse el botón de <configuracion>
    And seleccione un nuevo "idioma" en el apartado de Idioma predeterminado
    Then se traducirá la aplicación al idioma seleccionado
    
    Examples:
        |  Idioma  |
        |  English |
        | Italiano |