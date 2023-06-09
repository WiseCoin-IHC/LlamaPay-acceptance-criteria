Feature: Modificación de plazo de objetivo de ahorro

Como usuario 
quiero poder replantear los plazos de mis objetivos personalizados 
para que tenga tiempo de ahorrar mensualmente

Scenario: Modificación del plazo de un objetivo de ahorro existente
    Given el usuario se encuentre en el apartado de Objetivos de Ahorro"
    And seleccione entre todos los objetivos que tiene el que desea editar 
    When realice los cambios en la fecha límite del objetivo
    And seleccione la opción <Guardar cambios>
    Then se actualizarán los datos del objetivo.  
    Examples:
        |Objetivos de Ahorro| Nuevo objetivo| nombre                 | monto   | fecha       |nueva_fecha_limite |
                                            | Inicial de departamento| S/50000 | 2024-12-31  |2025-03-30         | 
                                            | Viaje a Mancora        | S/4000  | 2023-06-30  |2023-12-01         |

