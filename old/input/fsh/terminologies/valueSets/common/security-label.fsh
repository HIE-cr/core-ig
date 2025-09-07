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
@documentation:
                - Confidencialidad sensible
                    - sistema: http://terminology.hl7.org/CodeSystem/v3-Confidentiality
                    - código sugerido: V
                    - uso: Muy restringido, solo para uso interno de la institución

                - Tratamiento
                    - sistema: http://terminology.hl7.org/CodeSystem/v3-ActReason
                    - código sugerido: TREAT
                    - uso: Propósito de tratamiento

--------------------------------------------------------------------*/

ValueSet:       SecurityLabel
Id:             security-label
Title:          "Etiquetas de seguridad"
Description:    "Etiquetas de seguridad para el intercambio de información en salud"

* insert ValueSetMeta
* insert RuleSetStatus (0, draft, pc)

* include codes from system http://terminology.hl7.org/CodeSystem/v3-Confidentiality
