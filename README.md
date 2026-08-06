# 📱 Práctica Final – Módulo 5: Desarrollo de aplicaciones para dispositivos móviles

📋 **Datos de Entrega**  
**Alumno:** Christian Elhiu Espindola Muñoz  
**Fecha:** 5 de agosto de 2026  

---

## 🚀 Descripción del Proyecto

Esta aplicación para iOS fue desarrollada en **Swift** y **Xcode** como entrega correspondiente a la **Práctica Final del Módulo 5**. Implementa un catálogo interactivo de cócteles (**Drinks**) que demuestra el uso eficiente de componentes de navegación, gestión de recursos visuales, restricciones de orientación por dispositivo y una interfaz gráfica optimizada y personalizada aplicando las mejores prácticas de desarrollo en la plataforma.

---

## ✅ Cumplimiento de Requerimientos Funcionales

La aplicación fue diseñada para cumplir al 100% con los criterios de evaluación solicitados:

* 🚀 **Configuración Inicial y Branding:**
  * Configuración completa del icono de la aplicación (**AppIcon**) en el Asset Catalog.
  * Implementación de una **Launch Screen** (Pantalla de inicio) personalizada con el logotipo de la app (*Drinks*).

* 🍸 **Vista Principal y Catálogo de Cócteles:**
  * Presentación organizada de la lista de bebidas solicitadas a través de una interfaz fluida (*TableView* / *CollectionView* personalizada).
  * Manejo dinámico de la lista de cócteles utilizando la estructura de datos proporcionada en un arreglo de cadenas (`String`).
  * Inclusión de miniaturas e indicadores de selección en cada celda.

* 🔄 **Navegación y Detalle de Bebida:**
  * Transición de navegación fluida hacia la segunda vista al seleccionar cualquier bebida del menú.
  * Carga e inspección dinámica de la imagen del cóctel correspondiente en alta resolución mapeada desde el catálogo de activos mediante su índice/nombre.
  * Soporte nativo para la **navegación de regreso** mediante la barra de navegación (*Back Button*) y el gesto *swipe* hacia atrás.

* 📱 **Configuración del Dispositivo y Restricciones:**
  * Configuración y restricción exclusiva de ejecución para **iPhone** en orientación **Portrait** (deshabilitada la rotación a Landscape para garantizar la consistencia visual).

* 🎨 **Personalización Visual e Interfaz (Punto Extra):**
  * Diseño con temática oscura (*Dark Mode / Premium aesthetic*), bordes redondeados y detalles dorados.
  * Aplicación de tipografías elegidas especialmente (*custom fonts*) y una paleta de colores coordinada para el realce de los controles visuales y objetos de la interfaz.

---

## 📸 Capturas de Pantalla de la Aplicación

| App Icon & Branding | Launch Screen | Vista Principal (Menú) | Vista de Detalle |
| :---: | :---: | :---: | :---: |
| <img src="image.png" width="200" alt="App Icon"/> | <img src="image_2.png" width="200" alt="Launch Screen"/> | <img src="image_3.png" width="200" alt="Menú Principal"/> | <img src="image_4.png" width="200" alt="Vista Detalle"/> |

---
