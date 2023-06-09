Feature: Visualización y manipulación de objetivos de ahorro

Como usuario
quiero poder visualizar y manipular mis objetivos de ahorro,
para que pueda personalizar mis metas de ahorro y controlar mi progreso de manera efectiva.

Scenario: Creación de un objetivo de ahorro
    Given que el usuario se encuentre en el apartado de "Objetivos de Ahorro"
    And seleccione la opción de <Nuevo objetivo>
    When ingrese el nombre del objetivo 
    And el monto que desea ahorrar
    Y elija la fecha límite para alcanzar dicho objetivo 
    Y presione el botón <Crear cuenta>
    Then se creará el objetivo con el monto de 
    Y se mostrará en la lista de objetivos de ahorro.

    Examples:
        |Objetivos de Ahorro| Nuevo objetivo| nombre                 | monto   | fecha       |
                                            | Inicial de departamento| S/50000 | 2024-12-31  |
                                            | Viaje a Mancora        | S/4000  | 2023-06-30  |
Scenario: Eliminación de un objetivo de ahorro
    Given que el usuario se encuentre en el apartado de "Objetivos de Ahorro"
    And seleccione el objetivo que desea eliminar
    When esté dentro del objetivo podrá visualizar opción de más opciones
    Y seleccione la opción <Eliminar>
    Y confirme la notificación que sí desea eliminar el objetivo
    Then se eliminará el objetivo de manera definitiva de la lista de objetivos de ahorro.

    Examples:
        |Objetivos de Ahorro|  nombre                |                        |Eliminar|
                            | Inicial de departamento|                        |
                            | Viaje a Mancora        | Viaje a Mancora        |Sí      |

Scenario: Visualización objetivo de ahorro
    Given que el usuario se encuentre en el apartado de "Objetivos de Ahorro"
    And visualice los objetivos que tiene
    When le de clic en el objetivo
    Then se mostrarán los datos registrados de ese objetivo

    Examples:
        |Objetivos de Ahorro|  nombre                | monto   | fecha       |
                            | Inicial de departamento| S/50000 | 2024-12-31  |
                            | Viaje a Mancora        | 



