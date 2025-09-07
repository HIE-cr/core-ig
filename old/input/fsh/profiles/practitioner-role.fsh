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

Profile:            PractitionerRoleCrCore
Parent:             PractitionerRole
Id:                 practitioner-role-cr-core
Title:              "Rol de Profesional de la Salud"
Description:        "Perfil CORE de Rol de Profesional de la Salud (PractitionerRole)"

* insert ProfileMeta
* insert RuleSetStatus (0, draft, pc)

* extension contains AuthorizedSignerExt named authorizedSigner 0..1

/*
 @element: code
 @concetp: Código de identificación del rol del profesional de la salud
 @type:    CodeableConcept
 @purpose: Código de identificación del rol del profesional de la salud
 @comment: - Se espera que el rol tenga al menos un código
 */
* code 1..*
* code from PractitionerRole (required)
* code ^short = "Código de identificación del rol del profesional de la salud."
* code ^definition = "Código de identificación del rol del profesional de la salud."

/*
 @element: specialty
 @concetp: Especialidad del profesional de la salud
 @type:    CodeableConcept
 @purpose: Especialidad del profesional de la salud
 @comment: - Se espera que el rol tenga al menos una especialidad
 */
* practitioner 1..1
* practitioner only Reference(PractitionerCrCore)
* practitioner ^short = "Profesional de la salud que desempeña el rol."
* practitioner ^definition = "Profesional de la salud que desempeña el rol."

/*
 @element: organization
 @concetp: Organización en la que el profesional de la salud desempeña el rol
 @type:    Reference
 @purpose: Organización en la que el profesional de la salud desempeña el rol
 @comment: - Se espera que el rol tenga al menos una organización
 */
* organization 1..1
* organization only Reference(OrganizationCrCore)
* organization ^short = "Organización en la que el profesional de la salud desempeña el rol."
* organization ^definition = "Organización en la que el profesional de la salud desempeña el rol."
    
/*
 @element: specialty
 @concetp: Especialidad del profesional de la salud
 @type:    CodeableConcept
 @purpose: Especialidad del profesional de la salud
 @comment: - Se espera que el rol tenga al menos una especialidad
 */
* specialty 0..*
* specialty ^short = "Especialidad del profesional de la salud."
* specialty ^definition = "Especialidad del profesional de la salud."

/*
    @element: authorizedSigner
    @concetp: ¿El profesional de la salud puede firmar?
    @type:    boolean
    @purpose: ¿El profesional de la salud puede firmar?
    @comment: - No todos los medicos pueden firmar
 */
// * authorizedSigner 0..1
// * authorizedSigner only boolean
// * authorizedSigner ^short = "¿El profesional de la salud puede firmar digitalmente?"
// * authorizedSigner ^definition = "¿El profesional de la salud puede firmar digitalmente?"
