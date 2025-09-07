/* ------------------------------------------------------------------ 
 @type:         FSH-File for a FHIR® RuleSet Resource
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

/*
 @element: meta
 @concetp: Metadata
 @type:    Meta
 @propuse: Metadata de la definición de la estructura
 */
RuleSet:            ValueSetMeta

* ^version = "1.0.0"
* ^status = #draft
* ^experimental = false
* ^purpose = "Metadata de la definición de la estructura"
* ^publisher = "Ministerio de Salud de Costa Rica"
* ^date = "2025-03-03"

* ^contact.name = "Ministerio de Salud de Costa Rica"
* ^contact.telecom[0].system = #url
* ^contact.telecom[=].value = "http://www.ministeriodesalud.go.cr"
* ^copyright = "Usado con el permiso de HL7 International, todos los derechos resevados en los Licencias de HL7 Internacional."
