/* ------------------------------------------------------------------ 
 @type:         FSH-File for a FHIR® Instance Resource
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
 @element: resource
 @concetp: Resource
 @type:    Practitioner
 @purpose: profesional de salud Nacional
 @comment: - profesional de salud Nacional
*/
Instance:       ProfesionalSaludInternacional
InstanceOf:     PractitionerCrCore
Title:          "Profesional de salud Residente Completo"
Description:    "Profesional de salud Residente con DIMEX"
Usage:          #example
// Este es un ehemplo de profesional de salud nacional con dimex

* id = "profesionalSaludResidente01"

* identifier.use = #official
* identifier.system = "https://migracion.go.cr/dimex"
* identifier.value = "123456789012"
* identifier.type.coding.system = Canonical(IdentifierDomain)
* identifier.type.coding.code = #DIMEX
* identifier.type.coding.display = "Documento de Identificación Migratorio para Extranjeros"
* identifier.period.end = "2027-08-15"

* active = true

* name.use = #official
* name.given = "Luis"
* name.family = "García"

* gender = #male

* birthDate = "1960-09-01"

* telecom[0].system = #phone
* telecom[0].value = "+50687820000"
* telecom[0].use = #home

* telecom[1].system = #email
* telecom[1].value = "luis.garcia@clinica.org"
* telecom[1].use = #work


* address = AddressPractitioner01


Instance:   AddressPractitioner01
InstanceOf: AddressBaseCrCore
Usage:      #inline
* use = #home
* type = #both
* line = "Hotel Ave del Paraíso"

* district.extension = PractitionerDistrictAddress01
* district = "San José"

* city.extension = PractitionerCityAddress01
* city = "Montes de Oca"

* state.extension = PractitionerStateAddress01
* state = "San Pedro"

* postalCode = "10101"

* country.extension = PractitionerCountryAddress01
* country = "Costa Rica"


Instance:   PractitionerCountryAddress01
InstanceOf: CountryCodeExt
Usage:      #inline

* valueCodeableConcept = urn:iso:std:iso:3166#CRI "Costa Rica"


Instance:   PractitionerStateAddress01
InstanceOf: StateCodeExt
Usage:      #inline

* valueCodeableConcept = StateCode#1 "San José"


Instance:   PractitionerCityAddress01
InstanceOf: CityCodeExt
Usage:      #inline

* valueCodeableConcept = CityCode#115 "Montes de Oca"


Instance:   PractitionerDistrictAddress01
InstanceOf: DistrictCodeExt
Usage:      #inline

* valueCodeableConcept = DistrictCode#11501 "San Pedro"