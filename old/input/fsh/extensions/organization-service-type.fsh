Extension:        OrganizationServiceTypeExt
Id:               organization-service-type
Title:            "Tipo de Servicios de salud"
Description:      "Indica uno o más tipos de servicios que brinda la organización en salud en Costa Rica."
Context:          Organization

* ^experimental = false

* value[x] only CodeableConcept
* valueCodeableConcept from OrganizationActivityList (required)
* valueCodeableConcept.coding 0..1 MS
  * code 0..1 MS
  * system 0..1 MS
  * display 0..1 MS
