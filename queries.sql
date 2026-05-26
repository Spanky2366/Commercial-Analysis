-- =======================================================================
-- PROYECTO: ANÁLISIS DE RENTABILIDAD Y OPERACIONES
-- AUTOR: JAVIER GUADARRAMA (ING. EN SISTEMAS COMPUTACIONALES)
-- OBJETIVO: Auditoría mediante SQL para detectar fugas de capital
-- =======================================================================

-- 1. LOS FALSOS HÉROES
-- Objetivo: Identificar las 5 subcategorías que mueven más volumen de inventario
-- pero que registran pérdidas netas.
SELECT TOP 5
    Category, 
    Sub_Category,
    SUM(Quantity) AS Cantidad_Vendida,
    SUM(Profit) AS Perdida_Neta
FROM SampleSuperstore
WHERE Profit < 0
GROUP BY Category, Sub_Category 
ORDER BY Cantidad_Vendida DESC;


-- 2. EL IMPACTO GEOGRÁFICO
-- Objetivo: Cruzar el volumen de ingresos frente a la utilidad real por región
-- para evaluar la eficiencia logística y operativa.
SELECT 
    Region,
    SUM(Sales) AS Mas_Ventas_Region,
    SUM(Profit) AS Mejor_Ganancia_Region 
FROM SampleSuperstore
GROUP BY Region
ORDER BY Mas_Ventas_Region DESC;


-- 3. EL VENENO DE LOS DESCUENTOS
-- Objetivo: Análisis forense en la categoría de Technology para identificar
-- el umbral exacto de descuento que detona pérdidas financieras.
SELECT 
    Category,
    Sub_Category,
    ROUND((Discount * 100), 0) AS Descuento_Porcentaje,
    ROUND(Sales, 2) AS Ventas_Limpias,
    ROUND(Profit, 2) AS Profit_limpio
FROM SampleSuperstore
WHERE Category = 'Technology' AND Profit < 0
ORDER BY Descuento_Porcentaje DESC;
