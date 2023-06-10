Feature: Cambiar el tamaño de la fuente

    Como usuario
    quiero configurar el tamaño de las letras 
    para sentirme más cómodo usando la app.

Scenario: Cambiar tamaño de fuente
    Given que el usuario se encuentra en el apartado de <Home>
    And visualice la barra de navegación
    When pulse el botón de <configuracion>
    And seleccione un "Tamaño especifico" en el apartado de tamaño de fuente
    Then la aplicación adaptará su interfaz al tamaño de letra seleccionado

    Examples:
        |  Tamaño especifico |
        |       Pequeño      |
        |       Grande       |