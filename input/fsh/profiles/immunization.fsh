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
Profile:    ImmunizationCrCore
Parent:     Immunization
Id:         immunization-cr-core
Title:      "Inmunización"
Description: "Perfil CORE de Vacunas (Immunization)"

* insert ProfileMeta
* insert RuleSetStatus (0, draft, pc)

* identifier MS
* identifier ^short = "Identificador(es) por los que se conoce este registro de Inmunización. En el caso del sistema público correspondería al ID del Registro de Inmunización"
* identifier ^definition = "Es el número de identificación del evento donde a un paciente se le administra una vacuna o registro de inmunización" 

* status MS
* status ^short = "completed | entered-in-error | not-done"
* status ^definition = "Indica el estado actual del evento de inmunización"
* status from http://hl7.org/fhir/ValueSet/immunization-status (required)

* patient MS
* patient only Reference(PatientCrCore)
* patient ^short = "Paciente inmunizado"
* patient ^definition = "El paciente que recibió o no recibió la inmunización"

* performer MS
* performer ^short = "Quién realizó la inmunización"
* performer ^definition = "Indica quién realizó el evento de inmunización"
* performer.actor MS
* performer.actor only Reference(PractitionerCrCore or OrganizationCrCore)
* performer.actor ^short = "Prestador personal u organizacional que realizó la acción"
* performer.actor ^definition = "Prestador personal u organizacional que realizó la acción"

* vaccineCode MS
* vaccineCode from VaccineCode (required)
* vaccineCode ^short = "Vacuna que se administró o se iba a administrar"
* vaccineCode ^definition = "Vacuna que se administró o se iba a administrar. Se proporciona valores que utilizan en el RNI (Registro Nacional de Inmunizaciones)"
// TODO: Se require definir el ValueSet de vacunas
* vaccineCode.text MS
  * ^short = "Nombre normalizado a nivel nacional de la vacuna"

* lotNumber 0..1 MS
* lotNumber ^short = "Número de lote de la vacuna"
* lotNumber ^definition = "Número de lote del producto de la vacuna"

* expirationDate MS
* expirationDate ^short = "Fecha de caducidad de la vacuna"
* expirationDate ^definition = "Fecha de vencimiento del lote de la vacuna"

* protocolApplied MS
* protocolApplied ^short = "Protocolo seguido por el proveedor"
* protocolApplied ^definition = "El protocolo (conjunto de recomendaciones) que sigue el proveedor que administró la dosis"

* occurrence[x] MS
* occurrence[x] ^short = "Momento de administración de la vacuna" 
* occurrence[x] ^definition = "Momento en la que se realiza la inmunización o se administra la vacuna"

* occurrenceDateTime ^short = "Fecha y hora de la administración"
* occurrenceString ^short = "Momento de la administración"

* status MS
* status ^short = "completed | entered-in-error | not-done"
* status ^definition = "Indica el estado actual del evento de inmunización"
* status from http://hl7.org/fhir/ValueSet/immunization-status (required)

* statusReason  MS
* statusReason from ImmunizationStatusReasonCodes (required)
* statusReason ^short = "Razón de no realizarse la inmunización"
* statusReason ^definition = "Indica la razón por la que no se realizó el evento de vacunación"
// TODO: Se require definir el ValueSet de razones
  * text MS
    * ^short = "Descripción de la razón por la cual no se produjo la inmunización"

* informationSource MS
* informationSource ^short = "Fuente de la información"
* informationSource ^definition = "La fuente de la información sobre la inmunización"
* informationSource only CodeableReference(PatientCrCore or PractitionerCrCore or PractitionerRoleCrCore or OrganizationCrCore)

* reaction MS
* reaction ^short = "Detalles de una reacción que proviene de la inmunización"
  * date ^short = "Cuándo comenzó la reacción"
  * date ^definition = "Fecha de reacción a la inmunización"
  * reported ^short = "Indica si se reportó reacción adversa a la vacuna"
  * reported ^definition = "Reporte de reacción adversa a la vacuna"

* location 0..1 MS
* location ^short = "Dónde se produjo la inmunización"
* location ^definition = "El lugar donde se produjo la administración de la vacuna"
* location only Reference(LocationCrCore)

* programEligibility 0.. MS
  * ^short = "Corresponde al Id del criterio de elegibilidad de la vacuna administrada"
* programEligibility.programStatus from http://hl7.org/fhir/ValueSet/immunization-program-eligibility (example)
  * ^short = "Descripción del programa asociado al identificador del criterio"