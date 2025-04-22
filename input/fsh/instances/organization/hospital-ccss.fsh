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
Instance:       OrganizacionHospitalCCSS
InstanceOf:     OrganizationCrCore
Title:          "Organización - Hospital Público"
Description:    "Hospital Público - Caja Costarricense de Seguro Social"
Usage:          #example

* id = "Organizacion-CCSS-02"

* identifier.use = #official
* identifier.system = "https://atv.hacienda.go.cr/ATV/frmConsultaSituTributaria.aspx"
* identifier.value = "4000042147"
* identifier.type.coding.system = Canonical(IdentifierDomain)
* identifier.type.coding.code = #JURIDICA
* identifier.type.coding.display = "Cédula Jurídica"

* active = true

* type.coding.system = Canonical(OrganizationTypeCode)
* type.coding.code = #hospital-nacional-general

* extension[+].url = Canonical(OrganizationServiceTypeExt)
* extension[=].valueCodeableConcept.coding.system = Canonical(OrganizationActivityCode)
* extension[=].valueCodeableConcept.coding.code = #8610.0.01

* name = "Hospital San Vicente de Paul"
* alias = "CCSS - Hospital San Vicente de Paul  de Heredia"

* contact[0].name.use = #official
* contact[0].name.given = "Alfredo"
* contact[0].name.family = "Flores"
* contact[0].name.text = "Alfredo Flores"

* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "+506 2523 4567"
* contact[0].telecom[0].use = #work

* contact[0].telecom[1].system = #email
* contact[0].telecom[1].value = "hps-sanvicente@ccss.sa.cr"
* contact[0].telecom[1].use = #work

* contact[0].address.use = #work
* contact[0].address.type = #both
* contact[0].address.text = "San José, Costa Rica"
* contact[0].address.line[0] = "San José, Costa Rica"
* contact[0].address.city = "San José"

* contact[0].purpose.coding.system = "http://terminology.hl7.org/CodeSystem/contactentity-type"
* contact[0].purpose.coding.code = #ADMIN
* contact[0].purpose.text = "Administración"

* partOf = Reference(OrganizacionCCSS)



