Extension:      CityCodeExt
Id:             CityCodeExt
Title:          "ZipCode del cantón"
Description:    "Extensión para el código del cantón basado en el ZipCode de Costa Rica"
Context:        Address.city

* ^experimental = true

* value[x] only CodeableConcept
* value[x] ^short = "Código del cantón basado en el ZipCode de Costa Rica"

* valueCodeableConcept from CityList
* valueCodeableConcept.coding 0..1 MS
  * code 0..1 MS
  * system 0..1 MS
  * display 0..1 MS

* url ^short = "Extensión para codificar el cantón del país"