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
Profile:    CompositionCrCore
Parent:     Composition
Id:         composition-cr-core
Title:      "Documento Clínico"
Description: "Perfil CODE del Documento Clínico (Composition)"

* insert ProfileMeta
* insert RuleSetStatus (0, draft, pc)

* identifier 0..1 MS
* identifier ^short = "Identificador local para recurso de documento que puede ser distinto para cada versión del mismo"
* identifier ^definition = "Identificador para el recurso que contiene documento, puede ser usado de manera local. Este idetificador es independiente de la versión del documento"

* status MS
* status ^short = "Estado del documento: preliminary | final | amended | entered-in-error"
* status ^definition = "El estado del documento"
* status from CompositionStatus (required)
* status ^binding.description = "Códigos requeridos por estándar"

* type MS
* type ^short = "Tipo de Documento según especificación de LOINC (Ej para Summarie IPS Loinc = #60591-5)"
* type ^definition = "Especifica el tipo de documento al que refiere este Recurso. Si se desea ajustar a IPS debe ser un resumen con código LOINC 60591-5"

* subject MS
* subject ^definition = "Recurso sobre el cual se ha generado este documento."
* subject ^short = "Recurso sobre el cual se ha generado este documento. Es deseable que el recurso cumpla con un perfil para Costa Rica."

* encounter 0..1 MS
* encounter only Reference(EncounterCrCore)
* encounter ^definition = "Contexto en el cual se generó el documento."
* encounter ^short = "Contexto asistencial en el cual se generó Documento."

* date MS
* date ^short = "Fecha en la cual se editó el documento"
* date ^definition = "Fecha de edición del documento, cuando este fue modificado por el autor"

* author MS
* author only Reference(PractitionerCrCore or PractitionerRoleCrCore or PatientCrCore or OrganizationCrCore)
* author ^short = "Quien creaó el documento"
* author ^definition = "Identifica al responsable de los datos ingresados al documento."

* title MS
* title ^short = "Título del documento"
* title ^definition = "Título oficial del documento para que pueda ser legible."

// Validador
* attester 0..* MS
* attester ^short = "Profesionales validadores del documento"
* attester ^definition = "Profesionales que validan el documento"
  * mode MS
  * mode ^short = "Rol del validador personal | profesional | legal | official"
  * mode from CompositionAttestationMode (required)
  * mode ^binding.description = "Códigos requeridos por FHIR"

  * time MS
  * time ^short = "Fecha y Hora de la validación"
  * time ^definition = "Fecha y Hora de la validación"

  * party MS
  * party only Reference(PatientCrCore or PractitionerCrCore or PractitionerCrCore or OrganizationCrCore)
  * party ^short = "Quien validó"
  * party ^definition = "Quien validó"

* custodian MS
  * ^short = "Organización que mantiene los documentos"
  * ^definition = "Referencia a la organización según perfil nacional"
* custodian only Reference(OrganizationCrCore)

* section 1.. MS

  * ^short = "Sección del documento"
  * ^definition = "Sección de notificación definida para el documento."

  * text MS
    * ^short = "Texto que describe el título o propósito de la sección."
    * ^definition = "Texto que describe el título o propósito de la sección."

  * code 0.. MS
  * code from DocumentSectionCodes (example)
    * ^short = "Código que define el tipo de sección"
    * ^definition = "Código que define el tipo de sección"
  
  * text MS
    * ^short = "Texto que describe el contenido de la sección"
    * ^definition = "Texto que describe el contenido de la sección"

  * entry MS
    * ^short = "Recurso referenciado en esta sección"
    * ^definition = "Puede ser cualquier recurso en función de la sección que se está notificando"

