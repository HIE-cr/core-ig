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
Title:              "Rol de Profesional de la Salud (Core)"
Description:        "Perfil de Rol de Profesional de la Salud (PractitionerRole)"

* insert ProfileMeta
* insert RuleSetStatus (0, draft, pc)

* code 1..*
* code ^short = "Código de identificación del rol del profesional de la salud."
* code ^definition = "Código de identificación del rol del profesional de la salud."

* practitioner 1..1
* practitioner only Reference(PractitionerCrCore)
* practitioner ^short = "Profesional de la salud que desempeña el rol."
* practitioner ^definition = "Profesional de la salud que desempeña el rol."


* organization 1..1
* organization only Reference(OrganizationCrCore)
* organization ^short = "Organización en la que el profesional de la salud desempeña el rol."
* organization ^definition = "Organización en la que el profesional de la salud desempeña el rol."
    

* specialty 0..*
* specialty ^short = "Especialidad del profesional de la salud."
* specialty ^definition = "Especialidad del profesional de la salud."
