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

Profile:        MedicationStatementCrCore
Parent:         MedicationStatement
Id:             medication-statement-cr-core
Title:          "Historial Farmacológico (Core)"
Description:    "Perfil de Historial Farmacológico (MedicationStatement)"

* insert ProfileMeta
* insert RuleSetStatus (0, draft, pc)

* effective[x] MS
* effective[x] ^short = "Cuando se administró la medicación"
* effective[x] ^definition = "Cuando se administró la medicación"

* effectiveDateTime MS
* effectiveDateTime ^short = "Fecha y hora de administración"
* effectiveDateTime ^definition = "Fecha y hora de administración"

* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/medication-statement-status (required)
* status ^binding.description = "Códigos que indican el estado de un medicamento"
  * ^short = "Estado de la medicación"
  * ^definition = "Estado de la medicación"


* medication 1..1 MS
  * ^short = "Medicamento administrado"
  * ^definition = "Medicamento administrado"
* medication only CodeableReference(MedicationCrCore)

* subject 1..1 MS
  * ^short = "Paciente que recibió la medicación"
  * ^definition = "Paciente que recibió la medicación"
* subject only Reference(PatientCrCore)
