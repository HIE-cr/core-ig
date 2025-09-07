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
 @type:    Organization
 @purpose: Organización CORE
 @comment: - Organización CORE
*/
Instance:       OrganizacionHospitalPrivado
InstanceOf:     OrganizationCrCore
Title:          "Organización- Hospital Privado"
Description:    "Hospital Privado Nacional"
Usage:          #example

* id = "Organizacion-Hospital-Privado-03"

* identifier.use = #official
* identifier.system = "https://hacienda.go.cr/facility"
* identifier.value = "3101176555"
* identifier.type.coding.system = Canonical(IdentifierDomain)
* identifier.type.coding.code = #JURIDICA
* identifier.type.coding.display = "Cédula Jurídica"

* active = true

* type.coding.system = Canonical(OrganizationTypeCode)
* type.coding.code = #hospital-nacional-privado

* extension[+].url = Canonical(OrganizationServiceTypeExt)
* extension[=].valueCodeableConcept.coding.system = Canonical(OrganizationActivityCode)
* extension[=].valueCodeableConcept.coding.code = #8610.0.01

* name = "Hospital CIMA San José"
* alias = "Hospital CIMA"

* contact[0].name.use = #official
* contact[0].name.given = "Jorge"
* contact[0].name.family = "Ramos"
* contact[0].name.text = "Jorge Ramos"

* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "+506 2208 1000"
* contact[0].telecom[0].use = #work

* contact[0].telecom[1].system = #email
* contact[0].telecom[1].value = "info@hospitalcima.com"
* contact[0].telecom[1].use = #work

* contact[0].address.use = #work
* contact[0].address.type = #both
* contact[0].address.text = "San José, Costa Rica"
* contact[0].address.line[0] = "San José, Costa Rica"
* contact[0].address.city = "Escazú"
* contact[0].address.state = "San José"

* contact[0].purpose.coding.system = "http://terminology.hl7.org/CodeSystem/contactentity-type"
* contact[0].purpose.coding.code = #PATINF
* contact[0].purpose.text = "Información al Paciente"
