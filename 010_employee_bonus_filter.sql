-- ================================================
-- Pergunta de produto:
-- Qual é o tempo médio que cada máquina leva
-- para concluir um processo?
--
-- Contexto:
-- Cada processo possui um evento de início (start)
-- e um evento de término (end). Precisamos calcular
-- a duração de cada processo e depois obter a média
-- por máquina.
--
-- Métrica:
-- Tempo médio de processamento por máquina.
--
-- Fórmula:
-- processing_time =
-- AVG(end_timestamp - start_timestamp)
--
-- Conceito SQL:
-- Self Join · AVG · GROUP BY · ROUND
--
-- Nível:
-- Intermediário
-- ================================================

SELECT a1.machine_id,
       ROUND(AVG(a2.timestamp - a1.timestamp), 3) AS processing_time
FROM Activity a1
JOIN Activity a2
ON a1.machine_id = a2.machine_id
AND a1.process_id = a2.process_id
WHERE a1.activity_type = 'start'
AND a2.activity_type = 'end'
GROUP BY a1.machine_id;
