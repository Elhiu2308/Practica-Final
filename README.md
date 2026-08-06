# 📱 Práctica Final – Módulo 5: Desarrollo de aplicaciones para dispositivos móviles

## 📋 Datos de Entrega

- **Alumno:** Christian Elhiu Espindola Muñoz
- **Fecha:** 5 de agosto de 2026

## 🚀 Descripción del Proyecto

Aplicación para iOS desarrollada en **SwiftUI** con **Xcode** como entrega correspondiente a la Práctica Final del Módulo 5. Implementa un catálogo interactivo de 15 cócteles (Drinks) que demuestra el uso de navegación entre vistas, gestión de recursos visuales en el Asset Catalog, restricciones de dispositivo y orientación, y una interfaz oscura personalizada con tipografías y paleta de colores propias.

## ✅ Cumplimiento de Requerimientos

### Configuración inicial y branding

- AppIcon configurado en el Asset Catalog.
- Launch Screen personalizada (Storyboard) con el nombre de la app "Drinks" en tipografía Snell Roundhand sobre fondo personalizado.

### Vista principal y catálogo de cócteles

- Catálogo de las 15 bebidas solicitadas en una `ScrollView` con filas personalizadas (`LazyVStack` + `ForEach`).
- Los datos se definen en un modelo `Drink` (struct con nombre e imagen) cargado desde `Drink.all`.
- Cada fila incluye miniatura redondeada, nombre de la bebida e indicador de selección (chevron).

### Navegación y detalle de bebida

- `NavigationStack` + `NavigationLink`: al tocar cualquier bebida se abre la vista de detalle.
- La imagen del cóctel se muestra en alta resolución desde el Asset Catalog mediante el nombre/índice de la imagen (`Image(drink.imageName)`).
- Regreso nativo: botón "back" de la barra de navegación y gesto swipe hacia atrás.

### Configuración del dispositivo y restricciones

- App exclusiva para **iPhone** (`TARGETED_DEVICE_FAMILY = 1`).
- Solo orientación **Portrait** (rotación a Landscape deshabilitada).

### Personalización visual (punto extra)

- Tema oscuro premium con paleta propia: `BarDeep`, `BarBackground`, `BarGold` y `Cream`.
- Tipografías personalizadas: Snell Roundhand, Didot-Bold y Avenir Next.
- Detalles dorados, degradados y bordes redondeados en filas y vistas.
- Localización Español/Inglés (`Localizable.xcstrings`).

## 📸 Capturas de Pantalla de la Aplicación

| App Icon & Branding | Launch Screen | Vista Principal (Menú) | Vista de Detalle |
|---|---|---|---|
| App Icon | Launch Screen | Menú Principal | Vista Detalle |

## 🛠️ Cómo compilar

1. Abrir `Drinks.xcodeproj` en Xcode.
2. Seleccionar un simulador de iPhone (o un dispositivo con Developer Mode activado).
3. Presionar **Cmd + R**.
