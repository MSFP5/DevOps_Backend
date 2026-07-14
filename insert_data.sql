-- Insertar ventas de prueba (algunas sin despacho generado)
INSERT INTO venta (id_venta, direccion_compra, valor_compra, fecha_compra, despacho_generado) VALUES
(1, 'Av. Libertador 1234, Santiago', 150000, '2026-07-10', false),
(2, 'Calle Moneda 456, Valparaíso', 250000, '2026-07-11', false),
(3, 'Av. Pedro de Valdivia 789, Providencia', 180000, '2026-07-12', false),
(4, 'Los Cerezos 321, Las Condes', 320000, '2026-07-09', true),
(5, 'Av. Apoquindo 1500, Las Condes', 420000, '2026-07-08', true);

-- Insertar despachos de prueba
INSERT INTO despacho (id_despacho, fecha_despacho, patente_camion, intento, id_compra, direccion_compra, valor_compra, despachado) VALUES
(1, '2026-07-10', 'ABCD12', 1, 4, 'Los Cerezos 321, Las Condes', 320000, true),
(2, '2026-07-09', 'WXYZ34', 2, 5, 'Av. Apoquindo 1500, Las Condes', 420000, false);

-- Actualizar secuencias
UPDATE venta_seq SET next_val = 6;
UPDATE despacho_seq SET next_val = 3;

-- Mostrar resumen
SELECT 'VENTAS INSERTADAS:' as info;
SELECT id_venta, direccion_compra, valor_compra, fecha_compra, despacho_generado FROM venta;
SELECT 'DESPACHOS INSERTADOS:' as info;
SELECT id_despacho, fecha_despacho, patente_camion, intento, despachado FROM despacho;
