Feature: Personalizar interfaz de la aplicación

    Como usuario
    quiero cambiar los colores y temas de la interfaz 
    para sentirme más a gusto al navegar en la aplicación

Scenario: Cambiar color de fuente y temas
    Given que el usuario se encuentra en el apartado de <Home>
    And visualice la barra de navegación
    When pulse el botón de <configuracion>
    And seleccione un "tema específico" en el apartado de Temas
    Then la aplicación adaptará su interfaz al color y tema seleccionado

    Examples:
        | Tema específico |
        |      Claro      |
        |      Oscuro     |