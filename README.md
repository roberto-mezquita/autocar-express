# AutoCarExpress

## Descripción del Proyecto

AutoCarExpress es una plataforma web desarrollada para facilitar la compra y venta de vehículos usados. El sistema permite a los usuarios registrarse, iniciar sesión, publicar automóviles, explorar vehículos disponibles, consultar información detallada de cada publicación y guardar vehículos favoritos.

El proyecto fue desarrollado como parte del módulo de Desarrollo de Aplicaciones Web, aplicando tecnologías modernas para la creación de aplicaciones dinámicas y orientadas a bases de datos.

---

## Objetivo

Desarrollar una plataforma web que permita gestionar la publicación y búsqueda de vehículos usados de forma organizada, brindando una experiencia sencilla y accesible para compradores y vendedores.

---

## Funcionalidades Principales

- Registro de usuarios.
- Inicio y cierre de sesión.
- Publicación de vehículos.
- Visualización de vehículos disponibles.
- Consulta de detalles de cada vehículo.
- Gestión de vehículos favoritos.
- Almacenamiento de información en base de datos.
- Interfaces intuitivas y responsivas.

---

## Tecnologías Utilizadas

### Backend
- PHP
- Laravel

### Base de Datos
- MySQL

### Frontend
- HTML5
- CSS3
- Bootstrap
- JavaScript

### Herramientas de Desarrollo
- Composer
- Visual Studio Code
- Git
- GitHub
- XAMPP

---

## Requisitos del Sistema

Antes de ejecutar el proyecto es necesario tener instalado:

- PHP 8.x o superior
- Composer
- MySQL
- Laravel
- XAMPP o servidor web compatible
- Git

---

## Instalación del Proyecto

### 1. Clonar el repositorio

```bash
git clone https://github.com/usuario/AutoCarExpress.git
```

### 2. Ingresar al directorio del proyecto

```bash
cd AutoCarExpress
```

### 3. Instalar dependencias

```bash
composer install
```

### 4. Crear el archivo de configuración

Copiar el archivo de ejemplo:

```bash
cp .env.example .env
```

### 5. Generar la clave de la aplicación

```bash
php artisan key:generate
```

### 6. Configurar la base de datos

Modificar las siguientes variables dentro del archivo `.env`:

```env
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=autocarexpress
DB_USERNAME=root
DB_PASSWORD=
```

### 7. Ejecutar migraciones

```bash
php artisan migrate
```

### 8. Iniciar el servidor

```bash
php artisan serve
```

### 9. Abrir la aplicación

Acceder desde el navegador:

```text
http://127.0.0.1:8000
```

---

## Estructura General del Sistema

El sistema está compuesto por los siguientes módulos:

### Inicio
Permite visualizar los vehículos disponibles dentro de la plataforma.

### Registro e Inicio de Sesión
Gestiona la autenticación de usuarios.

### Publicación de Vehículos
Permite agregar nuevos vehículos al sistema.

### Detalles del Vehículo
Muestra información completa sobre cada automóvil publicado.

### Favoritos
Permite guardar vehículos de interés para consultas posteriores.

---

## Aprendizajes Obtenidos

Durante el desarrollo de este proyecto se fortalecieron conocimientos relacionados con:

- Desarrollo de aplicaciones web.
- Uso del framework Laravel.
- Gestión de bases de datos MySQL.
- Implementación de migraciones.
- Autenticación de usuarios.
- Diseño de interfaces web.
- Control de versiones con Git y GitHub.

---

## Autores

Proyecto desarrollado por:

Estudiantes de Técnico en Ingeniería de Desarrollo de Software  
ITCA-FEPADE

---

## Licencia

Este proyecto fue desarrollado con fines académicos y educativos.
