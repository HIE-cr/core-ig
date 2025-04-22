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
Profile:            PatientCrCore
Parent:             Patient
Id:                 patient-cr-core
Title:              "Paciente"
Description:        "Perfil CORE de Paciente (Patient)"

* insert ProfileMeta
* insert RuleSetStatus (0, draft, pc)

/* 
 @element: identifier
 @concetp: Identificador del Paciente
 @type:    Identifier
 @purpose: Identificaar al paciente de todas las maneras posibles
 @comment: - Se espera que el paciente tenga al menos un identificador
 */

* identifier 1.. MS
* identifier ^short = "Lista de los identificadores del Paciente."
* identifier ^definition = "Este es el listado de Identificaciones de un paciente"

* identifier.use 1.. MS
* identifier.use ^short = "usual | official | temp | secondary | old (If known)"
* identifier.use ^definition = "De contar el Paciente con una Cédula de Identidad Nacional, se sugiere el uso de esta como identificador"

* identifier.type ^short = "Tipo de documento de identificación (Extensible)"
* identifier.type ^definition = "Se define como tipo de documento de identificación, aquel definido en el sistema de codificación V2-0203 de Hl7. Este sistema es extensible. Para pacientes sin documento local deben especificar el de origen."
* identifier.type from PersonIdentifierType (required)
* identifier.type ^binding.description = "Valueset de tipos de identificación para el paciente"

* active ^definition = "Indica si el Paciente está activo o no."
* active ^short = "Indica si el Paciente está activo o no."

/* 
 @element: name
 @concetp: Nombre del Paciente
 @type:    HumanName
 @purpose: Nombre del paciente
 @comment: - Se espera que el paciente tenga al menos un nombre y un apellido
 */
* name 1.. MS
* name ^short = "Nombre del paciente."
* name ^definition = "Nombre del Paciente."
* name ^comment = "Es un elemento clave para la identificación inicial. En Costa Rica, los nombres tienen alta especificidad (dos apellidos), lo que aumenta la precisión del matching."
  * use 0..1
  * use from NameUse (required)
  * use ^short = "Uso del nombre. usual | official | temp | nickname | anonymous | old | maiden"
  * use ^definition = "Uso del nombre."

  * family 1.. MS
  * family ^short = "Apellidos del paciente."
  * family ^definition = "Apellidos del paciente."

  * given 1.. MS
  * given ^short = "Nombres del paciente."
  * given ^definition = "Nombres del paciente."

/* 
  @element: gender
  @concetp: Género del Paciente
  @type:    code
  @purpose: Género del paciente
  @comment: - Se espera que el paciente tenga un género
            - Se espera que el género sea el que el paciente se identifica
 */
* gender 1..1
* gender from AdministrativeGender
* gender ^short = "Sexo biológico del paciente. (male | female | other | unknown (requerido))"
* gender ^definition = "Sexo biológico del Paciente."

/* 
 @element: birthDate
 @concetp: Fecha de Nacimiento del Paciente
 @type:    date
 @purpose: Fecha de nacimiento del paciente
 @comment: - Se espera que el paciente tenga una fecha de nacimiento
           - El formato de la fecha es YYYY-MM-DD
 */
* birthDate 1..1
* birthDate ^short = "Fecha de nacimiento del paciente."
* birthDate ^definition = "Fecha de nacimiento del Paciente."
* birthDate ^comment = "Proporciona un dato altamente discriminativo. Combinado con el nombre, permite resolver duplicados y colisiones, especialmente en poblaciones pequeñas como Costa Rica."

/* 
 @element: maritalStatus
 @concetp: Estado Civil del Paciente
 @type:    CodeableConcept
 @purpose: Estado civil del paciente
 @comment: - Se espera que el paciente tenga un estado civil
 */
* maritalStatus 0..1
* maritalStatus ^short = "Estado civil del paciente. Married | Single | Divorced | Widowed | Separated | Common Law"
* maritalStatus ^definition = "Estado civil del Paciente."
* maritalStatus from MaritalStatusCodes

/* 
 @element: deceased
 @concetp: Fallecido
 @type:    boolean | dateTime
 @purpose: Indica si el paciente está fallecido
 @comment: - Se espera que el paciente tenga un estado de fallecido
 */
* deceased[x] 0..1
* deceased[x] ^definition = "Indica si el paciente ha fallecido y la fecha de fallecimiento."
* deceased[x] ^short = "Indica si el paciente ha fallecido y la fecha de fallecimiento."

/* 
  @element: telecom
  @concetp: Detalles de contacto del Paciente
  @type:    ContactPoint
  @purpose: Detalles del contacto de un paciente comúnmente el o los más usados (Ej: Teléfono fijo, móvil, email, etc.)
  @comment: - Se espera que el paciente tenga al menos un detalle de contacto
            - Se espera que el contacto sea el que el paciente usa con más frecuencia
 */
* telecom 0.. MS
  * system 0..1
  * system from ContactPointSystem (required)
  * system ^short = "Tipo de contacto. phone | fax | email | pager | url | sms | other"
  * system ^definition = "Tipo de contacto."
  * system ^comment = "Tipo de contacto."

  * value 0..1
  * value ^short = "Número de contacto del paciente."
  * value ^definition = "Número de contacto del paciente."
  * value ^comment = "Número de contacto del paciente."

* address 0.. MS
* address ^short = "Dirección del paciente."
* address ^definition = "Dirección del paciente."
* address only AddressBaseCrCore