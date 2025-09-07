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
Instance:       PacienteNacional
InstanceOf:     PatientCrCore
Title:          "Paciente Nacional Completo"
Description:    "Paciente Nacional con CEDULA"
Usage:          #example
// Este es un ehemplo de paciente nacional con cédula

* id = "pacienteNacional01"

* identifier.use = #official
* identifier.system = "https://hie.cr/mpi"
* identifier.value = "112345678"
* identifier.type.coding.system = Canonical(IdentifierDomain)
* identifier.type.coding.code = #CEDULA
* identifier.type.coding.display = "Cédula de Identidad del Registro Civil"
* identifier.period.end = "2028-01-01"

* active = true

* name.use = #official
* name.given[0] = "Carlos"
* name.given[1] = "Andrés"
* name.family = "Rodríguez Vargas"

* gender = #male
* birthDate = "1985-04-12"
* maritalStatus.coding.system = "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus"
* maritalStatus.coding.code = #M
* maritalStatus.text = "Casado"

* telecom[0].system = #phone
* telecom[0].value = "+50612345678"
* telecom[0].use = #home

* telecom[1].system = #phone
* telecom[1].value = "+50698765432"
* telecom[1].use = #mobile

* telecom[2].system = #email
* telecom[2].value = "carlos.rodriguez@acme.com"
* telecom[2].use = #work

* telecom[3].system = #email
* telecom[3].value = "carlos.rv@example.com"
* telecom[3].use = #home

* address = AddressPatient01


Instance:   AddressPatient01
InstanceOf: AddressBaseCrCore
Usage:      #inline
* use = #home
* type = #both
* line[0] = "Calle Central,"
* line[1] = "Barrio Chino"

* district.extension = DistrictAddress01
* district = "San José"

* city.extension = CityAddress01
* city = "Central"

* state.extension = StateAddress01
* state = "San José"

* postalCode = "10101"

* country.extension = CountryAddress01
* country = "Costa Rica"


Instance:   CountryAddress01
InstanceOf: CountryCodeExt
Usage:      #inline

* valueCodeableConcept = urn:iso:std:iso:3166#CRI "Costa Rica"


Instance:   StateAddress01
InstanceOf: StateCodeExt
Usage:      #inline

* valueCodeableConcept = StateCode#1 "San José"


Instance:   CityAddress01
InstanceOf: CityCodeExt
Usage:      #inline

* valueCodeableConcept = CityCode#101 "San José"


Instance:   DistrictAddress01
InstanceOf: DistrictCodeExt
Usage:      #inline

* valueCodeableConcept = DistrictCode#10104 "Catedral"