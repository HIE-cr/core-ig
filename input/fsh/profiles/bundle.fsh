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
Title:          "Paquete de Recursos (Core)"
Description:    "Perfil de Paquete de Recursos (Bundle)"

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
