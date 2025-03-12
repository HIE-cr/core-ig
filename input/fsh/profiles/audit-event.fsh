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
Profile:        AuditEventCrCore
Parent:         AuditEvent
Id:             audit-event-cr-core
Title:          "Auditoría de Eventos (Core)"
Description:    "Perfil de Auditoría de Eventos (AuditEvent)"

* insert ProfileMeta
* insert RuleSetStatus (0, draft, pc)

* category MS
* category from http://hl7.org/fhir/ValueSet/audit-event-type (required)
  * ^short = "Tipo de evento de auditoría."
  * ^definition = "Tipo de evento de auditoría."
* category ^binding.description = "Eventos de auditoría descritos en FHIR para DICOM"

* code MS
* code from http://hl7.org/fhir/ValueSet/audit-event-sub-type (required)
  * ^short = "Subtipo de evento de auditoría."
  * ^definition = "Subtipo de evento de auditoría."
* code ^binding.description = "Subtipos de eventos de auditoría descritos en FHIR para DICOM"

* action MS
* action from  http://hl7.org/fhir/ValueSet/audit-event-action (required)
* action ^binding.description = "Códigos fijos extraídos de un set de DICOM por FHIR"
* action ^short = "Create| Read/View/Print | Update | Delete | Execute"
* action ^definition = "Código de la acción"

* occurred[x] MS
* occurred[x] ^short = "Fecha y hora del evento de auditoría."
* occurred[x] ^definition = "Fecha y hora del evento de auditoría."

* recorded MS
* recorded ^short = "Momento cuando el evento fue almacenado"
* recorded ^definition = "Momento cuando el evento fue almacenado"

* outcome MS
* outcome ^short = "Resultado de la operación"
* outcome.code from http://hl7.org/fhir/ValueSet/audit-event-outcome
* outcome.code ^binding.description = "Códigos extraídos de DICOM"

* agent MS
* agent ^short = "Quienes actuaron en el evento"
* agent ^definition = "Debe indicar quien solicitó del recurso"

* agent.who MS 
* agent.who ^short = "Quien realizó la acción"
* agent.who ^definition = "Referencia al recurso o Identificación de quien realizó la acción"
* agent.who only Reference(PractitionerRoleCrCore or PractitionerCrCore or OrganizationCrCore or PatientCrCore)

* agent.requestor ^short = "Indicador de si Who es quien solicitó la acción"
* agent.requestor ^definition = "Indicador de si Who es quien solicitó la acción"

* agent.network[x] MS
* agent.network[x] ^short = "Ubicación de la Red de la Aplicación"
* agent.network[x] ^definition = "Ubicación de red lógica para la actividad de la aplicación, si la actividad tiene una ubicación de red."

* agent.networkReference MS
* agent.networkReference ^short = "Ubicación de la Red de la Aplicación como Reference"

* agent.networkString MS
* agent.networkString ^short = "Ubicación de la Red de la Aplicación como String"

* agent.networkUri MS
* agent.networkUri ^short = "Ubicación de la Red de la Aplicación como URI"

* source MS
* source ^short = "Quien reporta el evento"
* source ^definition = "Sitio en donde se reporta el evento"
* source.observer MS 
* source.observer only Reference(PractitionerRoleCrCore or PractitionerCrCore or OrganizationCrCore or PatientCrCore)
* source.observer ^short = "Entidad que reporta el evento"
* source.observer ^definition = "Identificación del Observador donde se reportó el evento"

* entity MS 
* entity ^short = "Entidad que registra la ocurrencia del Evento"
* entity ^definition = "Entidad que registra la ocurrencia del Evento"
* entity.what MS
* entity.what ^short = "Recurso o identificación de la entidad que registra la ocurrencia del evento"
* entity.what ^definition = "Recurso o identificación de la entidad que registra la ocurrencia del evento"