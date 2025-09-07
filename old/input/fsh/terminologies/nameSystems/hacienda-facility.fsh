Instance: NamingSystemHaciendaFacility
InstanceOf: NamingSystem
Usage: #definition
Title: "Sistema de Identificadores de Hacienda"
Description: "Sistema que define los identificadores utilizados en Hacienda"

* name = "HACIENDA_FACILITY"
* status = #active
* experimental = false
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension[=].valueCode = #trial-use

* kind = #identifier
* date = "2025-07-08"
* publisher = "Ministerio de Hacienda"
* responsible = "Hacienda"
* description = "Sistema que define los identificadores oficiales de la población usuaria del Hacienda"
* usage = "Utilizado en Organization.identifier.system, Patient.identifier.system, etc."

* uniqueId[0].type = #uri
* uniqueId[0].value = "https://hacienda.go.cr/facility"
* uniqueId[0].preferred = true
