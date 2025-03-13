# HL7 FHIR CORE Costa Rica

Tenga en cuenta que esta guía de implementación aún se encuentra en desarrollo activo ([draft](http://hl7.org/fhir/extensions/CodeSystem-standards-status.html#standards-status-draft)) y no se garantiza [full backward compatibility](https://en.wikipedia.org/wiki/Backward_compatibility#In_software) con versiones anteriores antes de la versión v1.0.0 Final. **NO se recomienda aún** para implementaciones críticas o en producción, a menos que no le importe leer el changelog y aplicar algunos pasos de migración manual de vez en cuando.
{:.draft-note}

### Introducción

Esta guía y los perfiles de CR Core se han convertido en la base de las guías de implementación de FHIR en el ámbito de Costa Rica. Esta versión refleja los cambios, comentarios y solicitudes de la comunidad de FHIR en el ámbito de Costa Ruca. CR Core se ha beneficiado de las pruebas y la orientación del equipos multisectorial a nivel nacional. Sus comentarios siguen sentando las bases para documentar el diseño, las interacciones, los requisitos y las directrices del Perfil de CR Core para el acceso a los datos de pacientes. Bajo la guía de los entes nacionales y regionales que tiene expertis en HL7 en el ámbito de Costa Rica, el contenido se ampliará en futuras versiones para satisfacer las necesidades específicas del ámbito de Costa Rica.

La Guía de Implementación de CR Core se basa en la versión R5 de FHIR. Define las restricciones mínimas de los recursos de FHIR para crear los perfiles de CR Core. Se identifican los elementos, extensiones, vocabularios y conjuntos de valores que **DEBEN** estar presentes y se define su uso. También documenta las interacciones RESTful mínimas de FHIR para que cada perfil de CR Core acceda a los datos de los pacientes. El establecimiento de estándares mínimos para promover la interoperabilidad y la adopción mediante una implementación común permite una mayor evolución del desarrollo de estándares para casos de uso específicos. Existen dos maneras diferentes de implementar CR Core:

1. Soporte solo para perfiles: los sistemas pueden admitir solo los perfiles principales de Costa Rica para representar información clínica.
2. Soporte de perfil + Soporte de interacción: los sistemas pueden soportar tanto la estructura de contenido del perfil principal de Costa Rica como las interacciones RESTful definidas para un recurso.

Para obtener una descripción detallada de estos diferentes usos de CR Core, consulte la página de Requisitos de conformidad.

### Antecedente
En Costa Rica, el ecosistema de salud está compuesto por múltiples actores, incluyendo la Caja Costarricense de Seguro Social (CCSS), el Ministerio de Salud, el Instituto Nacional de Seguros (INS), y diversos proveedores privados de servicios de salud. A pesar de los avances en digitalización, la fragmentación de los sistemas de información ha representado un obstáculo para la interoperabilidad efectiva entre instituciones, limitando el acceso oportuno a datos clínicos y administrativos, lo que impacta la continuidad del cuidado y la eficiencia operativa.

En el ámbito internacional, estándares como HL7 FHIR (Fast Healthcare Interoperability Resources) han sido adoptados ampliamente para mejorar la interoperabilidad y el intercambio de información en salud, alineándose con iniciativas globales promovidas por la Organización Panamericana de la Salud (OPS/PAHO), la Organización Mundial de la Salud (OMS) y HL7 International.

En este contexto, surge la necesidad de desarrollar la Guía de Implementación CORE para Costa Rica, con el objetivo de establecer un conjunto mínimo de requisitos y perfiles FHIR que permitan la estandarización del intercambio de información clínica y administrativa entre los diferentes actores del sistema de salud. Esta guía se fundamenta en las mejores prácticas internacionales y busca servir como referencia para futuras iniciativas de interoperabilidad en el país, facilitando la integración con arquitecturas nacionales e internacionales de salud digital.

### Cómo leer esta guía
Esta guía está dividida en varias páginas, que se enumeran en la parte superior de cada página en la barra de menú.

- [Inicio](#): la página de inicio proporciona la introducción y los antecedentes de CR Core.
- [Conformidad](#): estas páginas describen el conjunto de reglas para reclamar la conformidad con esta guía.
- [Artefactos FHIR](#): estas páginas proporcionan descripciones detalladas y definiciones formales para todos los objetos FHIR definidos en esta guía
- [Seguridad](#): Esta página documenta los requisitos generales de seguridad y recomendaciones para los actores.
- [Descargas](#): esta página proporciona enlaces a los artefactos de CR Core.
- [Registro de cambios](#): esta página proporciona un registro de cambios para la guía de implementación de CR Core.

### Actores principales de Costa Rica
Los siguientes actores forman parte del IG central de Costa Rica:

#### Solicitante
Es una aplicación que inicia una solicitud de acceso a datos para recuperar datos de pacientes. El solicitante del CR Core es el cliente en una interacción cliente-servidor. Los términos "Solicitante del CR Core" y "Cliente" se utilizan indistintamente a lo largo de esta guía y no pretenden limitar este actor únicamente a las aplicaciones de pacientes y proveedores. Por ejemplo, los pagadores y otros usuarios pueden usar la misma tecnología. Estos términos son una abreviatura de "aplicación de usuario".

#### Proveedor de respuesta
Es un sistema que responde a la solicitud de acceso a datos, proporcionando datos del paciente. El Proveedor de respuesta del CR Core es el servidor en una interacción cliente-servidor. Los términos "Proveedor de respuesta del CR Core", "Servidor" y "HCE" se utilizan indistintamente a lo largo de esta guía y no pretenden limitar este actor a los sistemas de registros médicos electrónicos. Por ejemplo, los HIE, las plataformas de coordinación de la atención, los sistemas de salud poblacional, etc., pueden utilizar la misma tecnología. Estos términos son una abreviatura de "plataforma de atención médica interoperable".

### Interacciones RESTful del CR Core FHIR
Para los sistemas que admiten la estructura de contenido del Perfil Core de Costa Rica y las interacciones RESTful definidas para un recurso, los requisitos se definen formalmente en las Declaraciones de Capacidad del CR Core. Además, cada página de perfil incluye una sección de inicio rápido que documenta las operaciones de búsqueda y lectura RESTful de FHIR requeridas. Estas secciones muestran cómo acceder a los datos clínicos y administrativos de un paciente:

**Ejemplo de una transacción de búsqueda RESTful FHIR simple**

{:.sample-restful-transaction}
![alt text](assets/images/cr-core-restful-fhir.png "Ejemplo de una transacción de búsqueda RESTful FHIR simple")

Consulte la especificación FHIR para obtener detalles sobre [la API de búsqueda RESTful de FHIR](https://hl7.org/fhir/R5/http.html#search) y el [lanzamiento de aplicaciones SMART](https://hl7.org/fhir/smart-app-launch/STU2/) para saber cómo una aplicación obtiene acceso a un registro de paciente.

