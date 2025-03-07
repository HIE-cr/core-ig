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

Logical:        PractitionerModelCrCore
Parent:         Base
Title:          "Modelo del Profesional de la Salud"
Description:    "Modelo del Profesional de la Salud para el CORE de Costa Rica"

// Información del profesionales de salud
* tipoDocumento         1..1    Coding          "Tipo de documento de identficación del profesionales de salud"
* numeroDocumento       1..1    string          "Número de documento de identificación del profesionales de salud"
* primerNombre          1..1    string          "Primer nombre del profesionales de salud"
* segundoNombre         0..1    string          "Segundo nombre del profesionales de salud"
* primerApellido        1..1    string          "Primer apellido del profesionales de salud"
* segundoApellido       0..1    string          "Segundo apellido del profesionales de salud"
* genero                0..1    Coding          "Género del profesionales de salud"
* fechaNacimiento       0..1    date            "Fecha de nacimiento del profesionales de salud"
* telefono              0..1    string          "Número de teléfono del profesionales de salud"
* correoElectronico     0..1    string          "Correo electrónico del profesionales de salud"
* nacionalidad          0..1    Coding          "Nacionalidad del profesionales de salud"
* direccion             0..1    Address         "Dirección del profesionales de salud"
