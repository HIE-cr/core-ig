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

Logical:        OrganizationModelCrCore
Parent:         Base
Title:          "Modelo de Establecimiento de Salud"
Description:    "Modelo de Establecimiento de Salud para el CORE de Costa Rica"

// Información del profesionales de salud
* tipoDocumento         1..1    Coding          "Tipo de documento de identficación del profesionales de salud"
* numeroDocumento       1..1    string          "Número de documento de identificación del profesionales de salud"
* nombre                1..1    string          "Nombre de la organización o establecimiento de salud"
* alias                 0..1    string          "Alias de la organización o establecimiento de salud"
* tipo                  0..1    Coding          "Tipo de organización o establecimiento de salud"
* direccion             0..*    Address         "Dirección de la organización o establecimiento de salud"
* telefono              0..*    string          "Número de teléfono de la organización o establecimiento de salud"
* correoElectronico     0..*    string          "Correo electrónico de la organización o establecimiento de salud"
* contacto              0..*    ContactPoint    "Contacto de la organización o establecimiento de salud"