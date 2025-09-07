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
 @type:    PractitionerRole
 @purpose: Rol de Profesional de la Salud
 @comment: - Rol de Profesional de la Salud
*/
Instance:       PractitionerRoleNacionalResidente
InstanceOf:     PractitionerRoleCrCore
Title:          "Rol de Profesional de la Salud - Nacional Residente"
Description:    "Rol de Profesional de la Salud - Nacional Residente"
Usage:          #example

* id = "PractitionerRoleNacionalResidente01"
* active = true

* code[0].coding.system = "http://terminology.hl7.org/CodeSystem/practitioner-role"
* code[0].coding.code = #doctor
* code[0].coding.display = "Doctor"

* practitioner = Reference(ProfesionalSaludInternacional)
* organization = Reference(OrganizacionCCSS)

* specialty = PractitionerCode#267
* extension[authorizedSigner].valueBoolean = true
