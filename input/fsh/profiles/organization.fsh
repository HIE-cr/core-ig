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
Profile:            OrganizationCrCore
Parent:             Organization
Id:                 organization-cr-core
Title:              "Organizaciones"
Description:        "Perfil CORE de Organizaciones (Organization)"

* insert ProfileMeta
* insert RuleSetStatus (0, draft, pc)


// Definir la regla de slicing
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open

/*
  @element: identifier
  @concetp: Identificador de la Organización
  @type:    Identifier
  @purpose: Identificaar a la Organización de todas las maneras posibles
  @comment: - Se espera que la Organización tenga al menos un identificador
 */
* identifier 1..* MS
  * system MS
  * system ^short = "Sistema de identificación de la organización."
  * value MS
  * value ^short = "Código de identificación de la organización o número de documento."

/*
  @element: active
  @concetp: Activo
  @type:    boolean
  @purpose: Indica si la Organización está activa o no.
  @comment: - Se espera que la Organización tenga al menos un identificador
 */
* active ^definition = "Indica si la Organización está activa o no."
* active ^short = "Indica si la Organización está activa o no."

/*
  @element: type
  @concetp: Tipo de Organización
  @type:    CodeableConcept
  @purpose: Tipo de Organización
  @comment: - Se espera que la Organización tenga al menos un tipo
 */
* type 0..1
* type from OrganizationTypeList (required)
* type ^short = "Tipo de Organización."
* type ^definition = "Tipo de Organización."

// * extension contains OrganizationServiceTypeExt named serviceType 0..* MS
// * extension[serviceType] ^short = "Tipos de servicios de salud que brinda la organización"
// * extension[serviceType] ^definition = "Indica uno o más tipos de servicios que brinda la organización, como hospitalización, consulta externa, imagenología, etc."

/*
  @element: name
  @concetp: Nombre de la Organización
  @type:    HumanName
  @purpose: Nombre de la Organización
  @comment: - Se espera que la Organización tenga al menos un nombre
 */
* name 1.. MS
* name ^short = "Nombre de la Organización."
* name ^definition = "Nombre de la Organización."

/*
  @element: alias
  @concetp: Alias de la Organización
  @type:    string
  @purpose: Alias de la Organización
 */
* alias 0.. MS
* alias ^short = "Alias de la Organización."

/*
  @element: contact
  @concetp: Contactos de la Organización
  @type:    ExtendedContactDetail
  @purpose: Contactos de la Organización
 */
* contact 0.. MS
* contact ^short = "Contactos de la Organización."
* contact ^definition = "Contactos de la Organización."
  * purpose 0..1
  * purpose from ContactEntityType (required)
  * purpose ^short = "Tipo de contacto. ADMIN | BILLING | HR | OTHER"
  * purpose ^definition = "Tipo de contacto."
  * name 0..1
  * name ^short = "Nombre del contacto."
  * name ^definition = "Nombre del contacto."
  * telecom 0.. MS
  * telecom ^short = "Teléfono o correo electrónico del contacto."
  * telecom ^definition = "Teléfono o correo electrónico del contacto."
    * use 0..1
    * use from ContactPointUse (required)
    * use ^short = "Uso del contacto. home | work | temp | old | mobile"
    * use ^definition = "Uso del contacto."
    * use ^comment = "Uso del contacto."
    * system 0..1
    * system from ContactPointSystem (required)
    * system ^short = "Tipo de contacto. phone | fax | email | pager | url | sms | other"
    * system ^definition = "Tipo de contacto."
    * system ^comment = "Tipo de contacto."
    * value 0..1
    * value ^short = "Valor del dato de contacto."
    * value ^definition = "Valor del dato de contacto."
  * address 0..1
  * address ^short = "Dirección del contacto."

/*
  @element: partOf
  @concetp: Parte de la Organización
  @type:    Reference
  @purpose: Parte de la Organización
 */
* partOf 0..1
* partOf ^short = "Organización de la que forma parte."
* partOf ^definition = "Organización de la que forma parte."