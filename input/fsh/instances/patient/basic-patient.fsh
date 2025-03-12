/*
 Ejemplo básico de un paciente
 */

Instance: PatientBasic
InstanceOf: PatientCrCore
Title: "Ejemplo básico de un Paciente Nacional"
Description: "Ejemplo básico de un paciente con nacionalidad definida."
Usage: #example

* identifier[0].system = "https://registrocivil.go.cr/cedula"
* identifier[0].value = "401670661"
* identifier[0].assigner.display = "Registro Civil de Costa Rica"

* name.use = #official
* name.family = "Benavides Garro"
* name.given = "Alejandro"

