Feature: Mejorar precios 

    Como usuario 
    quiero obtener los mejores precios de los productos de primera necesidad 
    para optimizar los ingresos mensuales.

Scenario: Mejores precios
    Given que el usuario se encuentra ya en el inicio de la aplicación.
    And selecciona el apartado de <productos de primera necesidad>
    When realice la opción de <filtrar los productos por precio>
    And seleccione si lo quiere de mayor a menor o viceversa  
    Then la aplicación le mostrara los mejores precios de los 
            productos de primera necesidad.
    
    Examples:
        |     Azucar    |      Leche     |     Arroz    |
        |     S/3.95    |      S/3.80    |     S/3.50   |