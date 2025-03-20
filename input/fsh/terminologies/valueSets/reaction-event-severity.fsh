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

ValueSet:       ReactionEventSeverity
Id:             reaction-event-severity
Title:          "Gravedad de la reacción"
Description:    "Gravedad de la reacción de un evento"

* insert ValueSetMeta
* insert RuleSetStatus (0, draft, pc)

// Incluimos los códigos de severidad de reacción
* ^copyright = "Este recurso incluye contenido de SNOMED CT, el cual está sujeto a los derechos de autor de SNOMED International. SNOMED CT® fue desarrollado originalmente por el NHS británico."
* include $ReactionEventSeverity#mild "Leve"
* include $ReactionEventSeverity#severe "Severo"
