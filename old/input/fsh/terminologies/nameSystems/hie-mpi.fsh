Instance: NamingSystemHIEMPI
InstanceOf: NamingSystem
Usage: #definition
Title: "Sistema de Identificadores MPI de EDUS"
Description: "Sistema que define los identificadores utilizados en el MPI nacional"

* name = "EDUS_MPI"
* status = #active
* experimental = false
* extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status"
* extension[=].valueCode = #trial-use

* kind = #identifier
* date = "2025-07-08"
* publisher = "HIE Costa Rica"
* responsible = "CCSS"
* description = "Sistema que define los identificadores oficiales de la población usuaria"
* usage = "Utilizado en Organization.identifier.system, Patient.identifier.system, etc."

* uniqueId[0].type = #uri
* uniqueId[0].value = "https://hie.cr/mpi"
* uniqueId[0].preferred = true
