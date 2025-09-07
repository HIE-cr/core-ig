/* ------------------------------------------------------------------ 
 @type:         FSH-File for a FHIR® ValueSet Resource
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

ValueSet:       StateList
Id:             state-list
Title:          "Listado de provincias"
Description:    "Listado de provincias de Costa Rica. Basado en el sistema de código ZIP"

* insert ValueSetMeta
* insert RuleSetStatus (0, draft, pc)

* include codes from system StateCode