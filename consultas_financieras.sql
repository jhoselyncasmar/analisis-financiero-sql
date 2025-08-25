-- Margen bruto por producto
SELECT Producto,
       SUM(Ingresos) - SUM(Costos) AS Margen_Bruto
FROM finanzas
GROUP BY Producto;

-- Rentabilidad (%) por producto
SELECT Producto,
       ROUND(((SUM(Ingresos) - SUM(Costos)) * 100.0) / SUM(Ingresos), 2) AS Rentabilidad_Porcentaje
FROM finanzas
GROUP BY Producto;

-- Ingresos y costos por periodo
SELECT Periodo, SUM(Ingresos) AS Total_Ingresos, SUM(Costos) AS Total_Costos
FROM finanzas
GROUP BY Periodo
ORDER BY Periodo;
