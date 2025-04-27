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

CodeSystem: AllergyIntoleranceICD10
Id: allergy-intolerance-icd10
Title: "Alergias e Intolerancias basadas en CIE-10"
Description: "Listado de códigos de alergias e intolerancias usando la Clasificación Internacional de Enfermedades, Décima Revisión (CIE-10)."

* insert CodeSystemMeta
* insert RuleSetStatus (0, draft, pc)

// Reacciones anafilácticas específicas
* #T78.00 "Reacción anafiláctica debida a alimento no especificado"
* #T78.01 "Reacción anafiláctica debida a cacahuetes"
* #T78.02 "Reacción anafiláctica debida a mariscos (crustáceos)"
* #T78.03 "Reacción anafiláctica debida a otros pescados"
* #T78.04 "Reacción anafiláctica debida a frutas y verduras"
* #T78.05 "Reacción anafiláctica debida a frutos secos y semillas"
* #T78.06 "Reacción anafiláctica debida a aditivos alimentarios"
* #T78.07 "Reacción anafiláctica debida a leche y productos lácteos"
* #T78.08 "Reacción anafiláctica debida a huevos"
* #T78.09 "Reacción anafiláctica debida a otros productos alimenticios"

// Otras reacciones adversas y alergias
* #T78.1 "Otras reacciones adversas a alimentos, no clasificadas en otra parte"
* #T78.2 "Shock anafiláctico, no especificado"
* #T78.3 "Edema angioneurótico"
* #T78.4 "Otras alergias y alergia no especificada"
* #T78.40 "Alergia, no especificada"
* #T78.41 "Fenómeno de Arthus"
* #T78.49 "Otras alergias"

// Reacciones adversas a medicamentos y sustancias
* #T88.6 "Reacción anafiláctica debida a efecto adverso de medicamento correctamente administrado"
* #Y40 "Efectos adversos de antibióticos"
* #Y41 "Efectos adversos de otros antiinfecciosos y antiparasitarios"
* #Y42 "Efectos adversos de hormonas y sus sustitutos sintéticos"
* #Y43 "Efectos adversos de agentes que afectan el sistema inmunológico"
* #Y44 "Efectos adversos de agentes que afectan la coagulación"
* #Y45 "Efectos adversos de analgésicos, antipiréticos y antiinflamatorios no esteroides"
* #Y46 "Efectos adversos de antiepilépticos y antiparkinsonianos"
* #Y47 "Efectos adversos de psicotrópicos"
* #Y48 "Efectos adversos de anestésicos y gases terapéuticos"
* #Y49 "Efectos adversos de otros y no especificados medicamentos y sustancias biológicas"

// Dermatitis y otras afecciones cutáneas
* #L23 "Dermatitis alérgica de contacto"
* #L24 "Dermatitis por contacto irritante"
* #L25 "Dermatitis por contacto, no especificada"
* #L27 "Dermatitis debida a sustancias ingeridas"
* #L50.0 "Urticaria alérgica"
* #L20.9 "Dermatitis atópica, no especificada"

// Rinitis y otras afecciones respiratorias
* #J30.0 "Rinitis vasomotora"
* #J30.1 "Rinitis alérgica debida al polen"
* #J30.2 "Otras rinitis alérgicas estacionales"
* #J30.5 "Rinitis alérgica debida a alimentos"
* #J30.81 "Rinitis alérgica debida a pelo y caspa de animales (gato, perro)"
* #J30.89 "Otras rinitis alérgicas"
* #J30.9 "Rinitis alérgica, no especificada"

// Intolerancias alimentarias y metabólicas
* #E73.0 "Déficit congénito de lactasa"
* #E73.1 "Déficit secundario de lactasa"
* #E73.8 "Otras formas de intolerancia a la lactosa"
* #E73.9 "Intolerancia a la lactosa, no especificada"
* #K90.0 "Enfermedad celíaca"
* #E70.0 "Fenilcetonuria clásica"
* #E70.1 "Otras hiperfenilalaninemias"
* #E70.2 "Trastornos del metabolismo de la tirosina"
* #E70.3 "Trastornos del metabolismo de los aminoácidos aromáticos, no especificados"
* #E70.4 "Trastornos del metabolismo del ciclo de la urea"
* #E70.5 "Trastornos del metabolismo de la homocisteína"

// Estados de alergia y antecedentes
* #Z88.0 "Alergia a penicilina"
* #Z88.1 "Alergia a otros antibióticos"
* #Z88.2 "Alergia a sulfonamidas"
* #Z88.3 "Alergia a otros agentes antiinfecciosos"
* #Z88.4 "Alergia a anestésicos"
* #Z88.5 "Alergia a narcóticos"
* #Z88.6 "Alergia a analgésicos"
* #Z88.7 "Alergia a sueros y vacunas"
* #Z88.8 "Alergia a otros medicamentos y sustancias biológicas"
* #Z91.010 "Alergia a cacahuetes"
* #Z91.011 "Alergia a productos lácteos"
* #Z91.012 "Alergia a huevos"
* #Z91.013 "Alergia a mariscos"
* #Z91.014 "Alergia a carnes de mamíferos"
* #Z91.018 "Alergia a otros alimentos"
* #Z91.02 "Alergia a aditivos alimentarios"
* #Z91.030 "Alergia a picaduras de abejas"
* #Z91.038 "Alergia a otros insectos"
* #Z91.09 "Otros estados de alergia, distintos de medicamentos y sustancias biológicas"
