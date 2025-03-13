/*
 Ejemplo básico de un paciente
 */

Instance: PatientComplete
InstanceOf: PatientCrCore
Title: "Ejemplo completo de un Paciente Nacional"
Description: "Ejemplo completo de un paciente con nacionalidad definida."
Usage: #example

* identifier[0].system = "https://registrocivil.go.cr/cedula"
* identifier[0].value = "401670661"
* identifier[0].assigner.display = "Registro Civil de Costa Rica"

* name.use = #official
* name.family = "Benavides Garro"
* name.given = "Alejandro"

* gender = #male
* birthDate = "1978-04-05"

// * maritalStatus = $v3-MaritalStatus#M

* telecom[0].system = #phone
* telecom[0].value = "+506 2222 2222"
* telecom[0].use = #mobile

* telecom[1].system = #email
* telecom[1].value = "user@example.com"
* telecom[1].use = #work

* address = PatientBasicAddress

Instance: PatientBasicAddress
InstanceOf: AddressBaseCrCore
Usage: #inline

* use = #home
* line[0] = "San José, Curridabat, Granadilla, 300m sur del parque"
* city = "Curridabat"
* state = "San José"
* postalCode = "11801"
* country = "Costa Rica"