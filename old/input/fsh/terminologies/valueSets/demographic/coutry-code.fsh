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

ValueSet:       CoutryCode3Alpha
Id:             coutry-code-3-alpha
Title:          "Listado de países"
Description:    "Código de país en formato ISO 3166-1 alpha-3"

* insert ValueSetMeta
* insert RuleSetStatus (0, draft, pc)

// Incluimos todos los códigos de países
* include codes from valueset http://hl7.org/fhir/ValueSet/iso3166-1-3