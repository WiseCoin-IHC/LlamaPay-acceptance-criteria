Feature: Pagos automáticos

    Como usuario 
    quiero que se efectúen ciertos pagos automáticamente 
    para no olvidarme

Scenario: Pagos automatizados
    Given que el usuario se encuentra ya en el inicio de la aplicación.
    And se dirige a la sección de <metodos de pago>
    When ingrese la tarjeta que el desee vincular
    And active la función de <pago automatico>
    Then la tarjeta realizara de forma automática los servicios seleccionados

    Examples: 
        | Nro de tarjeta |Fecha vencimiento|  CVV  |    Pago    |
        | 10781350021455 |     07/2025     |  705  | automático |