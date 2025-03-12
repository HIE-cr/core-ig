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

Profile:        MedicationRequestCrCore
Parent:         MedicationRequest
Id:             medication-request-cr-core
Title:          "Solicitud de Medicamento (Core)"
Description:    "Perfil de Solicitud de Medicamento (MedicationRequest)"

* insert ProfileMeta
* insert RuleSetStatus (0, draft, pc)

* intent MS 
* intent from http://hl7.org/fhir/ValueSet/medicationrequest-intent (required)
  * ^short = "Propósito de la solicitud de medicamento"
  * ^definition = "Propósito de la solicitud de medicamento proposal | plan | order | original-order | reflex-order | filler-order | instance-order | option"
  * ^binding.description = "Códigos que indican el propósito de la solicitud de medicamento"

* status 1..1 MS
* status from http://hl7.org/fhir/ValueSet/medicationrequest-status (required)
  * ^short = "Estado de la solicitud de medicamento"
  * ^definition = "Estado de la solicitud de medicamento"
  * ^binding.description = "Códigos que indican el estado de la solicitud de medicamento"

* category 0..1 MS
* category from http://hl7.org/fhir/ValueSet/medicationrequest-admin-location (required)
  * ^short = "Categoría de la solicitud de medicamento"
  * ^definition = "Categoría de la solicitud de medicamento"
  * ^binding.description = "Códigos que indican la categoría de la solicitud de medicamento"

* medication 1..1 MS
  * ^short = "Medicamento solicitado"
  * ^definition = "Medicamento solicitado"
* medication only CodeableReference(MedicationCrCore)

* subject 1..1 MS
  * ^short = "Paciente que recibirá el medicamento"
  * ^definition = "Paciente que recibirá el medicamento"
* subject only Reference(PatientCrCore)

* supportingInformation 0..1 MS
  * ^short = "Información adicional"
  * ^definition = "Información adicional"
* supportingInformation only Reference(EncounterCrCore or ObservationCrCore or ConditionCrCore)

* authoredOn 0..1 MS
  * ^short = "Fecha y hora de la declaración"
  * ^definition = "Fecha y hora de la declaración"

* requester 0..1 MS
  * ^short = "Quién solicitó la declaración"
  * ^definition = "Quién solicitó la declaración"
* requester only Reference(PractitionerCrCore or PractitionerRoleCrCore or PatientCrCore)

* reason 0..1 MS
  * ^short = "Por qué se administró la medicación"
  * ^definition = "Por qué se administró la medicación"
* reason only CodeableReference(ConditionCrCore or ObservationCrCore)

* encounter 0..1 MS
  * ^short = "Encuentro en el que se administró la medicación"
  * ^definition = "Encuentro en el que se administró la medicación"
* encounter only Reference(EncounterCrCore)

* groupIdentifier 0..1 MS
  * ^short = "Identificador de grupo"
  * ^definition = "Identificador de grupo"

* note 0..1 MS
  * ^short = "Comentario adicional"
  * ^definition = "Comentario adicional"

* dosageInstruction 0..1 MS
  * ^short = "Detalles de la dosis administrada"
  * ^definition = "Detalles de la dosis administrada"

* dispenseRequest 0..1 MS
  * ^short = "Detalles de la dispensación"
  * ^definition = "Detalles de la dispensación"

  * dispenser 0..1 MS
    * ^short = "Quién dispensó la medicación"
    * ^definition = "Quién dispensó la medicación"
  * dispenser only Reference(OrganizationCrCore)

  * validityPeriod 0..1 MS
    * ^short = "Período de validez de la declaración"
    * ^definition = "Período de validez de la declaración"

  * quantity 0..1 MS
    * ^short = "Cantidad de medicación dispensada"
    * ^definition = "Cantidad de medicación dispensada"

  * expectedSupplyDuration 0..1 MS
    * ^short = "Duración esperada de la dispensación"
    * ^definition = "Duración esperada de la dispensación"

  * numberOfRepeatsAllowed 0..1 MS
    * ^short = "Número de repeticiones permitidas"
    * ^definition = "Número de repeticiones permitidas"
