# 📋 Requerimientos del Proyecto - Puelche Automotriz

## 🎯 Objetivo
Desarrollar plataforma web para la compraventa de autos usados en Concepción, Chile.
El sistema permitirá a los usuarios administradores y vendedores gestionar y ver stock autos, cotizaciones y ventas, mientras que los clientes podrán buscar vehículos y solicitar cotizaciones.

## 📂 Módulos Principales

### 1️⃣ Gestión de Stock
**Usuario:** *Administrador*  
**Descripción:** El administrador podrá agregar, editar y eliminar autos en la plataforma.

- Crear autos con las siguientes caracteristicas:
  - **Marca**
  - **Estilo**
  - **Modelo**
  - **Año**
  - **Color**
  - **Costo**
  - **Precio**
  - **Kilometraje**
  - **Combustible**
  - **Tipo vehiculo**
  - **Transmisión**
  - **Traccion**
  - **Publicado?**
- Subir fotografias, opcional funcion fotografia **360°** de los vehículos.
- Listar autos con todas las caracteristicas que tiene cada vehiculo (**opcion de exportar en excel**)
- Filtrar autos por todas las caracteristicas que tiene cada vehiculo.
- Abrir una ventana de detalle de cada vehiculo donde se vean todas las caracteristicas, detalles y fotografias
- Cambiar estado del auto (`disponible`, `vendido`, `reservado`, `devuelto`).

### 2️⃣ Generacion y registro de Cotización
**Usuario:** *Vendedor*  
**Descripción:** Un vendedor podrá generar una cotización de un auto para un cliente.

1. Ingresar datos del cliente (se crea el cliente):
   - Nombre
   - Email
   - Teléfono
2. Seleccionar un auto de interés.
3. Guardar la cotizacion e imprimir.
4. Una cotizacion podra generar una venta sin perderse, **ejemplo cotizacion 128 se usa para generar la venta 10**.
5. Las cotizaciones no se eliminan, pueden caducar pero no se eliminan.

### 3️⃣ Generacion y registro de Ventas
**Usuario:** *Vendedor*  
**Descripción:** Se registra la venta de un auto con datos del comprador (idealmente en base a una cotizacion previa).

- Seleccionar un auto y un cliente.
- Ingresar:
  - **Precio final de venta negociado**
  - **Valor de la transferencia**
  - **Tipo de venta** (`Contado`, `crédito`)
  - **Formas de pago** (`Efectivo`, `Tarjeta de credito`, `Tarjeta de debito`, `VPP`), puede ser una combinacion de estas formas de pago.
  - Si la forma de pago es `VPP`, registrar las mismas características que un auto:
  - **Marca**
  - **Estilo**
  - **Modelo**
  - **Año**
  - **Color**
  - **Costo**
  - **Precio**
  - **Kilometraje**
  - **Combustible**
  - **Transmisión**
  - **Tracción**
  - **Estado** (`Recibido`, `En evaluación`, `Aceptado`, `Rechazado`).
- Si la forma de pago es `Financiamiento`, ingresar los siguientes detalles:
  - **Monto a financiar**
  - **Plazo** (en meses)
  - **Valor cuota**
  - **Monto pie**
  - **Margen crédito**
- Registrar la **fecha de venta**.
- Cambiar el estado del auto a **"vendido"**.

### 4️⃣ Página Web para Clientes

**Usuario:** *Cliente*  
**Descripción:** La web mostrará información clara y atractiva sobre la automotora y su stock de vehículos, con vista de detalle de cada vehiculo, con filtros necesarios segun las carateristicas de cada vehiculo.

- **Home:**  Página de inicio con menu de navegacion, banner con promociones, autos destacados y footer con contactos.

- **Galería de Autos:**  Sección con catálogo de autos en venta, filtros y buscador avanzado.

- **Detalle del Auto:**  Vista detallada de cada auto con características, fotos y botón de cotización.

- **Financiamiento:**  Información sobre opciones de financiamiento, simulador de cuotas y contacto con bancos.

- **Contacto:**  Formulario de contacto con integración de WhatsApp y ubicación en Google Maps.

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
