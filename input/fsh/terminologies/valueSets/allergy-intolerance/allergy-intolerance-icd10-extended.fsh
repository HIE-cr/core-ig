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

ValueSet:       AllergyIntoleranceICD10Extended
Id:             allergy-intolerance-icd10-extended
Title:          "Conjunto de Valores de Alergias e Intolerancias (CIE-10 Extendido)"
Description:    "Conjunto de valores que representa alergias e intolerancias codificadas con CIE-10, incluyendo reacciones a alimentos, medicamentos y otras sustancias."

* insert ValueSetMeta
* insert RuleSetStatus (0, draft, pc)

* include codes from system AllergyIntoleranceICD10