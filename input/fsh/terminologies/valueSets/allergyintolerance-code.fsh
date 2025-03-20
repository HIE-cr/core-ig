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

ValueSet:       AllergyIntoleranceCode
Id:             allergy-intolerance-code
Title:          "Código SNOMED-CT de la alergia o intolerancia"
Description:    "Código SNOMED-CT de la alergia o intolerancia para el CORE de Costa Rica"

* insert ValueSetMeta
* insert RuleSetStatus (0, draft, pc)

// Incluimos todos los códigos de alergias e intolerancias
* ^copyright = "Este recurso incluye contenido de SNOMED CT, el cual está sujeto a los derechos de autor de SNOMED International. SNOMED CT® fue desarrollado originalmente por el NHS británico."
* include codes from valueset $AllergyIntoleranceCode