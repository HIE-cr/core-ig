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

Profile:        MedicationCrCore
Parent:         Medication
Id:             medication-cr-core
Title:          "Medicamentos (Core)"
Description:    "Perfil de Medicamentos (Medication)"

* insert ProfileMeta
* insert RuleSetStatus (0, draft, pc)

* code 1.. MS
* code from http://hl7.org/fhir/ValueSet/medication-codes (required)
// TODO: Se require definir el ValueSet de medicación
  * ^short = "Código de Medicamento"
  * ^definition = "Código de Medicamento"


* doseForm MS
* doseForm ^short = "Forma de la medicación"
// TODO: Se require definir el ValueSet de forma de medicación

* ingredient MS
* ingredient ^short = "Ingrediente activo de la medicación"
// TODO: Se require definir el ValueSet de ingredientes activos

* ingredient.item MS
* ingredient.item ^binding.description = "SNOMED CT drogas/substancias"
* ingredient.item ^short = "Ingrediente activo"
* ingredient.item ^definition = "Ingrediente activo"
// TODO: Se require definir el ValueSet de ingredientes activos

* ingredient.strength[x] MS
  * ^short = "Una proporción de dos valores de Cantidad: un numerador y un denominador"
  * ^definition = "Una proporción de dos valores de Cantidad: un numerador y un denominador"

* ingredient.isActive MS
  * ^short = "Ingrediente activo activo"
  * ^definition = "Ingrediente activo activo"
