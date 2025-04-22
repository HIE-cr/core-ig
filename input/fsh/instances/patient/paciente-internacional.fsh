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
 @type:    Patient
 @purpose: Paciente Nacional
 @comment: - Paciente Nacional
*/
Instance:       PacienteExtranjero
InstanceOf:     PatientCrCore
Title:          "Paciente Extranjero Completo"
Description:    "Paciente Extranjero con PASAPORTE"
Usage:          #example
// Este es un ehemplo de paciente nacional con cédula

* id = "pacienteExtranjero02"

* identifier.use = #official
* identifier.system = "https://migracion.go.cr/pasaporte"
* identifier.value = "JX123456"
* identifier.type.coding.system = Canonical(IdentifierDomain)
* identifier.type.coding.code = #PASAPORTE
* identifier.type.coding.display = "Pasaporte"
* identifier.period.end = "2030-05-27"

* active = true

* name.use = #official
* name.given = "Emily"
* name.family = "Thompson"

* gender = #female

* birthDate = "1978-03-18"
* maritalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
* maritalStatus.coding.code = #D
* maritalStatus.text = "Divorciado"

* telecom[0].system = #phone
* telecom[0].value = "+14165550198"
* telecom[0].use = #mobile

* telecom[1].system = #email
* telecom[1].value = "emily.thompson@example.ca"
* telecom[1].use = #home

* address[0] = AddressPatient02
* address[1] = AddressPatient04


Instance:   AddressPatient02
InstanceOf: AddressBaseCrCore
Usage:      #inline
* use = #temp
* type = #physical
* line = "Hotel Sheraton"

* district.extension = DistrictAddress02
* district = "San Rafael"

* city.extension = CityAddress02
* city = "Escazú"

* state.extension = StateAddress02
* state = "San José"

* postalCode = "10203"

* country.extension = CountryAddress02
* country = "Costa Rica"

Instance:   AddressPatient04
InstanceOf: AddressBaseCrCore
Usage:      #inline
* use = #home
* type = #both
* line = "123 Maple Street, Apartment 4B"
* city = "Toronto"
* state = "Ontario"
* postalCode = "K1A 0B1"
* country.extension = CountryAddress04
* country = "Canada"


Instance:   CountryAddress02
InstanceOf: CountryCodeExt
Usage:      #inline

* valueCodeableConcept = urn:iso:std:iso:3166#CRI "Costa Rica"


Instance:   StateAddress02
InstanceOf: StateCodeExt
Usage:      #inline

* valueCodeableConcept = StateCode#1 "San José"


Instance:   CityAddress02
InstanceOf: CityCodeExt
Usage:      #inline

* valueCodeableConcept = CityCode#102 "Escazú"


Instance:   DistrictAddress02
InstanceOf: DistrictCodeExt
Usage:      #inline

* valueCodeableConcept = DistrictCode#10203 "San Rafael"


Instance:   CountryAddress04
InstanceOf: CountryCodeExt
Usage:      #inline
* valueCodeableConcept = urn:iso:std:iso:3166#CAN "Canada"