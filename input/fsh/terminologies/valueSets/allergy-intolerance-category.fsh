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

* $AllergyIntoleranceCategory#food "Cualquier sustancia consumida para proporcionar apoyo nutricional al cuerpo."
* $AllergyIntoleranceCategory#medication "Sustancias administradas para conseguir un efecto fisiológico."
* $AllergyIntoleranceCategory#environment "Cualquier sustancia que se encuentre en el medio ambiente, incluida cualquier sustancia que no esté clasificada como alimento, medicamento o producto biológico."
* $AllergyIntoleranceCategory#biologic "Una preparación sintetizada a partir de organismos vivos o sus productos, especialmente una proteína humana o animal, como una hormona o una antitoxina, que se utiliza como agente diagnóstico, preventivo o terapéutico. Entre los ejemplos de medicamentos biológicos se incluyen: extractos alergénicos; terapias génicas; terapias celulares. Existen otros productos biológicos, como los tejidos, que no suelen asociarse con alergias."
* $AllergyIntoleranceCategory#vaccine "Una preparación que contiene un antígeno que se administra para estimular la respuesta inmunitaria y proporcionar inmunidad adquirida a una enfermedad."

