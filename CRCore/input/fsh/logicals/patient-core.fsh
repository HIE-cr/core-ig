/* ##################################################################### 
# Type:         FSH-File for a FHIR® Logical Model Resource
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

Logical:        PatientModelCrCore
Parent:         Base
Title:          "Modelo de Paciente"
Description:    "Modelo de Paciente para el CORE de Costa Rica"

// Información del Paciente
* tipoDocumento         1..1    Coding          "Tipo de documento de identficación del paciente"
* numeroDocumento       1..1    string          "Número de documento de identificación del paciente"
* primerNombre          1..1    string          "Primer nombre del paciente"
* segundoNombre         0..1    string          "Segundo nombre del paciente"
* primerApellido        1..1    string          "Primer apellido del paciente"
* segundoApellido       0..1    string          "Segundo apellido del paciente"
* genero                0..1    Coding          "Género del paciente"
* fechaNacimiento       0..1    date            "Fecha de nacimiento del paciente"
* estadoCivil           0..1    Coding          "Estado civil del paciente"
* telefono              0..1    string          "Número de teléfono del paciente"
* correoElectronico     0..1    string          "Correo electrónico del paciente"
* defuncion             0..1    date            "Fecha de defunción del paciente"
* idioma                0..1    Coding          "Idioma del paciente"
* nacionalidad          0..1    Coding          "Nacionalidad del paciente"
* direccion             0..1    Address         "Dirección del paciente"
* foto                  0..1    Attachment      "Foto del paciente"
* contactoEmergencia    0..1    ContactPoint    "Contacto de emergencia del paciente"