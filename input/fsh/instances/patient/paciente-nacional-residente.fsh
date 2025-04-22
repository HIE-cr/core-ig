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
Instance:       PacienteInternacional
InstanceOf:     PatientCrCore
Title:          "Paciente Residente Completo"
Description:    "Paciente Residente con DIMEX"
Usage:          #example
// Este es un ehemplo de paciente nacional con dimex

* id = "pacienteResidente03"

* identifier.use = #official
* identifier.system = "https://migracion.go.cr/dimex"
* identifier.value = "123456789012"
* identifier.type.coding.system = Canonical(IdentifierDomain)
* identifier.type.coding.code = #DIMEX
* identifier.type.coding.display = "Documento de Identificación Migratorio para Extranjeros"
* identifier.period.end = "2027-08-15"

* active = true

* name.use = #official
* name.given = "Zhang"
* name.family = "Li"

* gender = #male

* birthDate = "1990-09-01"
* maritalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
* maritalStatus.coding.code = #S
* maritalStatus.text = "Soltero"

* telecom[0].system = #phone
* telecom[0].value = "+50678901234"
* telecom[0].use = #home

* telecom[1].system = #phone
* telecom[1].value = "+8613800138000"
* telecom[1].use = #mobile

* telecom[2].system = #email
* telecom[2].value = "zhang.li@example.com"
* telecom[2].use = #work


* address = AddressPatient03


Instance:   AddressPatient03
InstanceOf: AddressBaseCrCore
Usage:      #inline
* use = #home
* type = #both
* line = "Hotel Ave del Paraíso"

* district.extension = DistrictAddress03
* district = "San José"

* city.extension = CityAddress03
* city = "Montes de Oca"

* state.extension = StateAddress03
* state = "San Pedro"

* postalCode = "10101"

* country.extension = CountryAddress03
* country = "Costa Rica"


Instance:   CountryAddress03
InstanceOf: CountryCodeExt
Usage:      #inline

* valueCodeableConcept = urn:iso:std:iso:3166#CRI "Costa Rica"


Instance:   StateAddress03
InstanceOf: StateCodeExt
Usage:      #inline

* valueCodeableConcept = StateCode#1 "San José"


Instance:   CityAddress03
InstanceOf: CityCodeExt
Usage:      #inline

* valueCodeableConcept = CityCode#115 "Montes de Oca"


Instance:   DistrictAddress03
InstanceOf: DistrictCodeExt
Usage:      #inline

* valueCodeableConcept = DistrictCode#11501 "San Pedro"