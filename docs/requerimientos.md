 Requerimientos del Proyecto - Puelche Automotriz

🎯 Objetivo

Desarrollar una plataforma web para la compraventa de autos usados en Concepción, Chile. El sistema permitirá a los administradores gestionar autos, cotizaciones y ventas, mientras que los clientes podrán buscar vehículos y solicitar cotizaciones.

📂 Módulos Principales

1️⃣ Gestión de Autos

Actor: AdministradorDescripción: El administrador podrá agregar, editar y eliminar autos en la plataforma.

Registrar autos con marca, modelo, año, precio, kilometraje, tipo de combustible y transmisión.

Subir fotos 360° de los vehículos.

Filtrar autos por marca, modelo, año y precio.

Cambiar estado del auto (disponible, vendido, reservado).

2️⃣ Solicitud de Cotización

Actor: ClienteDescripción: Un usuario podrá solicitar una cotización de un auto desde la web.

Completar un formulario con nombre, email y teléfono.

Seleccionar un auto de interés.

Enviar la solicitud y recibir una confirmación.

El administrador podrá cambiar el estado de la cotización (pendiente, en proceso, respondida).

3️⃣ Registro de Ventas

Actor: AdministradorDescripción: Se registra la venta de un auto con datos del comprador.

Seleccionar un auto y un cliente.

Ingresar el precio final y método de pago (efectivo, transferencia, crédito).

Registrar la fecha de venta.

Cambiar el estado del auto a "vendido".

4️⃣ Gestión de Usuarios y Roles

Actor: Administrador, ClienteDescripción: Se manejarán dos tipos de usuarios con diferentes permisos.

Administradores: Pueden gestionar autos, cotizaciones y ventas.

Clientes: Pueden ver autos y solicitar cotizaciones.

Autenticación de usuarios con Devise.

🚀 Requerimientos Técnicos

Backend: Ruby on Rails

Base de Datos: PostgreSQL

Autenticación: Devise

Admin Panel: ActiveAdmin

Testing: RSpec, FactoryBot

Despliegue: Render/Heroku

📅 Próximos Pasos

Crear el diagrama de base de datos.

Configurar el proyecto en Rails.

Generar los modelos y migraciones.

Implementar autenticación de usuarios.

Desarrollar cada módulo con buenas prácticas.