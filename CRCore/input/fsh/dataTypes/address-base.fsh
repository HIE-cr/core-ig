/* ##################################################################### 
# Type:         FSH-File for a FHIR® DataType Resource
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

Profile:            AddressBaseCrCore
Parent:             Address
Id:                 address-base-cr-core
Title:              "Perfil Dirección (Core)"
Description:        "Perfil de Dirección para el uso en Costa Rica"

* ^version = "1.0.0"
* ^status = #draft
* ^publisher = "Costa Rica"

/* Dirección */
* use 0..1
* use ^short = "Tipo de dirección."
* use ^definition = "Tipo de dirección."

* type 0..1
* type ^short = "Tipo de dirección."
* type ^definition = "Tipo de dirección."

* line 1.. MS
* line ^short = "La dirección completa, incluyendo la calle, el número de la casa o apartamento, la ciudad, el estado, el código postal, etc., si es relevante."
* line ^definition = "La dirección completa, incluyendo la calle, el número de la casa o apartamento, la ciudad, el estado, el código postal, etc., si es relevante."

* district 0..1
* district ^short = "Nombre del distrito."
* district ^definition = "Nombre del distrito."

* city 0..1
* city ^short = "Nombre de la ciudad."
* city ^definition = "Nombre de la ciudad."

* state 0..1
* state ^short = "Nombre del estado o provincia."
* state ^definition = "Nombre del estado o provincia."

* postalCode 0..1
* postalCode ^short = "Código postal."
* postalCode ^definition = "Código postal."

* country 0..1
* country ^short = "Nombre del país."
* country ^definition = "Nombre del país."

