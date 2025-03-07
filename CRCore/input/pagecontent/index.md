# HL7 FHIR CORE Costa Rica

Tenga en cuenta que esta guía de implementación aún se encuentra en desarrollo activo ([draft](http://hl7.org/fhir/extensions/CodeSystem-standards-status.html#standards-status-draft)) y no se garantiza [full backward compatibility](https://en.wikipedia.org/wiki/Backward_compatibility#In_software) con versiones anteriores antes de la versión v1.0.0 Final. **NO se recomienda aún** para implementaciones críticas o en producción, a menos que no le importe leer el changelog y aplicar algunos pasos de migración manual de vez en cuando.
{:.draft-note}

### Introducción

Bienvenido a la Guía de Implementación HL7 FHIR CORE para Costa Rica. Esta guía establece el conjunto de especificaciones y perfiles FHIR diseñados para garantizar la interoperabilidad de los sistemas de información en salud en el país. 

El estándar **FHIR (Fast Healthcare Interoperability Resources)** de HL7 proporciona un modelo de datos flexible y extensible para el intercambio de información clínica y administrativa en salud. La presente guía se basa en las mejores prácticas internacionales y se adapta al contexto normativo y técnico de Costa Rica.

### Alcance

Esta guía define los perfiles, extensiones, terminologías y reglas de negocio para el intercambio de datos clínicos y administrativos en Costa Rica, incluyendo:

- Identificación unificada de pacientes y profesionales de salud.
- Modelado de recursos para registros clínicos interoperables.
- Terminologías y codificaciones estandarizadas (SNOMED CT, CIE-10, LOINC, entre otras).
- Mecanismos de autenticación y autorización para el acceso seguro a los datos.
- Reglas para la validación e intercambio de información entre entidades de salud.

### Público Objetivo

Esta guía está dirigida a:

- **Desarrolladores e implementadores** de sistemas de información en salud.
- **Proveedores de software** que deseen asegurar compatibilidad con los estándares nacionales.
- **Entidades gubernamentales y reguladoras** responsables de definir políticas de interoperabilidad.
- **Profesionales en informática en salud** interesados en la implementación del estándar FHIR.

### Estructura de la Guía

Esta Guía de Implementación está organizada en las siguientes secciones:

1. **Perfiles FHIR CORE CR**: Definiciones específicas de los perfiles FHIR utilizados en Costa Rica.
2. **Extensiones**: Elementos adicionales requeridos para capturar información específica del país.
3. **Valores permitidos (ValueSets y CodeSystems)**: Conjuntos de valores estandarizados para garantizar la uniformidad de datos.
4. **Casos de uso y ejemplos**: Ejemplos prácticos de implementación para distintos escenarios clínicos y administrativos.
5. **Requisitos de interoperabilidad**: Reglas técnicas y de negocio para el intercambio de información.

### Notas Adicionales

Esta guía se basa en la versión **FHIR R5**, con adaptaciones específicas para el ecosistema costarricense. Se recomienda su uso en el desarrollo e integración de soluciones de salud digital que requieran interoperabilidad.

Para contribuir con la evolución de esta guía o reportar mejoras, por favor consulta el [repositorio oficial](https://github.com/HL7-MISALUDCR/IGCORE-CR) o contacta al equipo de que mantiene el las guía de implementación.

### Autores

Esta guía ha sido desarrollada por un equipo multidisciplinario de expertos en informática en salud, en colaboración con el Ministerio de Salud de Costa Rica y la comunidad HL7 local.


### Agradecimientos

Agradecemos a todos los profesionales y organizaciones que han contribuido con la creación de esta guía, así como a la comunidad HL7 por su apoyo en la adopción de estándares internacionales en salud digital.