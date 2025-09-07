/* ------------------------------------------------------------------ 
 @type:         FSH-File for a FHIR® Profile Resource
 @about:        HL7® FHIR® CORE Costa Rica
 @created by:   National Working Group for FHIR® - Costa Rica
 @date:         2025-03-03
 @fhir version: 5.0.0
 @authors:      - Ministerio de Salud
                - Caja Costarricense de Seguro Social
                - Camara Costarricense de la Salud
                - Cámara de Tecnologías de Información y Comunicación
                - Global Life-Centered Hub
                - Instituto Nacional de Seguros
--------------------------------------------------------------------*/

/*
 @element: meta
 @concetp: Metadata
 @type:    Meta
 @purpose: Metadata de la definición de la estructura
 */
Profile:            PractitionerCrCore
Parent:             Practitioner
Id:                 practitioner-cr-core
Title:              "Profesional de Salud"
Description:        "Perfil CORE de Profesional de Salud (Practitioner)"

* insert ProfileMeta
* insert RuleSetStatus (0, draft, pc)

/* 
 @element: identifier
 @concetp: Identificador del Paciente
 @type:    Identifier
 @purpose: Identificaar al profesional de salud de todas las maneras posibles
 @comment: - Se espera que el profesional de salud tenga al menos un identificador
 */

* identifier 1.. MS
* identifier ^short = "Lista de los identificadores del Paciente."
* identifier ^definition = "Este es el listado de Identificaciones de un profesional de salud"

* identifier.use 1.. MS
* identifier.use ^short = "usual | official | temp | secondary | old (If known)"
* identifier.use ^definition = "De contar el Paciente con una Cédula de Identidad Nacional, se sugiere el uso de esta como identificador"

* identifier.type ^short = "Tipo de documento de identificación (Extensible)"
* identifier.type ^definition = "Se define como tipo de documento de identificación, aquel definido en el sistema de codificación V2-0203 de Hl7. Este sistema es extensible. Para profesional de saluds sin documento local deben especificar el de origen."
* identifier.type from PersonIdentifierType (required)
* identifier.type ^binding.description = "Valueset de tipos de identificación para el profesional de salud"

* active ^definition = "Indica si el Paciente está activo o no."
* active ^short = "Indica si el Paciente está activo o no."

/* 
 @element: name
 @concetp: Nombre del Paciente
 @type:    HumanName
 @purpose: Nombre del profesional de salud
 @comment: - Se espera que el profesional de salud tenga al menos un nombre y un apellido
 */
* name 1.. MS
* name ^short = "Nombre del profesional de salud."
* name ^definition = "Nombre del Paciente."
* name ^comment = "Es un elemento clave para la identificación inicial. En Costa Rica, los nombres tienen alta especificidad (dos apellidos), lo que aumenta la precisión del matching."
  * use 0..1
  * use from NameUse (required)
  * use ^short = "Uso del nombre. usual | official | temp | nickname | anonymous | old | maiden"
  * use ^definition = "Uso del nombre."

  * family 1.. MS
  * family ^short = "Apellidos del profesional de salud."
  * family ^definition = "Apellidos del profesional de salud."

  * given 1.. MS
  * given ^short = "Nombres del profesional de salud."
  * given ^definition = "Nombres del profesional de salud."

/* 
  @element: gender
  @concetp: Género del Paciente
  @type:    code
  @purpose: Género del profesional de salud
  @comment: - Se espera que el profesional de salud tenga un género
            - Se espera que el género sea el que el profesional de salud se identifica
 */
* gender 1..1
* gender from AdministrativeGender
* gender ^short = "Sexo biológico del profesional de salud. (male | female | other | unknown (requerido))"
* gender ^definition = "Sexo biológico del Paciente."

/* 
 @element: birthDate
 @concetp: Fecha de Nacimiento del Paciente
 @type:    date
 @purpose: Fecha de nacimiento del profesional de salud
 @comment: - Se espera que el profesional de salud tenga una fecha de nacimiento
           - El formato de la fecha es YYYY-MM-DD
 */
* birthDate 1..1
* birthDate ^short = "Fecha de nacimiento del profesional de salud."
* birthDate ^definition = "Fecha de nacimiento del Paciente."
* birthDate ^comment = "Proporciona un dato altamente discriminativo. Combinado con el nombre, permite resolver duplicados y colisiones, especialmente en poblaciones pequeñas como Costa Rica."

/* 
  @element: telecom
  @concetp: Detalles de contacto del Paciente
  @type:    ContactPoint
  @purpose: Detalles del contacto de un profesional de salud comúnmente el o los más usados (Ej: Teléfono fijo, móvil, email, etc.)
  @comment: - Se espera que el profesional de salud tenga al menos un detalle de contacto
            - Se espera que el contacto sea el que el profesional de salud usa con más frecuencia
 */
* telecom 0.. MS
  * system 0..1
  * system from ContactPointSystem (required)
  * system ^short = "Tipo de contacto. phone | fax | email | pager | url | sms | other"
  * system ^definition = "Tipo de contacto."
  * system ^comment = "Tipo de contacto."

  * value 0..1
  * value ^short = "Número de contacto del profesional de salud."
  * value ^definition = "Número de contacto del profesional de salud."
  * value ^comment = "Número de contacto del profesional de salud."

* address 0.. MS
* address ^short = "Dirección del profesional de salud."
* address ^definition = "Dirección del profesional de salud."
* address only AddressBaseCrCore