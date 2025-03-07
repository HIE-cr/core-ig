# Guías para el estilo de codificación y convenciones

Escribir código legible es un arte y seguir las guías de estilo es una forma de garantizar que nuestro código esté siempre limpio, legible y coherente. Existen guías de estilo específicas para cada lenguaje, pero los estándares de codificación generales se aplican a todos los lenguajes de programación. No se deben seguir ciegamente; esfuércese por comprenderlas y pregunte cuando tenga dudas.

## General
- No duplique las funcionalidades (tenga en cuenta que esto no es así si la tarea en cuestión es puramente algorítmica).
- No acepte excepciones ni "falle silenciosamente".
- No escriba código que suponga funcionalidades futuras.
- Las excepciones deben ser excepcionales.

## Nombres de archivos y elementos
- Los nombres de archivo de los artefactos cuando contengan más de una palabra deben ser `kebab-case` (`country-list.fsh`).
- Los nombres de los perfiles y extensiones deben ser en `UpperCamelCase` (`Patient`, `PatientMotherMaidenName`).
- Los nombres de los elementos de los perfiles y extensiones deben ser en `lowerCamelCase` (`patient`, `motherMaidenName`).
- Los ids de los perfiles y extensiones deben ser en `kebab-case` (`patient`, `mother-maiden-name`).

## Formato
- Utilice 4 espacios para la identar (no tabs).
- Evita identación profunda.
- Utilice líneas en blanco para separar bloques de código.
- Evite los comentarios en línea.
- Romper líneas largas después de 120 caracteres.
- Eliminar espacios en blanco finales.
- No incluya espacios después de `(`, `[` o antes de `]`, `)`.
- No escribas mal
- No deje código comentado dentro del código de producción.
- Utilice una línea vacía entre los bloques de declaraciones o la cantidad requerida de espacios especificado en la guía de estilo respectiva.
- Utilice líneas vacías alrededor de bloques de varias líneas.
- Utilice espacios alrededor de los operadores, excepto los operadores unarios, como `!`.
- Utilice espacios después de las comas, después de los dos puntos y punto y coma, alrededor de `{` y antes de `}`.

## Scalfolding del directorio input/fsh
```
...
input/
  fsh/
    models/
      patient.fsh
      ...
    dataTypes/
      human-name.fsh
      ...
    profiles/
      patient.fsh
      ...
    extensions/
      patient-mother-maiden-name.fsh
      ...
    instances/
      patient-basic.fsh
      ...
    ruleSets/
      meta.fsh
      ...
    terminologies/
        conceptMaps/
            country-to-national.fsh
            ...
        valueSets/
            nationality-list.fsh
            ...
        codeSystems/
            country-code.fsh
            ...
        ...
...
```
