Feature: Métodos de pagos

    Como usuario
    quiero realizar mis pagos con distintos métodos 
    para tener una mayor flexibilidad.

Scenario: Métodos de pago
    Given que el usuario se encuentra ya en el inicio de la aplicación.
    And se dirige a la sección de <metodos de pago>
    When vincule sus diferentes tarjetas de débito o crédito que el desee
    And active la función de <pagos en linea>
    Then al momento de realizar los pagos de algún servicio tendrá 
        la opción de pagar con cualquiera de las tarjetas vinculadas
    
    Examples:
        | Nro de tarjeta |Fecha vencimiento|  CVV  |    Pago    |
        | 71489325412540 |     04/2028     |  425  |  en Linea  |