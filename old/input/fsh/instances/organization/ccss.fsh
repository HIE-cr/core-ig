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
Instance:       OrganizacionCCSS
InstanceOf:     OrganizationCrCore
Title:          "Organización - Institución Pública"
Description:    "Institución Pública - Caja Costarricense de Seguro Social"
Usage:          #example

* id = "Organizacion-CCSS-01"

* identifier.use = #official
* identifier.system = "https://hie.cr/mpi"
* identifier.value = "4000042147"
* identifier.type.coding.system = Canonical(IdentifierDomain)
* identifier.type.coding.code = #JURIDICA
* identifier.type.coding.display = "Cédula Jurídica"

* active = true

* type.coding.system = Canonical(OrganizationTypeCode)
* type.coding.code = #prestadora-servicios-salud

* extension[+].url = Canonical(OrganizationServiceTypeExt)
* extension[=].valueCodeableConcept.coding.system = Canonical(OrganizationActivityCode)
* extension[=].valueCodeableConcept.coding.code = #8601.0.00

* name = "Caja Costarricense de Seguro Social"
* alias = "CCSS"

* contact[0].name.use = #official
* contact[0].name.given = "Iván"
* contact[0].name.family = "González"
* contact[0].name.text = "Iván González"

* contact[0].telecom[0].system = #phone
* contact[0].telecom[0].value = "+506 2523 0000"
* contact[0].telecom[0].use = #work

* contact[0].telecom[1].system = #email
* contact[0].telecom[1].value = "info@ccss.sa.cr"
* contact[0].telecom[1].use = #work

* contact[0].address.use = #work
* contact[0].address.type = #both
* contact[0].address.text = "San José, Costa Rica"
* contact[0].address.line[0] = "San José, Costa Rica"
* contact[0].address.city = "San José"

* contact[0].purpose.coding.system = "http://terminology.hl7.org/CodeSystem/contactentity-type"
* contact[0].purpose.coding.code = #ADMIN
* contact[0].purpose.text = "Administración"


* contact[1].name.use = #official
* contact[1].name.given = "Lucía"
* contact[1].name.family = "Alfaro"
* contact[1].name.text = "Lucía Alfaro"

* contact[1].telecom[0].system = #phone
* contact[1].telecom[0].value = "+506 2523 0000"
* contact[1].telecom[0].use = #work

* contact[1].telecom[1].system = #email
* contact[1].telecom[1].value = "facturacion@ccss.sa.cr"
* contact[1].telecom[1].use = #work

* contact[1].address.use = #work
* contact[1].address.type = #both
* contact[1].address.text = "San José, Costa Rica"
* contact[1].address.line[0] = "San José, Costa Rica"
* contact[1].address.city = "San José"

* contact[1].purpose.coding.system = "http://terminology.hl7.org/CodeSystem/contactentity-type"
* contact[1].purpose.coding.code = #BILL
* contact[1].purpose.text = "Facturación"

