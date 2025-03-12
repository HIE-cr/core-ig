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

Profile:            ConsentCrCore
Parent:             Consent
Id:                 consent-cr-core
Title:              "Consentimientos (Core)"
Description:        "Perfil de Consentimientos (Consent)"

* insert ProfileMeta
* insert RuleSetStatus (0, draft, pc)

* subject only Reference(PatientCrCore)
* subject ^short = "Paciente"
* subject ^definition = "Paciente"

* status ^short = "Estado del Consentimiento."
* status ^definition = "Estado del Consentimiento."

* grantee only Reference(OrganizationCrCore or PatientCrCore or PractitionerCrCore or PractitionerRoleCrCore)
* grantee ^short = "Beneficiario del Consentimiento."
* grantee ^definition = "Beneficiario del Consentimiento."

* provision.actor.reference only Reference(OrganizationCrCore or PatientCrCore or PractitionerCrCore or PractitionerRoleCrCore)
* provision.actor.reference ^short = "Actor del Consentimiento."
* provision.actor.reference ^definition = "Actor del Consentimiento."

* verification.verifiedWith only Reference(PatientCrCore)
* verification.verifiedWith ^short = "Paciente que verifica el Consentimiento."
* verification.verifiedWith ^definition = "Paciente que verifica el Consentimiento."
