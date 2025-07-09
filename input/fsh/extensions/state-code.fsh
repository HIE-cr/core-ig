Extension:      StateCodeExt
Id:             StateCodeExt
Title:          "ZipCode de la provincia"
Description:    "Extensión para el código de la provincia basado en el ZipCode de Costa Rica"
Context:        Address.state

* ^experimental = true

* value[x] only CodeableConcept
* value[x] ^short = "Código de la provincia basado en el ZipCode de Costa Rica"

* valueCodeableConcept from StateList
* valueCodeableConcept.coding 0..1 MS
  * code 0..1 MS
  * system 0..1 MS
  * display 0..1 MS

* url ^short = "Extensión para codificar la provincia del país"