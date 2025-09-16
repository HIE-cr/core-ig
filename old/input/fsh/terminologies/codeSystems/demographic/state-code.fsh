/* ------------------------------------------------------------------ 
 @type:         FSH-File for a FHIR® CodeSystem Resource
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

CodeSystem:     StateCode
Id:             state-code
Title:          "Cátalogo nacional de provincias"
Description:    "Código de provincia en formato Zip Code"

* insert CodeSystemMeta
* insert RuleSetStatus (0, draft, pc)

// Incluimos todos los códigos de provincias

* #1 "San José" "San José"
* #2 "Alajuela" "Alajuela"
* #3 "Cartago" "Cartago"
* #4 "Heredia" "Heredia"
* #5 "Guanacaste" "Guanacaste"
* #6 "Puntarenas" "Puntarenas"
* #7 "Limon" "Limon"
