/* ##################################################################### 
# Type:         FSH-File for a FHIR® Profile Resource
# About:        HL7® FHIR® CORE Costa Rica
# Created by:   National Working Group for FHIR® - Costa Rica
# Date:         2025-03-03
# FHIR version: 5.0.0
# Authors:      - Ministerio de Salud
#               - Caja Costarricense de Seguro Social
#               - Camara Costarricense de la Salud
#               - Cámara de Tecnologías de Información y Comunicación
#               - Global Life-Centered Hub
#               - Instituto Nacional de Seguros
######################################################################*/

Profile:            PatientCrCore
Parent:             Patient
Id:                 patient-cr-core
Title:              "Perfil Paciente (Core)"
Description:        "Perfil de Paciente para el uso en Costa Rica"

* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "Costa Rica"

/* Identificadores */
* identifier 1.. MS
//* system from 'http://' (required)
  * system 1.. MS
  * system ^short = "Sistema de identificación del paciente."
  * value 1.. MS
  * value ^short = "Código de identificación del paciente o número de documento."
  * period ^short = "Periodo de validez del identificador del documento de identificación."
  * assigner ^short = "Organización que emitió el documento. Puede utilizarse como referencia a una organización o como texto libre."

/* Nombres y Apellidos */
* name 1.. MS
  * use = #official
  * family 1.. MS
  * given 1.. MS

/* Género */
* gender 0..1
* gender ^short = "Género del paciente."
* gender ^definition = "Género del Paciente."


/* Fecha de Nacimiento */
* birthDate 0..1
* birthDate ^short = "Fecha de nacimiento del paciente."
* birthDate ^definition = "Fecha de nacimiento del Paciente."

/* Estado Civil */
* maritalStatus 0..1
  * coding 1..1
  * coding.system = "https://www.hl7.org/fhir/valueset-marital-status.html"
  * coding.code from MaritalStatus (required)
  * coding.display ^short = "Estado civil del paciente."


/* Telefono y Correo Electrónico */
* telecom ^short = "Detalles de contacto del Paciente"
* telecom ^definition = "Detalles del contacto de un paciente comúnmente el o los más usados (Ej: Teléfono fijo, móvil, email, etc.)"


/* Fecha de Defunción */

/* Idioma */
* communication 0..1
  * language 1..1
    * coding.display ^short = "Idioma del paciente."
  * preferred 0..1
  * preferred ^short = "Indica si el idioma es el preferido por el paciente."

/* Nacionalidad */


/* Direcciones */
* address only AddressBaseCrCore
* address ^short = "Direcciones del Paciente"

/* Foto */
* photo 0..1
* photo ^short = "Fotografía del paciente."
* photo ^definition = "Fotografía del Paciente."

/* Contacto de Emergencia */
* contact 0..1
* contact ^short = "Contacto de Emergencia del Paciente"
* contact ^definition = "Persona de contacto en caso de emergencia."