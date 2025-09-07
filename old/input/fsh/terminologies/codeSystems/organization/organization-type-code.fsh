/* ------------------------------------------------------------------ 
 @type:         FSH-File for a FHIR® CodeSystem Resource
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

CodeSystem:     OrganizationTypeCode
Id:             organization-type-code
Title:          "Tipo de organización"
Description:    "Código de tipo de organización de salud"

* insert CodeSystemMeta
* insert RuleSetStatus (0, draft, pc)

* #centro-diagnostico-tratamiento   "Centros de Diagnóstico y Tratamiento" "Incluyen laboratorios clínicos, centros de imagenología, entre otros."
* #centro-espacializado             "Centro Especializado" "Incluyen el Banco Nacional de Sangre, Centro Nacional de Imágenes Médicas, Clínica Oftalmológica, entre otros."
* #clinica-privada                  "Clínica Privada" "Brindan atención médica integral o en áreas específicas de la salud de segundo o tercer nivel de atención."
* #clinica-t1                       "Clínica Pública Tipo 1" "Clínica con capacidad básica para atención ambulatoria en medicina general y algunas especialidades básicas (como pediatría o ginecología). Cuenta con consultorios médicos, farmacia, laboratorio clínico básico y servicio limitado de urgencias. Generalmente comunidades pequeñas o urbanas con baja densidad."
* #clinica-t2                       "Clínica Pública Tipo 2" "Clínica con mayor complejidad y número de especialidades en relación con la Tipo I. Incluye imagenología básica (rayos X), laboratorio ampliado, mayor personal de salud y atención en más especialidades médicas. Zonas urbanas más grandes o regiones con población de mediana densidad."
* #clinica-t3                       "Clínica Pública Tipo 3" "Clínica altamente resolutiva que funciona como centro de referencia dentro de un área de salud. Servicios completos de laboratorio, imagenología, consulta externa, urgencias 24/7 y atención en múltiples especialidades. Cobertura regional amplia, alta demanda y atención complementaria a hospitales periféricos."
* #clinica-t4                       "Clínica Pública Tipo 4" "Clínica de transición entre segundo y tercer nivel. Puede asumir funciones hospitalarias parciales sin internamiento. Alta capacidad resolutiva, incluye procedimientos ambulatorios complejos, tecnología avanzada de diagnóstico y subespecialidades médicas. Áreas densamente pobladas o regiones estratégicas con alto flujo de pacientes."
* #consultorio-medico               "Consultorio Médico Privado" "Brindan atención médica integral o en áreas específicas de la salud en forma ambulatoria de primer nivel de atención."
* #ebais                            "EBAIS" "Equipo Básico de Atención Integral en Salud"
* #hospital-especializado-privado   "Hospital Especializado Privado" "Brindan servicios ambulatorios en diversas especialidades."
* #hospital-nacional-especializado  "Hospital Nacional Especializado" "Dedicados a especialidades específicas, como pediatría, geriatría, gineco-obstetricia, psiquiatría y rehabilitación."
* #hospital-nacional-general        "Hospital Nacional" "Ubicados en San José, son los establecimientos de salud más desarrollados y complejos del país.​"
* #hospital-nacional-privado        "Hospital General Privado" "Ofrecen atención médica integral o en áreas específicas de la salud."
* #hospital-periferico              "Hospital Periferico" "Clasificados en tipo 1, 2 y 3, ofrecen servicios de urgencias, apoyo al diagnóstico, consulta externa especializada, tratamientos quirúrgicos sencillos e internamientos cortos.​"
* #hospital-regional                "Hospital Regional" "Ubicados fuera de San José, funcionan como hospitales generales con especialidades básicas y subespecialidades de mayor demanda regional."
* #prestadora-servicios-salud       "Prestadora de Servicios de Salud" "Brindan atención médica integral o en áreas específicas de la salud."
* #pvp                              "Puestos de visita periódica" "Consultorio individual o grupal que presta servicios ambulatorios"
* #sede-area-salud                  "Sede Área Salud" "Sede del Área de Salud"
* #sede-ebais                       "Sede EBAIS" "Sede del Equipo Básico de Atención Integral en Salud"
