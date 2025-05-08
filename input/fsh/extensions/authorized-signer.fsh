Extension:      AuthorizedSignerExt
Id:             AuthorizedSignerExt
Title:          "Firmante Autorizado"
Description:    "Extensión para el firmante autorizado de un documento (soporte a firma digital)."

* ^context[0].type = #element
* ^context[0].expression = "PractitionerRole"

* valueBoolean 1..1
* valueBoolean only boolean