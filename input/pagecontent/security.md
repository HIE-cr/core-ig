### Privacidad y seguridad del paciente
Las transacciones de CR Core suelen utilizar información específica del paciente, que podría ser explotada por actores maliciosos y exponer sus datos. Por ello, todas las transacciones de CR Core deben estar protegidas adecuadamente, con acceso limitado a personas autorizadas, datos protegidos en tránsito y medidas de auditoría adecuadas.

Los implementadores **DEBEN** tener en cuenta estas [consideraciones de seguridad](https://hl7.org/fhir/R5/security.html) asociadas con las transacciones FHIR, particularmente aquellas relacionadas con:

- [Communications](https://hl7.org/fhir/R5/security.html#http)
- [Authentication](https://hl7.org/fhir/R5/security.html#authentication)
- [Authorization/Access Control](https://hl7.org/fhir/R5/security.html#binding)
- [Audit Logging](https://hl7.org/fhir/R5/security.html#audit)
- [Digital Signatures](https://hl7.org/fhir/R5/signatures.html)
- [Security Labels](https://hl7.org/fhir/R5/security-labels.html)
- [Narrative](https://hl7.org/fhir/R5/security.html#narrative)

Para la CR Core, los requisitos de conformidad de seguridad son los siguientes:

- Los sistemas **DEBEN** establecer un régimen de análisis y gestión de riesgos que cumpla con los requisitos regulatorios de seguridad de la [Citar normativa nacional](#). Además, los sistemas de Costa Rica **DEBEN** cumplir con los requisitos de gestión y mitigación de riesgos definidos en los documentos de la serie NIST 800. Esto DEBE incluir la asignación de categorías de seguridad según el Apéndice [XX] de la norma [Requerimos una norma](#) La coordinación de la gestión de riesgos y los controles de seguridad y privacidad relacionados (políticas, prácticas administrativas y controles técnicos) DEBEN definirse en el Acuerdo de Asociado Comercial, cuando esté disponible.

- Los sistemas **DEBEN** referenciar una única fuente de tiempo para establecer una base de tiempo común para la auditoría de seguridad y el registro de datos clínicos entre los sistemas informáticos. El servicio de tiempo seleccionado **DEBE** documentarse en el Acuerdo de Asociado Comercial, cuando esté disponible.

- Los sistemas **DEBEN** mantener registros de auditoría de las distintas transacciones.

- Los sistemas **DEBEN** utilizar TLS versión 1.2 o superior para todas las transmisiones que no se realicen a través de una conexión de red segura. (Se recomienda el uso de TLS incluso en un entorno de red seguro para ofrecer una defensa exhaustiva). 

- Los sistemas **DEBEN** cumplir con los requisitos de [seguridad de comunicaciones FHIR](https://hl7.org/fhir/R5/security.html#http).

- Para la autenticación y la autorización, los sistemas **DEBEN** ser compatibles con cualquier [versión de SMART App Launch](https://hl7.org/fhir/smart-app-launch/history.html) para las interacciones entre el cliente y el servidor. NOTA: Las especificaciones de SMART App Launch incluyen los ámbitos de OAuth 2.0 necesarios para la toma de decisiones de seguridad.

- Los sistemas **DEBEN** implementar los requisitos de consentimiento según sus políticas nacionales, locales e institucionales. Los Acuerdos de Asociado Comercial **DEBEN** documentar los requisitos de consentimiento mutuo de los sistemas.

- Los sistemas **DEBEN** proporcionar declaraciones de procedencia utilizando el recurso [Perfil Provenance](StructureDefinition-provenance-cr-core.html) de Costa Rica y los requisitos asociados.

- Los sistemas **PUEDEN** implementar las [firmas digitales FHIR](https://hl7.org/fhir/R5/signatures.html) y brindar retroalimentación sobre su idoneidad para las transacciones centrales de Costa Rica

- Los sistemas PUEDEN proteger la confidencialidad de los datos en reposo mediante el cifrado y los controles de acceso asociados. Las políticas y métodos utilizados quedan fuera del alcance de esta especificación.