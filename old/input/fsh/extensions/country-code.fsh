Extension:      CountryCodeExt
Id:             CountryCodeExt
Title:          "Código ISO del país"
Description:    "Extensión para el código de país en formato ISO 3166-1 alpha-3"
Context:        Address.country

* ^experimental = false

* value[x] only CodeableConcept
* value[x] ^short = "Código de país en formato ISO 3166-1 alpha-3"

* valueCodeableConcept from http://hl7.org/fhir/ValueSet/iso3166-1-3
* valueCodeableConcept.coding 0..1 MS
  * code 0..1 MS
  * system 0..1 MS
  * display 0..1 MS

* url ^short = "Extensión de dirección del país"