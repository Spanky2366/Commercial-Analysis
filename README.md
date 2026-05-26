# Commercial Performance & Profitability Analysis

Este proyecto consiste en un **Dashboard Ejecutivo interactivo desarrollado en Power BI**, diseñado para transformar datos transaccionales masivos de retail en insights estratégicos orientados a la optimización de márgenes y la toma de decisiones gerenciales.

---

## Objetivos del Proyecto
* **Análisis de Rentabilidad:** Identificar las unidades de negocio, regiones y categorías de producto que generan el mayor volumen de ingresos frente a su utilidad real.
* **Detección de Fugas de Capital:** Aislar los estados y productos con márgenes operativos negativos.
* **Mejora de UX/UI:** Desarrollar una interfaz limpia, corporativa y de fácil navegación para usuarios finales.

## Stack Tecnológico
* **Procesamiento y Extracción (ETL):** SQL Server. Desarrollé scripts optimizados para la limpieza, redondeo y auditoría de las transacciones. Puedes consultar el código fuente en [queries.sql](./queries.sql).
* **Modelado de Datos:** Power BI Desktop (Creación de medidas optimizadas mediante lenguaje DAX).
* **Diseño Visual:** Interfaz ejecutiva con panel de filtros dinámicos y controles de restauración nativos.

---

## Vista del Dashboard

<img width="1408" height="791" alt="dashboard" src="https://github.com/user-attachments/assets/f5c7f660-252b-4b55-98fc-86f59b1cc60f" />


---
## Insights de Negocio
1. **El Problema de Mobiliario:** A pesar de tener un volumen alto de ventas, subcategorías como **Mesas** y **Libreros** están canibalizando los ingresos de tecnología debido a márgenes de utilidad severamente negativos.
2. **Fugas Geográficas:** Los estados de **Texas, Ohio y Pennsylvania** representan las mayores zonas de pérdida de capital en toda la operación de la empresa.
3. **Margen Real:** El margen de utilidad global del negocio se estabiliza en un **12.47%**, permitiendo mapear con precisión el rendimiento neto real de las ventas totales ($2.30M).

---
*Desarrollado por [Javier Guadarrama](https://github.com/tu-usuario-de-github) - Ingeniero en Sistemas Computacionales.*
