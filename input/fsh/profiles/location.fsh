/* ------------------------------------------------------------------ 
 @type:         FSH-File for a FHIR® Profile Resource
 @about:        HL7® FHIR® CORE Costa Rica
 @created by:   National Working Group for FHIR® - Costa Rica
 @date:         2025-03-03
 @fhir version: 5.0.0
 @authors:      - Ministerio de Salud
                - Caja Costarricense de Seguro Social
                - Camara Costarricense de la Salud
                - Cámara de Tecnologías de Información y Comunicación
                - Global Life-Centered Hub
                - Instituto Nacional de Seguros
--------------------------------------------------------------------*/
Profile:    LocationCrCore
Parent:     Location
Id:         location-cr-core
Title:      "Ubicación (Core)"
Description: "Perfil de Ubicación (Location)"

* insert ProfileMeta
* insert RuleSetStatus (0, draft, pc)

* status  MS
* status from http://hl7.org/fhir/ValueSet/location-status
  * ^binding.description = "Códigos del estado de la localización de HL7 FHIR" 
  * ^short = "active | suspended | inactive"
  * ^definition = "Determina el estado de la localización conforme a los códigos definidos por el estándar. Existen los estados de \"activo | suspendido | inactivo\""

* name and alias MS
  * ^short = "Nombre oficial de la localización"
  * ^definition = "Nombre de la localización, ya sea del edificio, de la zona geográfica como un parque o de un sector específico llamado de cierta forma" 

* alias ^short = "Nombre de fantasía de la localización"
* alias ^definition = "Nombre no oficial del sector, que puede ser identificado de manera polular para contar con una referencia de la comunidad"

* type and type.coding.code MS
* type ^definition = "Indica el tipo o función que se ejecuta en la localización"
// TODO: Se debe definir el ValueSet de los tipos de localización

* address MS
* address only AddressBaseCrCore

* position 0..1
* position and position.longitude and position.latitude MS
* position ^short = "Geo-Posicionamiento del objeto, infraestructura o evento en longitud y latitud"
* position ^definition = "La localización geográfica absoluta de la ubicación, expresada utilizando el datum WGS84 (Este es el mismo sistema de coordenadas utilizado en KML)"
* position.longitude ^short = "Longitud valor decimal en WGS84 datum (World Geodetic System 1984)"
* position.longitude ^definition = "Longitud. El dominio del valor y la interpretación son los mismos que para el texto del elemento longitud en KML"
* position.latitude ^short = "Latitud valor decimal en formato WGS84 datum (World Geodetic System 1984)"
* position.latitude ^definition = "Latitud. El dominio del valor y la interpretación son los mismos que para el texto del elemento latitud en KML"

* managingOrganization  MS
* managingOrganization only Reference(OrganizationCrCore)
* managingOrganization ^short = "Organización a la cual la ubicación pertenece, si es el caso. Esta relación se hace en base a una referencia a una organización"
* managingOrganization ^definition = "La organización responsable de la localización."
* managingOrganization ^comment = "Se puede usar para indicar la organización jerárquica superior. Siempre debe existir una organización jerarquicamente sobre la localización y en caso de no existir esta jerquia, se debe crear la Organización, con los mismos datos del location."

* hoursOfOperation MS
* hoursOfOperation ^short = "Horario de atención de la localización."
* hoursOfOperation ^definition = "¿Qué días/horas de la semana suele estar abierto este local?."

