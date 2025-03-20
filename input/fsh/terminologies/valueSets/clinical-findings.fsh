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

ValueSet:       ClinicalFindings
Id:             clinical-findings
Title:          "Hallazgos Clínicos"
Description:    "Hallazgos Clínicos para el CORE de Costa Rica"

* insert ValueSetMeta
* insert RuleSetStatus (0, draft, pc)

* include codes from valueset $AllergyIntoleranceClinicalFindings