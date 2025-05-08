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
Profile:        BundleCrCore
Parent:         Bundle
Id:             bundle-cr-core
Title:          "Paquete de Recursos"
Description:    "Perfil CORE de Paquete de Recursos (Bundle) con soporte para firma digital GAUDI"

* insert ProfileMeta
* insert RuleSetStatus (0, draft, pc)

* type MS
* type ^short = "Tipo de recurso"
* type ^definition = "Tipo de recurso"

* timestamp MS
* timestamp ^short = "Fecha y hora de creación del paquete"
* timestamp ^definition = "Fecha y hora de creación del paquete"

* entry MS
* entry ^short = "Entradas del paquete"
* entry ^definition = "Entradas del paquete"

* signature 1..1 MS
* signature ^short = "Firma digital del paquete"
* signature ^definition = "Firma digital del paquete"
  * type 1..1 MS
  * type from SignatureTypeCodes (required)
  * type ^short = "Tipo de firma"
  * type ^definition = "Tipo de firma"

  * who 1..1 MS
  * who only Reference(PractitionerRoleCrCore or OrganizationCrCore)
  * who ^short = "Quien firma el paquete"
  * who ^definition = "Quien firma el paquete"

  * data 1..1 MS
  * data only base64Binary
  * data ^short = "Firma digital GAUDI en base64"
  * data ^definition = "Firma digital GAUDI en base64"

