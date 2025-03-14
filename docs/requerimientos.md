# 📋 Requerimientos del Proyecto - Puelche Automotriz

## 🎯 Objetivo
Desarrollar una plataforma web para la compraventa de autos usados en Concepción, Chile.  
El sistema permitirá a los administradores gestionar autos, cotizaciones y ventas, mientras que los clientes podrán buscar vehículos y solicitar cotizaciones.

## 📂 Módulos Principales

### 1️⃣ Gestión de Autos
**Actor:** *Administrador*  
**Descripción:** El administrador podrá agregar, editar y eliminar autos en la plataforma.

- Registrar autos con:
  - **Marca**
  - **Modelo**
  - **Año**
  - **Precio**
  - **Kilometraje**
  - **Tipo de combustible**
  - **Transmisión**
- Subir fotos **360°** de los vehículos.
- Filtrar autos por **marca, modelo, año y precio**.
- Cambiar estado del auto (`disponible`, `vendido`, `reservado`).

### 2️⃣ Solicitud de Cotización
**Actor:** *Cliente*  
**Descripción:** Un usuario podrá solicitar una cotización de un auto desde la web.

1. Completar un formulario con:
   - Nombre
   - Email
   - Teléfono
2. Seleccionar un auto de interés.
3. Enviar la solicitud y recibir una confirmación.
4. El administrador podrá cambiar el estado de la cotización (`pendiente`, `en proceso`, `respondida`).

### 3️⃣ Registro de Ventas
**Actor:** *Administrador*  
**Descripción:** Se registra la venta de un auto con datos del comprador.

- Seleccionar un auto y un cliente.
- Ingresar:
  - **Precio final**
  - **Método de pago** (`efectivo`, `transferencia`, `crédito`).
- Registrar la **fecha de venta**.
- Cambiar el estado del auto a **"vendido"**.

## 🚀 Requerimientos Técnicos
- **Backend:** Ruby on Rails
- **Base de Datos:** PostgreSQL
- **Autenticación:** Devise
- **Admin Panel:** ActiveAdmin
- **Testing:** RSpec, FactoryBot
- **Despliegue:** Render/Heroku

## 📅 Próximos Pasos
1. Crear el diagrama de base de datos.
2. Configurar el proyecto en Rails.
3. Generar los modelos y migraciones.
4. Implementar autenticación de usuarios.
5. Desarrollar cada módulo con buenas prácticas.
