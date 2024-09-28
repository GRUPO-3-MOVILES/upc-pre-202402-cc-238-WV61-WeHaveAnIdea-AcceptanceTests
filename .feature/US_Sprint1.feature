Feature: TS013: Creación de una estructura de datos en grafo para representar los roadmaps

    Como desarrollador
    Quiero crear una estructura de datos en grafo para representar los roadmaps
    Para tener una representación eficiente y flexible de los pasos, relaciones y dependencias dentro del roadmap, facilitando la visualización, manipulación y análisis de la información.

Scenario: Definición de nodos y aristas en la estructura de grafo

    Dado que se está creando una estructura de datos en grafo para un roadmap,
    Cuando se definen los nodos (pasos) y aristas (relaciones) del grafo,
    Entonces el sistema debe permitir la definición de nodos con atributos como nombre, descripción, fecha límite, y prioridad, y establecer aristas que representen las relaciones entre nodos.

Scenario: Persistencia de datos del grafo

    Dado que un usuario crea y actualiza un roadmap utilizando la estructura de datos en grafo,
    Cuando se guardan los cambios en el roadmap,
    Entonces el sistema debe almacenar la estructura del grafo en una base de datos de manera eficiente, asegurando que los nodos, aristas y sus atributos se persistan correctamente y puedan ser recuperados y manipulados en futuras sesiones.

Examples:
    | Nodo         | Atributos de Nodo                             | Arista               |
    | "Paso 1"     | "Nombre, Descripción, Fecha límite, Prioridad" | "Relación entre nodos" |
    | "Paso 2"     | "Nombre, Descripción, Fecha límite, Prioridad" | "Relación entre nodos" |
