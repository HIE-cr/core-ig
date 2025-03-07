**Ejemplos de escenarios de uso:**

Los siguientes son ejemplos de escenarios de uso para este perfil:
- Consulta de información demográfica del paciente mediante el número de historia clínica (MRN), que es un tipo de identificador. El MRN se puede identificar por `identifier.system` y puede ser específicos de la organización.

- Consulta de información demográfica del paciente mediante de los nombres, apellidos y fecha de nacimiento y género del paciente.

### Elementos de datos obligatorios y de soporte obligatorio

Los siguientes elementos de datos deben estar siempre presentes (definición [Obligatorio]) o deben ser compatibles si los datos están presentes en el sistema de envío (definición [Debe ser compatible]). Se presentan a continuación en una explicación sencilla y legible para humanos. También se proporcionan ejemplos y orientación específica para el perfil. Las [Vistas formales] a continuación proporcionan el resumen formal, las definiciones y los requisitos de terminología.

**Cada pacinte debe tener:**

1. Un identificador de paciente (por ejemplo CEDULA)
1. Un nombre y apellido
1. Una fecha de nacimiento

**Cada paciente debe soportar:**
1. Un género
1. Una dirección

