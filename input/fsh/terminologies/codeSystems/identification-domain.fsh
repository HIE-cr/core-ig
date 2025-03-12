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

CodeSystem:     CoreCrIdentifierDomain
Id:             identification-domain
Title:          "Dominio de Identificación"
Description:    "Dominio de Identificación para el CORE de Costa Rica"

* insert CodeSystemMeta
* insert RuleSetStatus (0, draft, pc)

* #CEDULA "Cédula de Identidad del Registro Civil"
* #DIMEX "Documento de Identificación Migratorio para Extranjeros"
* #PASAPORTE "Pasaporte"
* #TEMPORAL "Documento de Identificación Temporal/Interno"
* #CCSS "Número de Afiliación de la Caja Costarricense de Seguro Social para Extranjeros"
* #JURIDICA "Cédula Jurídica"