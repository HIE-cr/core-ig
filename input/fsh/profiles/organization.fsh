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
Title:              "Organizaciones (Core)"
Description:        "Perfil de Organizaciones (Organization)"

* insert ProfileMeta
* insert RuleSetStatus (0, draft, pc)

* identifier 0..* MS
  * system MS
  * system ^short = "Sistema de identificación de la organización."
  * value MS
  * value ^short = "Código de identificación de la organización o número de documento."

* active ^definition = "Indica si la Organización está activa o no."
* active ^short = "Indica si la Organización está activa o no."

* type 0..1
* type ^short = "Tipo de Organización."
* type ^definition = "Tipo de Organización."

* name 1.. MS
* name ^short = "Nombre de la Organización."
* name ^definition = "Nombre de la Organización."

* alias 0.. MS
* alias ^short = "Alias de la Organización."

* partOf 0..1
* partOf ^short = "Organización de la que forma parte."
* partOf ^definition = "Organización de la que forma parte."