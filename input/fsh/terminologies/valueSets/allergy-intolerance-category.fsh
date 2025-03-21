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

ValueSet:       AllergyIntoleranceCategory
Id:             allergy-intolerance-category
Title:          "Categoría de Alergia/Intolerancia"
Description:    "Categoría de Alergia/Intolerancia para el CORE de Costa Rica"

* insert ValueSetMeta
* insert RuleSetStatus (0, draft, pc)

* $AllergyIntoleranceCategory#food "Alimentos y sus componentes." 
* $AllergyIntoleranceCategory#medication "Medicamentos y sus componentes."
* $AllergyIntoleranceCategory#environment "Sustancias ambientales, como polen, polvo, moho, caspa de animales, insectos, etc."
* $AllergyIntoleranceCategory#biologic "Productos biológicos, como sueros, sangre y derivados, etc."
* $AllergyIntoleranceCategory#vaccine "Vacunas y sus componentes."

