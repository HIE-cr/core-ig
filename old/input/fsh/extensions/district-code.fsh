Extension:      DistrictCodeExt
Id:             DistrictCodeExt
Title:          "ZipCode del distrito"
Description:    "Extensión para el código del distrito basado en el ZipCode de Costa Rica"
Context:        Address.district

* ^experimental = false

* value[x] only CodeableConcept
* value[x] ^short = "Código del distrito basado en el ZipCode de Costa Rica"

* valueCodeableConcept from DistrictList
* valueCodeableConcept.coding 0..1 MS
  * code 0..1 MS
  * system 0..1 MS
  * display 0..1 MS

* url ^short = "Extensión para codificar del distrito del país"