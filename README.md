# 📱 Práctica Final – Módulo 5: Desarrollo de aplicaciones para dispositivos móviles

## 📋 Datos de Entrega

- **Alumno:** Christian Elhiu Espindola Muñoz
- **Fecha:** 5 de agosto de 2026

## 🚀 Descripción del Proyecto

Aplicación para iOS desarrollada en **SwiftUI** con **Xcode** como entrega de la Práctica Final del Módulo 5. Implementa un catálogo interactivo de 15 cócteles que demuestra la navegación entre vistas, el manejo de recursos visuales en el Asset Catalog, las restricciones de dispositivo y orientación, y una interfaz oscura personalizada con tipografías y colores propios.

## ✅ Cumplimiento de Requerimientos Funcionales

La aplicación está diseñada para cubrir los criterios de evaluación solicitados:

### 🚀 Configuración Inicial y Branding

- **AppIcon** configurado en el Asset Catalog (el icono aparece en el home del iPhone).
- **Launch Screen** personalizada en Storyboard: muestra el nombre de la app ("Drinks") en tipografía Snell Roundhand sobre fondo personalizado.

### 🍸 Vista Principal y Catálogo de Cócteles

- Lista de las **15 bebidas** solicitadas, mostrada con `ScrollView` + `LazyVStack`.
- Los datos se manejan con un modelo `Drink` (struct con nombre e imagen) definido en `Drink.all`; cada bebida se muestra con su nombre y una miniatura redondeada.
- Cada fila incluye un indicador de selección (chevron).

### 🔄 Navegación y Detalle de Bebida

- Al tocar cualquier bebida, `NavigationStack` + `NavigationLink` hacen la transición a la vista de detalle.
- La vista de detalle presenta la **imagen del cóctel en alta resolución** desde el Asset Catalog mediante su índice/nombre (`Image(drink.imageName)`), sobre un degradado radial.
- El regreso funciona con el **botón "back"** de la barra de navegación y con el **gesto swipe** hacia la derecha.

### 📱 Configuración del Dispositivo y Restricciones

- La app solo se ejecuta en **iPhone** (`TARGETED_DEVICE_FAMILY = 1`).
- Orientación fija en **Portrait** (rotación deshabilitada).

### 🎨 Personalización Visual e Interfaz (Punto Extra)

- Temática oscura premium con paleta propia (`BarDeep`, `BarBackground`, `BarGold`, `Cream`).
- Tipografías personalizadas: **Snell Roundhand**, **Didot-Bold** y **Avenir Next**.
- Detalles dorados, degradados y bordes redondeados en filas y vistas.
- Localización **Español/Inglés** (`Localizable.xcstrings`).

## 📸 Capturas de Pantalla de la Aplicación

| Launch Screen | Menú Principal | Vista de Detalle |
|---|---|---|
| ![Launch Screen](Screenshots/launch.png) | ![Menú](Screenshots/menu.png) | ![Detalle](Screenshots/detalle.png) |

## 🛠️ Cómo compilar

1. Abrir `Drinks.xcodeproj` en Xcode.
2. Seleccionar un simulador de iPhone (o un dispositivo con Developer Mode activado).
3. Presionar **Cmd + R**.
