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
Title:              "Profesional de Salud (Core)"
Description:        "Perfil de Profesional de Salud (Practitioner)"

* insert ProfileMeta
* insert RuleSetStatus (0, draft, pc)


/* 
 @element: identifier
 @concetp: Identificador del Profesional de Salud
 @type:    Identifier
 @purpose: Identificaar al Profesional de Salud de todas las maneras posibles
 @comment: - Se espera que el Profesional de Salud tenga al menos un identificador
 */
* identifier 1.. MS
  * system 1.. MS
  * system ^short = "Sistema de identificación del Profesional de Salud."
  * value 1.. MS
  * value ^short = "Código de identificación del Profesional de Salud o número de documento."
  * period ^short = "Periodo de validez del identificador del documento de identificación."
  * assigner ^short = "Organización que emitió el documento. Puede utilizarse como referencia a una organización o como texto libre."

* active ^definition = "Indica si el Profesional de Salud está activo o no."
* active ^short = "Indica si el Profesional de Salud está activo o no."

/* 
 @element: name
 @concetp: Nombre del Profesional de Salud
 @type:    HumanName
 @purpose: Nombre del Profesional de Salud
 @comment: - Se espera que el Profesional de Salud tenga al menos un nombre y un apellido
 */
* name 1.. MS
  * use = #official
  * family 1.. MS
  * family ^short = "Apellidos del Profesional de Salud."
  * given 1.. MS
  * given ^short = "Nombres del Profesional de Salud."


/* 
  @element: gender
  @concetp: Género del Profesional de Salud
  @type:    code
  @purpose: Género del Profesional de Salud
  @comment: - Se espera que el Profesional de Salud tenga un género
            - Se espera que el género sea el que el Profesional de Salud se identifica
 */
* gender 0..1
* gender ^short = "Género del Profesional de Salud. (male | female | other | unknown (requerido))"
* gender ^definition = "Género del Profesional de Salud."


/* 
 @element: birthDate
 @concetp: Fecha de Nacimiento del Profesional de Salud
 @type:    date
 @purpose: Fecha de nacimiento del Profesional de Salud
 @comment: - Se espera que el Profesional de Salud tenga una fecha de nacimiento
           - El formato de la fecha es YYYY-MM-DD
 */
* birthDate 0..1
* birthDate ^short = "Fecha de nacimiento del Profesional de Salud."
* birthDate ^definition = "Fecha de nacimiento del Profesional de Salud."

* deceased[x] ^definition = "Indica si el Profesional de Salud ha fallecido y la fecha de fallecimiento."
* deceased[x] ^short = "Indica si el Profesional de Salud ha fallecido y la fecha de fallecimiento."

/* 
 @element: maritalStatus
 @concetp: Estado Civil del Profesional de Salud
 @type:    CodeableConcept
 @purpose: Estado civil del Profesional de Salud
 @comment: - Se espera que el Profesional de Salud tenga un estado civil
 TODO: Hay que determinar si es necesario para el CORE
 */
// * maritalStatus 0..1
//   * coding 1..1
//   * coding.system = $v3-MaritalStatus
//   * coding.code from MaritalStatus (extensible)
//   * coding.display ^short = "Estado civil del Profesional de Salud."


/* 
  @element: telecom
  @concetp: Detalles de contacto del Profesional de Salud
  @type:    ContactPoint
  @purpose: Detalles del contacto de un Profesional de Salud comúnmente el o los más usados (Ej: Teléfono fijo, móvil, email, etc.)
  @comment: - Se espera que el Profesional de Salud tenga al menos un detalle de contacto
            - Se espera que el contacto sea el que el Profesional de Salud usa con más frecuencia
 */
* telecom 0..*
* telecom ^short = "Detalles de contacto del Profesional de Salud"
* telecom ^definition = "Detalles del contacto de un Profesional de Salud comúnmente el o los más usados (Ej: Teléfono fijo, móvil, email, etc.). Los números de teléfono deben seguir el formato E.164: +[código país][número], por ejemplo: +506XXXXXXXX para Costa Rica."


/* 
 @element: communication
 @concetp: Idioma
 @type:    Patient.Communication
 @purpose: Idioma del Profesional de Salud
 @comment: - Se espera que el Profesional de Salud tenga al menos un idioma
           - Se espera que el idioma sea el que el Profesional de Salud usa con más frecuencia
 TODO: Hay que determinar si es necesario para el CORE
 */
// * communication 0..1
//   * language 1..1 MS
//   * language ^short = "Idioma del Profesional de Salud."
//   * language ^definition = "Idioma del Profesional de Salud."
//   * language from LanguagesCodes
//   * language ^binding.description = "ValuetSet de idiomas según la norma ISO 639-1"



/* 
 @element: address
 @concetp: Direcciones del Profesional de Salud
 @type:    Address
 @purpose: Direcciones del Profesional de Salud
 @comment: - Se espera que el Profesional de Salud tenga al menos una dirección
           - Se espera que la dirección sea la que el Profesional de Salud usa con más frecuencia
           - Se utiliza la extensión AddressBaseCrCore para definir las direcciones en Costa Rica
 */
* address 0..*
* address only AddressBaseCrCore
* address ^short = "Direcciones del Profesional de Salud"


/* 
 @element: photo
 @concetp: Fotografía del Profesional de Salud
 @type:    Attachment
 @purpose: Fotografía del Profesional de Salud
 @comment: - Se espera que el Profesional de Salud tenga al menos una fotografía
 TODO: Hay que determinar si es necesario para el CORE
 */
// * photo 0..1
// * photo ^short = "Fotografía del Profesional de Salud."
// * photo ^definition = "Fotografía del Profesional de Salud."


/* 
 @element: contact
 @concetp: Contacto de Emergencia del Profesional de Salud
 @type:    Patient.Contact
 @purpose: Persona de contacto en caso de emergencia
 @comment: - Se espera que el Profesional de Salud tenga al menos un contacto de emergencia
 TODO: Hay que determinar si es necesario para el CORE
 */
// * contact 0..*
// * contact ^short = "Contacto de Emergencia del Profesional de Salud"
// * contact ^definition = "Persona de contacto en caso de emergencia."
//   * relationship 1..1
//   * relationship.coding 1..1
//   * relationship.coding.system = "http://hl7.org/fhir/ValueSet/patient-contactrelationship"
//   * relationship.coding.code from PatientContactRelationship (extensible)
//   * relationship.coding.display ^short = "Relación con el Profesional de Salud."
