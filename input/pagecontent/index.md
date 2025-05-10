# HL7 FHIR CORE Costa Rica

Tenga en cuenta que esta guía de implementación aún se encuentra en desarrollo activo ([draft](http://hl7.org/fhir/extensions/CodeSystem-standards-status.html#standards-status-draft)) y no se garantiza [full backward compatibility](https://en.wikipedia.org/wiki/Backward_compatibility#In_software) con versiones anteriores antes de la versión v1.0.0 Final. **NO se recomienda aún** para implementaciones críticas o en producción, a menos que no le importe leer el changelog y aplicar algunos pasos de migración manual de vez en cuando.
{:.draft-note}

### Introducción
En el marco de la Estrategia Nacional de Salud Digital y en alineamiento con los esfuerzos de transformación digital del sistema de salud costarricense, se desarrolla la Guía de Implementación CORE HL7 Costa Rica como un componente clave para promover la interoperabilidad efectiva entre los sistemas de información en salud.

Esta guía de implementación representa una adaptación nacional del estándar internacional HL7 FHIR®, orientada a facilitar el intercambio seguro, oportuno y confiable de datos clínicos y administrativos. Su implementación busca mejorar la calidad de la atención, la continuidad del cuidado y la toma de decisiones basada en información precisa y estructurada.

El presente documento ofrece un conjunto de perfiles, extensiones y lineamientos técnicos que responden a las necesidades y particularidades del sistema de salud costarricense, promoviendo la estandarización en el desarrollo de soluciones interoperables tanto en el sector público como privado.

Este esfuerzo ha sido liderado por un equipo técnico y clínico designado por el [Comité Técnico de Salud Digital](https://www.ministeriodesalud.go.cr/index.php/biblioteca-de-archivos-left/documentos-ministerio-de-salud/ministerio-de-salud/salud-digital/hoja-de-ruta-salud-digital/6765-estrategia-nacional-de-salud-digital-de-costa-rica/file) y liderado por el Ministerio de Salud, en coordinación con instituciones del sector salud, actores técnicos, clínicos y representantes de la industria, bajo un enfoque colaborativo, abierto y evolutivo.

Invitamos a los equipos de desarrollo, proveedores de soluciones tecnológicas, profesionales de salud y demás partes interesadas a utilizar, adaptar y contribuir a esta guía de implementación, como parte del compromiso conjunto por una salud más conectada, eficiente y centrada en las personas.

### Antecedente
En Costa Rica, el ecosistema de salud está compuesto por múltiples actores, incluyendo la Caja Costarricense de Seguro Social (CCSS), el Ministerio de Salud, el Instituto Nacional de Seguros (INS), y diversos proveedores privados de servicios de salud. A pesar de los avances en digitalización, la fragmentación de los sistemas de información ha representado un obstáculo para la interoperabilidad efectiva entre instituciones, limitando el acceso oportuno a datos clínicos y administrativos, lo que impacta la continuidad del cuidado y la eficiencia operativa.

En el ámbito internacional, estándares como HL7 FHIR (Fast Healthcare Interoperability Resources) han sido adoptados ampliamente para mejorar la interoperabilidad y el intercambio de información en salud, alineándose con iniciativas globales promovidas por la Organización Panamericana de la Salud (OPS/PAHO), la Organización Mundial de la Salud (OMS) y HL7 International.

En este contexto, surge la necesidad de desarrollar la Guía de Implementación CORE para Costa Rica, con el objetivo de establecer un conjunto mínimo de requisitos y perfiles FHIR que permitan la estandarización del intercambio de información clínica y administrativa entre los diferentes actores del sistema de salud. Esta guía se fundamenta en las mejores prácticas internacionales y busca servir como referencia para futuras iniciativas de interoperabilidad en el país, facilitando la integración con arquitecturas nacionales e internacionales de salud digital.

### Cómo leer esta guía
Esta guía está dividida en varias páginas, que se enumeran en la parte superior de cada página en la barra de menú.

- [Inicio](index.html): la página de inicio proporciona la introducción y los antecedentes de CR Core.
- [Artefactos FHIR](artifacts.html): estas páginas proporcionan descripciones detalladas y definiciones formales para todos los objetos FHIR definidos en esta guía
- [Seguridad](security.html): esta página documenta los requisitos generales de seguridad y recomendaciones para los actores.
- [Terminologías](terminology.html): esta opción documenta el uso de las diferentes terminologías en la guía de implementación.
- [Descargas](download.html): esta página proporciona enlaces a los artefactos de CR Core.
- [Registro de cambios](changes.html): esta página proporciona un registro de cambios para la guía de implementación de CR Core.

### Actores principales de Costa Rica
Los siguientes actores forman parte del IG central de Costa Rica:

#### Cliente
Es una aplicación que inicia una solicitud de acceso a datos para recuperar datos de pacientes. El Cliente del CR Core es el cliente en una interacción cliente-servidor. Los términos "Cliente del CR Core" y "Cliente" se utilizan indistintamente a lo largo de esta guía y no pretenden limitar este actor únicamente a las aplicaciones de pacientes y proveedores. Por ejemplo, los pagadores y otros usuarios pueden usar la misma tecnología. Estos términos son una abreviatura de "aplicación de usuario".

#### Servidor
Es un sistema que responde a la solicitud de acceso a datos, proporcionando datos del paciente. El Servidor del CR Core es un actor en una interacción cliente-servidor. Los términos "Servidor del CR Core", "HCE" se utilizan indistintamente a lo largo de esta guía y no pretenden limitar este actor a los sistemas de registros médicos electrónicos. Por ejemplo, los HIE, las plataformas de coordinación de la atención, los sistemas de salud poblacional, etc., pueden utilizar la misma tecnología. Estos términos son una abreviatura de "plataforma de atención médica interoperable".

### Interacciones RESTful del CR Core FHIR
Para los sistemas que admiten la estructura de contenido del Perfil Core de Costa Rica y las interacciones RESTful definidas para un recurso, los requisitos se definen formalmente en las Declaraciones de Capacidad del CR Core. Además, cada página de perfil incluye una sección de inicio rápido que documenta las operaciones de búsqueda y lectura RESTful de FHIR requeridas. Estas secciones muestran cómo acceder a los datos clínicos y administrativos de un paciente:

**Ejemplo de una transacción de búsqueda RESTful FHIR simple**

{:.sample-restful-transaction}
![alt text](assets/images/cr-core-restful-fhir.png "Ejemplo de una transacción de búsqueda RESTful FHIR simple")

Consulte la especificación FHIR para obtener detalles sobre [la API de búsqueda RESTful de FHIR](https://hl7.org/fhir/R5/http.html#search) y el [lanzamiento de aplicaciones SMART](https://hl7.org/fhir/smart-app-launch/STU2/) para saber cómo una aplicación obtiene acceso a un registro de paciente.

### Autores y Colaboradores

| Rol         | Nombre                   | Organización                                           |
| ----------- | ------------------------ | ------------------------------------------------------ |
| Autor       | Ing. Alejandro Benavides | [Meddyg](https://meddyg.com/) - [Global Life-Centered Hub](#)            |
| Autor       | Dr. Daniel Quesada       | [Ministerio de Salud](https://ministeriodesalud.go.cr/)                               |
| Autor       | Ing. Iván Rojas          | [EDUS](https://www.ccss.sa.cr/appedus/) - [Caja Costarricense del Seguro Social](#)  |
| Autor       | Dr. Eduardo Rodríguez    | [EDUS](https://www.ccss.sa.cr/appedus/) - [Caja Costarricense del Seguro Social](#)  |
| Autor       | Ing. Paul Fervoy         | [Siftia](https://siftia.tech/es/) - [CAMTIC](#)                              |
| Autor       | Dra. Lucía Carnajal      | [Siftia](https://siftia.tech/es/) - [CAMTIC](#)                              |
| Colaborador | Ing. Manuel Rodriguez    | [EDUS](https://www.ccss.sa.cr/appedus/) - [Caja Costarricense del Seguro Social](#)  |
| Colaborador | Ing. Pedro Meckbel       | [Ministerio de Salud](https://ministeriodesalud.go.cr/)                               |
| Colaborador | Ing. Steve Vega          | [Huli](https://huli.io/) - [Cámara Costarricense de la Salud](#)      |
| Colaborador | Dra. Desire Rojas        | [Instituto Nacional de Seguros](https://www.grupoins.com/)                     |
| Colaborador | Ing. Jose Ricardo Zúñiga | [Ministerio de Salud](https://ministeriodesalud.go.cr/)                               |
| Colaborador | Ing. David Poveda        | [SAC](https://www.saludaunclick.com/) - [Cámara Costarricense de la Salud](#)       |
| Colaborador | MSc. Antón Ilarionov     | [SAC](https://www.saludaunclick.com/) - [Cámara Costarricense de la Salud](#)       |
| Colaborador | Ing. Deivert Guiltrichs  | [Ministerio de Salud](https://ministeriodesalud.go.cr/)                               |
| Revisor     | Ing. César Galindo       | [HL7 Chile](https://hl7chile.cl/)                                         |
