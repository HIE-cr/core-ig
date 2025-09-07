### Antecedentes de la adopción y uso de la firma digital en Costa Rica
La firma digital en Costa Rica fue establecida como un mecanismo legalmente válido a partir de la promulgación de la **Ley N.º 8454**: Ley de Certificados, Firmas Digitales y Documentos Electrónicos, en el año 2005. Esta legislación otorgó validez jurídica a los documentos firmados digitalmente, con la misma fuerza legal que una firma manuscrita, siempre que se utilicen certificados digitales emitidos por un **certificador registrado**.

Posteriormente, el Banco Central de Costa Rica (BCCR), mediante la creación de la **Autoridad Certificadora del SINPE** (autorizada oficialmente como certificador registrado), ha jugado un rol central como ente emisor de certificados digitales de persona física y jurídica. Desde su implementación, la firma digital ha sido incorporada de manera progresiva en diversas instituciones públicas para trámites electrónicos, declaraciones, contratación administrativa y, recientemente, se ha iniciado su incorporación en el sector salud.

### Estándar que soporta la firma digital
La firma digital utilizada en Costa Rica se fundamenta en una infraestructura de clave pública (**PKI**) que garantiza los principios de **autenticidad, integridad y no repudio**. Esta infraestructura está respaldada legalmente por la **Ley N.° 8454** y es operada técnicamente por la **Autoridad Certificadora del SINPE**, bajo responsabilidad del Banco Central de Costa Rica.

### Formatos de firma soportados
Existen diversos estándares técnicos internacionales para la aplicación de la firma digital en documentos electrónicos. En el caso costarricense, los formatos de firma digital más relevantes son:
- **XAdES (XML Advanced Electronic Signatures):**
Este estándar es el más adecuado para documentos estructurados en XML, y probablemente el más apropiado para el caso de los recursos HL7 FHIR. XAdES define cómo incorporar una firma digital dentro de un documento XML sin alterar su estructura. Es ampliamente utilizado en documentos estructurados y permite firmas embebidas o referenciadas.
- **CAdES (CMS Advanced Electronic Signatures):**
Utiliza el formato **Cryptographic Message Syntax (CMS)** y está orientado a firmar documentos en formatos binarios o archivos comprimidos. Es útil en escenarios donde se requiere encapsular múltiples archivos en un contenedor firmado.
- **PAdES (PDF Advanced Electronic Signatures):**
Específico para archivos PDF, que serán interpretados por personas físicas. Es útil cuando se generan reportes clínicos exportables o consentimientos firmados en formato PDF.

En particular, en Costa Rica, la normativa que le da tratamiento a este tema incluye la **Política de Formatos Oficiales de los Documentos Electrónicos Firmados Digitalmente** publicada por el MICITT.

En general, los formatos soportados y toda la Infraestructura de clave pública respeta e implementa el estándar **ISO-21188** y el uso de certificados **X.509v3**, que son emitidos por la **Autoridad Certificadora del SINPE**, y utilizan algoritmos de firma robustos como **RSA** con **SHA-256** o superiores, en cumplimiento con las recomendaciones de seguridad actuales.

### Alcances en el uso de la firma digital
#### Tecnológicos:
- Garantiza **autenticidad, integridad y no repudio** de los documentos firmados y de los procesos de autenticación fuerte que se habilita con el uso de certificados y firmas digitales.
- Puede integrarse con diversas plataformas tecnológicas a través de APIs y librerías compatibles con PKI y estándares como XAdES, PAdES y CAdES.
- Permite su aplicación en sistemas web, móviles o soluciones cliente-servidor, incluyendo sistemas de información hospitalaria y plataformas interoperables.

#### Legales:
- Tiene plena **validez jurídica** según la Ley 8454.
- Sustenta la equivalencia legal de la firma electrónica con la manuscrita, siempre que se utilicen certificados emitidos por certificadores registrados en la jerarquía de confianza del Estado costarricense.
- Permite el respaldo de actos administrativos, contratos, consentimientos informados y otros documentos legales del ámbito clínico y sanitario.

### Uso que se le puede dar a la firma digital
Utilizar la plataforma **GAUDI** (Gestor de Autenticación Digital), desarrollada y operada por el Banco Central de Costa Rica (BCCR), es fundamental para habilitar el uso de la firma digital móvil y obtener una experiencia de usuario homogénea, estandarizada y alineada con buenas prácticas, gracias a servicios centrales que ofrecen una alta economía de escala.
La firma digital tiene múltiples aplicaciones dentro del ecosistema de salud, entre ellas:
- Firma de documentos clínicos electrónicos, como informes médicos, epicrisis, resultados de laboratorio, notas de evolución y prescripciones electrónicas.
- Firma de consentimientos informados digitales, garantizando la autenticidad de la aceptación por parte del paciente.
- Autenticación de profesionales de salud en sistemas que implementen HL7 FHIR, mediante la firma de recursos como DocumentReference, Composition o Bundle.
- Respaldo de la integridad y trazabilidad de transacciones clínicas en sistemas de interoperabilidad.
