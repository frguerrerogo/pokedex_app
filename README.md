# Pokedex App - Flutter

**Pokedex App** es una aplicación móvil desarrollada en Flutter que permite a los usuarios explorar y descubrir información detallada sobre Pokémon. La aplicación ofrece una experiencia de usuario fluida e intuitiva, con un diseño responsivo y funcionalidades interactivas.

La aplicación está diseñada para proporcionar una experiencia visual atractiva, con una interfaz intuitiva, navegación fluida, y gestión eficiente del estado. Entre sus funcionalidades principales se incluyen la visualización de Pokémon, búsqueda y filtrado, exploración de regiones, gestión de perfil de usuario, y un flujo de onboarding completo.

La aplicación utiliza una **PokéAPI** pública para obtener información actualizada sobre Pokémon, con un flujo de datos optimizado y caching eficiente para garantizar una experiencia fluida y rápida.


## 🎥 Demo en video

Puedes ver una demostración completa de la aplicación haciendo clic en el siguiente enlace:

👉 [Ver demo de Pokedex App](https://drive.google.com/file/d/1Aiz8_LbM5FIkcQ3cBrnMBxg-6hsjERok/view?usp=sharing)

## 🚀 Características principales

- Visualización de lista de Pokémon disponibles.
- Búsqueda y filtrado de Pokémon.
- Exploración de regiones Pokémon.
- Visualización detallada de información de cada Pokémon.
- Gestión de perfil de usuario.
- Onboarding interactivo.
- Feedback visual, manejo de errores y loading states.
- UI responsiva y experiencia de usuario optimizada.
- Internacionalización (i18n) con soporte multiidioma.

## 🔥 Tecnologías Usadas

- **Flutter**: Framework principal.
- **Riverpod**: Gestión de estado reactiva.
- **Freezed**: Generación de clases de datos inmutables.
- **GoRoute**: Navegación y routing.
- **Dio**: Cliente HTTP para consumir APIs.
- **PokéAPI**: API pública para datos de Pokémon.
- **Json Serializable**: Serialización/deserialización de JSON.
- **Intl**: Internacionalización y formatos.
- **Flutter SVG**: Renderización de imágenes SVG.
- **Shared Preferences**: Almacenamiento local de datos.
- **Arquitectura modular**: Separación del proyecto en paquetes independientes (features, core).
- **Arquitectura limpia (Clean Architecture)**: Separación de capas: presentación, dominio y datos.

## 🚀 Instalación y Configuración

### Requisitos previos

- **Flutter 3.35.5**
- **Dart 3.9.2**
- Dependencias instaladas con `flutter pub get`.

### Instalación

1. Clonar el repositorio:
   ```bash
   git clone https://github.com/frguerrerogo/pokedex_app.git
   cd pokedex_app
   ```

2. Instalar dependencias:
   ```bash
   flutter pub get
   ```
3. Ejecutar la aplicación:
    Para correr la aplicación en modo desarrollo, simplemente ejecuta:
    ```bash
    flutter run
    ```
## 📂 Estructura del Código

Este proyecto sigue una arquitectura modular basada en Clean Architecture, separando las capas de presentación, dominio y datos, lo que facilita la escalabilidad y el mantenimiento.

- **core/** → Configuraciones generales, constantes, temas, router y utilidades globales.
- **features/** → Módulos de funcionalidades independientes (pokemon, regions, profile, onboarding).
- **l10n/** → Archivos de internacionalización y localización.

Esta estructura permite un flujo limpio y desacoplado, facilitando la gestión de cambios y nuevas funcionalidades.

```
lib/
├── core/                   # Configuración, constantes, utilidades
│   ├── config/             # Configuración de la app
│   ├── constants/          # Constantes globales
│   ├── di/                 # Inyección de dependencias
│   ├── errors/             # Manejo de errores
│   ├── providers/          # Proveedores globales de Riverpod
│   ├── router/             # Configuración de rutas
│   ├── utils/              # Funciones utilitarias
│   └── widgets/            # Widgets compartidos
├── features/               # Módulos de funcionalidades
│   ├── onboarding/         # Flujo de onboarding
│   ├── pokemon/            # Lista y detalle de Pokémon
│   ├── profile/            # Perfil del usuario
│   └── regions/            # Exploración de regiones
├── l10n/                   # Internacionalización
└── main.dart               # Punto de entrada
```

## 👤 Autor y Contacto

**Desarrollador**: Fabian Guerrero

Para preguntas o soporte, puedes contactarme en:

- **Email**: [frguerrerogo@gmail.com](frguerrerogo@gmail.com)
- **LinkedIn**: [frguerrerogo](https://www.linkedin.com/in/frguerrerogo/)
