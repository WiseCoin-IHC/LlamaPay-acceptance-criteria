Feature: Libre de anuncios

    Como usuario
    quiero que la app me permita trabajar libremente sin mostrarme anuncios 
    para así ser más productivo.

Scenario: Trabajar sin anuncios
    Given que el usuario ya ingreso a la aplicación.
    And se dirige a la sección de <inicio de sesion>
    When ingrese su "cuenta" con suscripción premium.
    And comience a realizar actividades en la aplicación.
    Then no se le mostraran ningún tipo de anuncios en la pantalla.

    Examples:
        |         Cuenta       | Tipo de Cuenta |
        | luisperez@gmail.com  |     Premium    | 
