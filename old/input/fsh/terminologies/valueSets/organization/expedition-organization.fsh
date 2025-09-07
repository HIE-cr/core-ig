/* ------------------------------------------------------------------ 
 @type:         FSH-File for a FHIR® ValueSet Resource
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

ValueSet:       ExpeditionOrganizationPatientIdentifier
Id:             expedition-organization-patient-identifier
Title:          "Organización que expiden tipos de identificación para el paciente"
Description:    "Organización que expiden tipos de identificación para el paciente en Costa Rica para el contexto de la salud"

* insert ValueSetMeta
* insert RuleSetStatus (0, draft, pc)

* include IdentifierExpeditionOrganization#TSE
* include IdentifierExpeditionOrganization#CCSS
* include IdentifierExpeditionOrganization#MINSA
* include IdentifierExpeditionOrganization#INS
* include IdentifierExpeditionOrganization#DGM
