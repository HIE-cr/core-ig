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
Profile:    EncounterCrCore
Parent:     Encounter
Id:         encounter-cr-core
Title:      "Encuentro Clínico"
Description: "Perfil CORE de Encuentro Clínico (Encounter)"

* insert ProfileMeta
* insert RuleSetStatus (0, draft, pc)

* identifier 0..* MS
  * ^short = "Identificador(es) por los que se conoce este encuentro"
  * ^definition = "Es el número de identificación del encuentro realizado"

* status MS
  * ^short = "planned | arrived | triaged | in-progress | onleave | finished | cancelled"
  * ^definition = "Determina el estado del encuentro remoto conforme a los códigos definidos por el estándar" 
* status from EncounterStatus (required)
  * ^binding.description = "Códigos requeridos por FHIR"

* class 0..1
* class ^short = "Clasificación del encuentro con el paciente"
* class ^definition = "Clasificación del encuentro con el paciente"
* class from EncounterClass (extensible)

* type 0..1
  * ^short = "Tipo específico de Encuentro"
  * ^definition = "Específica el tipo de encuentro" 
// TODO: Se requiere un ValueSet para type

* serviceType 
  * ^short = "Tipo de servicio que se realiza en el Encuentro"
  * ^definition = "Categorización del servicio que se va a prestar en el encuentro (por ejemplo, servicio de Ginecología)"
// TODO: Se requiere un ValueSet para serviceType

* reason 0..* 
  * ^short = "Razón del Encuentro"
  * ^definition = "Razón por la que se realiza el encuentro, puede ser un diagnóstico o un procedimiento"
  * ^binding.valueSet = "http://hl7.org/fhir/ValueSet/encounter-reason"
  * ^binding.strength = #required
* reason.value 
  * ^short = "Razón codificada por la que tiene lugar el Encuentro"
  * ^definition = "Razón codificada por la que tiene lugar el Encuentro"
* reason.value only CodeableReference(ConditionCrCore or ObservationCrCore)

* subject MS
* subject only Reference(PatientCrCore)
  * ^short = "Referencia al paciente del encuentro"
  * ^definition = "La referencia al paciente que está presente en el encuentro clínico sobre un paciente nacional."

* appointment 0..1 
  * ^short = "Reserva de un evento de atención médica entre paciente(s), profesional(es), persona(s) relacionada(s) y/o dispositivo(s)" 
  * ^definition = "Cita o agendamiento médico, la cual es resultado de un encuentro"

* participant MS
* participant ^short = "Participantes involucrados en el encuentro sin considerar al paciente"
  * type MS
  * type from ParticipantType (extensible)
  * type ^short = "Rol del participante en el encuentro"

  * actor 1..1 MS
  * actor ^short = "Referencia al participante"
  * actor  only Reference(PractitionerCrCore or PractitionerRoleCrCore)

* diagnosis 0..* 
  * ^short = "Diagnóstico relevante para este encuentro"
  * ^definition = "Diagnóstico relevante para este encuentro"
* diagnosis.condition ^short = "El diagnóstico o procedimiento relevante para el encuentro"
* diagnosis.condition only CodeableReference(ConditionCrCore)
* diagnosis.use 
  * ^short = "Papel que este diagnóstico tiene dentro del encuentro (p.ej. ingreso, facturación, alta…)"
  * ^definition = "Papel que este diagnóstico tiene dentro del encuentro (p.ej. ingreso, facturación, alta…)"
  * ^binding.valueSet = "http://hl7.org/fhir/ValueSet/diagnosis-role"
  * ^binding.strength = #required

* serviceProvider MS
* serviceProvider ^short = "La organización (instalación) responsable de este encuentro"
* serviceProvider only Reference(OrganizationCrCore)

* actualPeriod 0..1 MS
* actualPeriod ^short = "La hora de inicio y finalización del encuentro"
* actualPeriod ^definition = "La hora de inicio y finalización del encuentro"

* plannedStartDate MS
* plannedStartDate ^short = "Hora de inicio"

* plannedEndDate MS
* plannedEndDate ^short = "Hora de finalización"

* length MS
* length ^short = "Cantidad de tiempo que duró el encuentro (menos tiempo ausente)"
* length ^definition = "Cantidad de tiempo que duró el encuentro (menos tiempo ausente)"
