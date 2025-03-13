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

Profile:    ProvenanceCrCore
Parent:     Provenance
Id:         provenance-cr-core
Title:      "Procedencia (Core)"
Description: "Perfil de Procedencia de un recurso (Provenance)"

* insert ProfileMeta
* insert RuleSetStatus (0, draft, pc)

* target MS
  * ^short = "Recurso que se desea validar"
  * ^definition =  "Referencia los Recursos generados"
  * reference ^short = "URL absoluta del Recurso  a validar" 
  * reference ^definition = "Una referencia a una ubicación en la que se encuentra el otro recurso. La referencia puede ser una referencia relativa, en cuyo caso es relativa a la URL base del servicio, o una URL absoluta que resuelve la ubicación donde se encuentra el recurso. La referencia puede ser específica de la versión o no. Si la referencia no es a un servidor FHIR RESTful, se debe asumir que es específica de la versión. Las referencias a fragmentos internos (que comienzan con \"#\") se refieren a recursos contenidos."
  * reference ^comment = "El uso de URLs absolutas proporciona un enfoque estable y escalable adecuado para un contexto de nube/web, mientras que el uso de referencias relativas/lógicas proporciona un enfoque flexible adecuado para su uso cuando se comercializa a través de los límites del ecosistema cerrado.   Las URL absolutas no necesitan apuntar a un servidor FHIR RESTful, aunque es el enfoque preferido. Si la URL se ajusta a la estructura \"/[tipo]/[id]\", debe asumirse que la referencia es a un servidor FHIR RESTful."

* recorded MS
  * ^short = "Cuando se desarrolló el envío o actualización del Recurso" 
  * ^definition = "Instancia de tiempo en que fue notificado el cambio"

* location MS
* location only Reference(LocationCrCore)
  * ^short = "Referencia o identificación de la localización de donde ocurrió la actividad"
  * ^definition = "Donde la actividad ocurrió"

* activity MS
* activity from http://hl7.org/fhir/ValueSet/provenance-activity-type (extensible)
  * ^short = "Actividad que ocurrió" 
  * ^definition = "Una actividad es algo que ocurre durante un período de tiempo y actúa sobre o con entidades; puede incluir el consumo, el procesamiento, la transformación, la modificación, la reubicación, el uso o la generación de entidades."
  * ^binding.description = "ValueSet HL7 FHIR"

* agent MS
  * ^short = "El actor que genera el recuso"
  * ^definition = "El actor que tiene la responsabilidad en la generación del recurso"
  * ^comment = "Puede haber más de un agente "

* agent.type 0..1 MS
  * coding from http://hl7.org/fhir/ValueSet/participation-role-type (extensible)
  * coding ^binding.description = "ValueSet HL7 FHIR, tipo de agente"
  * ^short = "Referencia a lo que ejecuta el actor"
  * ^definition = "participación del actor, que rol cumple"

* agent.role 0..1 MS
  * coding from http://hl7.org/fhir/ValueSet/security-role-type (example)
  * coding ^binding.description = "ValueSet HL7 FHIR, tipo de código"
  * ^short = "El rol especifico del agente" 
  * ^definition = "La función del agente con respecto a la actividad. La función de seguridad que habilita al agente con respecto a la actividad."

* agent.who MS
* agent.who  only Reference(PractitionerCrCore or PractitionerRoleCrCore or PatientCrCore or OrganizationCrCore)
  * ^short = "Quien emite el recurso"
  * ^definition = "Definición mediate la id de un recurso al emisor de receta"
  * reference ^short = "Referencia al emisor del recurso"
  * reference ^definition = "Recurso que indica al practitioner que genera el recurso a validar"

* signature MS
  * ^short = "firma del target"
  * ^definition = "Una firma digital en la(s) Referencia(s) de destino. El firmante debe coincidir con un Provenance.agent. Se indica la finalidad de la firma."

* signature.type MS
* signature.type from http://hl7.org/fhir/ValueSet/signature-type (preferred)
  * ^short = "Indicación de la razón por la que la entidad firmó el objeto o los objetos"
  * ^definition = "Indicación del motivo por el que la entidad ha firmado este documento. Puede incluirse explícitamente como parte de la información de la firma y puede utilizarse a la hora de determinar la responsabilidad de diversas acciones relativas al documento."
  * ^binding.description = "ValueSet Propósito de la firma"

* signature.when MS
  * ^short = "Hora y Fecha de cuando se firmó la validación"
  * ^definition = "Hora y Fecha de cuando se firmó la validación"

* signature.who MS
* signature.who only Reference(PractitionerCrCore or PractitionerRoleCrCore or PatientCrCore or OrganizationCrCore)
  * ^short = "Referencia al firmante"
  * ^definition = "Referencia al recurso del validador mediante la firma"

* signature.who.reference ^short = "Referencia/identificación al recurso que identifica al  firmante"
* signature.who.reference ^definition = "Referencia/identificación al recurso del validador mediante la firma"

* signature.sigFormat MS
  * ^short = "Formato técnico de la firma"
  * ^definition = "Un tipo mime que indica el formato técnico de la firma. Los tipos mime importantes son application/signature+xml para X ML DigSig, application/jose para JWS, e image/* para una imagen gráfica de una firma, etc"
