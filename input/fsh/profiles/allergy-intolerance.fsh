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

Profile:        AllergyIntoleranceCrCore
Parent:         AllergyIntolerance
Id:             allergy-intolerance-cr-core
Title:          "Alergias e Intolerancias"
Description:    "Perfil CORE de Alergias e Intolerancias (AllergyIntolerance)"

* insert ProfileMeta
* insert RuleSetStatus (0, draft, pc)

* clinicalStatus MS
* clinicalStatus from http://hl7.org/fhir/ValueSet/allergyintolerance-clinical (required)
  * ^short = "active | inactive | resolved"
  * ^definition = "Estado clínico de la alergia o intolerancia."

* verificationStatus from http://hl7.org/fhir/ValueSet/allergyintolerance-verification (required)

* type MS
  * ^short = "allergy | intolerance"
  * ^definition = "Tipo de reacción: alergia o intolerancia."

* category MS
* category from AllergyIntoleranceCategory (required)
  * ^short = "food | medication | environment | biologic | vaccine"
  * ^definition = "Categoría de la alergia o intolerancia."

* criticality MS
* criticality from AllergyIntoleranceCriticality (required)
  * ^short = "low | high | unable-to-assess"
  * ^definition = "Gravedad de la reacción."

* code 1.. MS
* code from ConditionProblemDiagnosisCodes (required)
  * ^short = "Código SNOMED-CT de la alergia o intolerancia."
  * ^definition = "Código SNOMED-CT de la alergia o intolerancia."

* patient MS
* patient only Reference(PatientCrCore)
  * ^short = "Paciente al que se le asocia la alergia o intolerancia."
  * ^definition = "Paciente al que se le asocia la alergia o intolerancia."

* onset[x] MS
* onset[x] only dateTime
  * ^short = "Fecha y hora de inicio de la alergia o intolerancia."
  * ^definition = "Fecha y hora de inicio de la alergia o intolerancia."

* reaction MS
  * ^short = "Reacción asociada a la alergia o intolerancia."
  * ^definition = "Descripción de la reacción asociada a la alergia o intolerancia."

  * manifestation MS
    * ^short = "Manifestación clínica y sintomas del evento adverso"
    * ^definition = "Manifestación clínica y sintomas del evento adverso"
  * manifestation from SNOMEDCTClinicalFindings (required)

  * severity MS
    * ^short = "mild | severe"
    * ^definition = "Gravedad de la reacción."
  * severity from AllergyIntoleranceSeverity (required)
