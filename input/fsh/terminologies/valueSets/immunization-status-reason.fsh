/* ------------------------------------------------------------------ 
 @type:         FSH-File for a FHIR® ValueSet Resource
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

ValueSet:   ImmunizationStatusReason
Id:         immunization-status-reason
Title:      "Razón de Estado de Vacunación"
Description: "Razón de estado de vacunación para Costa Rica"

* insert ValueSetMeta
* insert RuleSetStatus (0, draft, pc)

* $ImmunizationStatusReason#IMMUNE "Inmunidad"
* $ImmunizationStatusReason#MEDPREC "Precaución Médica"
* $ImmunizationStatusReason#OSTOCK "Fuera de Stock"
* $ImmunizationStatusReason#PATOBJ "Objeción del Paciente"
* $ImmunizationStatusReason#PHILISOP "Objeción Filosófica"
* $ImmunizationStatusReason#RELIG "Objeción Religiosa"
* $ImmunizationStatusReason#VACEFF "Preocupación por la Efectividad de la Vacuna"
* $ImmunizationStatusReason#VACSAF "Preocupación por la Seguridad de la Vacuna"