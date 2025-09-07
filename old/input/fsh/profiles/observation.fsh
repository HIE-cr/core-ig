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
Profile:    ObservationCrCore
Parent:     Observation
Id:         observation-cr-core
Title:      "Observación"
Description: "Perfil CORE de Observación (Observation)"

* insert ProfileMeta
* insert RuleSetStatus (0, draft, pc)


* identifier MS
  * ^short = "Identificación para la observación"

* status MS
  * ^short = "registered|preliminary|final|amended|corrected|cancelled|entered-in-error|unknown"
  * ^definition = "Estado de la observación"
* status from ObservationStatus (required)
  * ^binding.description = "Códigos provistos para el estado de una observación"

* category MS
  * ^short = "Clasificación del tipo de observación"
* category from ObservationCategoryCodes (preferred)
  * ^binding.description = "Códigos de alto nivel para la categoría de una observación"

* code MS
  * ^short = "Tipo de observación (code/type)"
* code from LOINCCodes (example)
  * ^binding.description = "Códigos de identificación simple para el nombre de una observación"	

* subject MS
  * ^short = "Sobre Quien o Que se está realizando la observación"
* subject only Reference(PatientCrCore or LocationCrCore)

* encounter MS
  * ^short = "Evento clínico durante el cual se hizo esta observación"
* encounter only Reference(EncounterCrCore)

* effective[x] MS
  * ^short = "Tiempo/Tiempo-periodo de relevancia clínica para la observación"

* performer MS
  * ^short = "Quien es responsable por la observación"
* performer only Reference(PatientCrCore or PractitionerRoleCrCore or OrganizationCrCore or PatientCrCore)

* value[x] MS
  * ^short = "Actual Resultado"

* interpretation MS
  * ^short = "Alta, baja, normal, etc"
  * ^definition = "Interpretación del valor de la observación"

* interpretation from ObservationInterpretationCodes (extensible)
  * ^binding.description = "Códigos de identificación para la interpretación de la observación"

* note MS
  * ^short = "Comentarios sobre la observación"

* specimen MS
  * ^short = "Muestra tomada para la observación"

* hasMember MS
  * ^short = "Grupo de recursos relacionados a la observación" 

* hasMember only Reference(ObservationCrCore or QuestionnaireResponse or MolecularSequence)

* component MS
  * ^short = "Componentes de los resultados"	
  * code MS
    * ^short = "Tipo de componente de la observación (code/type)"    
  * code from LOINCCodes (example)
    * ^binding.description = "Códigos de identificación simple para el nombre de una observación"	
  * value[x] MS
    * ^short = "Actual Resultado del componente"
  * interpretation MS
    * ^short = "Alta, baja, normal, etc"
    * ^definition = "Interpretación del valor del componente de la observación"
  * interpretation from ObservationInterpretationCodes (extensible)
    * ^binding.description = "Códigos de identificación para la interpretación de la observación"
