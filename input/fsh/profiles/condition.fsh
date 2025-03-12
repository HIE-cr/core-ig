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
Profile:    ConditionCrCore
Parent:     Condition
Id:         condition-cr-core
Title:      "Condición (Core)"
Description: "Perfil de Condiciones o Diagnósticos (Condition)"

* insert ProfileMeta
* insert RuleSetStatus (0, draft, pc)

* clinicalStatus MS
* clinicalStatus ^short = "El estatus en el cual se encuentra la condición: active| recurrece | relapse | inactive | remission | resolved"
* clinicalStatus  from 	http://hl7.org/fhir/ValueSet/condition-clinical (required)
* clinicalStatus ^binding.description = "Códigos definidos por estándar"
* clinicalStatus ^definition = "El estatus en el cual se encuentra la condición de un Paciente"

* verificationStatus MS 
* verificationStatus ^short = "Estado de verificación de la condición o diagnóstico: unconfirmed | provisional | differential | confirmed | refuted | entered-in-error"
* verificationStatus ^definition = "Estado de verificación de la condición o Diagnóstico"
* verificationStatus from http://hl7.org/fhir/ValueSet/condition-ver-status (required)
* verificationStatus ^binding.description = "Códigos definidos por estándar"

* subject MS
* subject ^short = "Paciente sobre al que corresponde la condición." 
* subject ^definition = "Paciente sobre al que corresponde la condición." 
* subject only Reference(PatientCrCore)

* code MS
* code ^definition = "Identificación de la condición, el problema o el diagnóstico o registro del \"problema ausente\" o de los \"problemas desconocidos\"."
// TODO: Se requiere un ValueSet para code de diagnositcos en SNOMED-CT
* code ^short = "Códigos de SNOMED-CT y adicionales de ausente o desconocido"
* code ^binding.description = "Diagnósticos en SNOMED-CT. El ValueSet trae toda la terminología + Problema Ausente o Desconocido"
