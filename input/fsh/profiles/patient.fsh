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
Title:              "Paciente (Core)"
Description:        "Perfil de Paciente (Patient)"

* insert ProfileMeta
* insert RuleSetStatus (0, draft, pc)

// * extension contains Nationality named PatientNacionality 0..1 -- Requiere ajustar el perfilamiento

/* 
 @element: identifier
 @concetp: Identificador del Paciente
 @type:    Identifier
 @purpose: Identificaar al paciente de todas las maneras posibles
 @comment: - Se espera que el paciente tenga al menos un identificador
 */
* identifier 1.. MS
  * system 1.. MS
  * system ^short = "Sistema de identificación del paciente."
  * value 1.. MS
  * value ^short = "Código de identificación del paciente o número de documento."
  * period ^short = "Periodo de validez del identificador del documento de identificación."
  * assigner ^short = "Organización que emitió el documento. Puede utilizarse como referencia a una organización o como texto libre."

  // * extension contains Nationality named PatientNacionality 0..1
  // * extension ^short = "Extensión para definir la nacionalidad del paciente."
  // * extension ^definition = "Extensión para definir la nacionalidad del paciente."

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
  * use = #official
  * family 1.. MS
  * family ^short = "Apellidos del paciente."
  * given 1.. MS
  * given ^short = "Nombres del paciente."


/* 
  @element: gender
  @concetp: Género del Paciente
  @type:    code
  @purpose: Género del paciente
  @comment: - Se espera que el paciente tenga un género
            - Se espera que el género sea el que el paciente se identifica
 */
* gender 0..1
* gender ^short = "Género del paciente. (male | female | other | unknown (requerido))"
* gender ^definition = "Género del Paciente."


/* 
 @element: birthDate
 @concetp: Fecha de Nacimiento del Paciente
 @type:    date
 @purpose: Fecha de nacimiento del paciente
 @comment: - Se espera que el paciente tenga una fecha de nacimiento
           - El formato de la fecha es YYYY-MM-DD
 */
* birthDate 0..1
* birthDate ^short = "Fecha de nacimiento del paciente."
* birthDate ^definition = "Fecha de nacimiento del Paciente."

* deceased[x] ^definition = "Indica si el paciente ha fallecido y la fecha de fallecimiento."
* deceased[x] ^short = "Indica si el paciente ha fallecido y la fecha de fallecimiento."

/* 
 @element: maritalStatus
 @concetp: Estado Civil del Paciente
 @type:    CodeableConcept
 @purpose: Estado civil del paciente
 @comment: - Se espera que el paciente tenga un estado civil
 TODO: Hay que determinar si es necesario para el CORE
 */
// * maritalStatus 0..1
//   * coding 1..1
//   * coding.system = $v3-MaritalStatus
//   * coding.code from MaritalStatus (extensible)
//   * coding.display ^short = "Estado civil del paciente."


/* 
  @element: telecom
  @concetp: Detalles de contacto del Paciente
  @type:    ContactPoint
  @purpose: Detalles del contacto de un paciente comúnmente el o los más usados (Ej: Teléfono fijo, móvil, email, etc.)
  @comment: - Se espera que el paciente tenga al menos un detalle de contacto
            - Se espera que el contacto sea el que el paciente usa con más frecuencia
 */
* telecom 0..*
* telecom ^short = "Detalles de contacto del Paciente"
* telecom ^definition = "Detalles del contacto de un paciente comúnmente el o los más usados (Ej: Teléfono fijo, móvil, email, etc.)"


/* 
 @element: communication
 @concetp: Idioma
 @type:    Patient.Communication
 @purpose: Idioma del paciente
 @comment: - Se espera que el paciente tenga al menos un idioma
           - Se espera que el idioma sea el que el paciente usa con más frecuencia
 TODO: Hay que determinar si es necesario para el CORE
 */
// * communication 0..1
//   * language 1..1 MS
//   * language ^short = "Idioma del paciente."
//   * language ^definition = "Idioma del Paciente."
//   * language from LanguagesCodes
//   * language ^binding.description = "ValuetSet de idiomas según la norma ISO 639-1"



/* 
 @element: address
 @concetp: Direcciones del Paciente
 @type:    Address
 @purpose: Direcciones del paciente
 @comment: - Se espera que el paciente tenga al menos una dirección
           - Se espera que la dirección sea la que el paciente usa con más frecuencia
           - Se utiliza la extensión AddressBaseCrCore para definir las direcciones en Costa Rica
 */
* address 0..*
* address only AddressBaseCrCore
* address ^short = "Direcciones del Paciente"


/* 
 @element: photo
 @concetp: Fotografía del Paciente
 @type:    Attachment
 @purpose: Fotografía del paciente
 @comment: - Se espera que el paciente tenga al menos una fotografía
 TODO: Hay que determinar si es necesario para el CORE
 */
// * photo 0..1
// * photo ^short = "Fotografía del paciente."
// * photo ^definition = "Fotografía del Paciente."


/* 
 @element: contact
 @concetp: Contacto de Emergencia del Paciente
 @type:    Patient.Contact
 @purpose: Persona de contacto en caso de emergencia
 @comment: - Se espera que el paciente tenga al menos un contacto de emergencia
 TODO: Hay que determinar si es necesario para el CORE
 */
// * contact 0..*
// * contact ^short = "Contacto de Emergencia del Paciente"
// * contact ^definition = "Persona de contacto en caso de emergencia."
//   * relationship 1..1
//   * relationship.coding 1..1
//   * relationship.coding.system = "http://hl7.org/fhir/ValueSet/patient-contactrelationship"
//   * relationship.coding.code from PatientContactRelationship (extensible)
//   * relationship.coding.display ^short = "Relación con el paciente."
