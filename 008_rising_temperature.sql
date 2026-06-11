-- ================================================
-- Pergunta de produto:
-- Em quais dias a temperatura foi maior do que
-- no dia anterior?
--
-- Contexto:
-- Comparar métricas diárias com o período
-- imediatamente anterior.
--
-- Métrica:
-- IDs dos dias cuja temperatura foi superior
-- à temperatura do dia anterior.
--
-- Conceito SQL:
-- Self Join · Alias · DATEDIFF
--
-- Nível:
-- Intermediário
-- ================================================

SELECT w1.id
FROM Weather w1
JOIN Weather w2
ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
WHERE w1.temperature > w2.temperature;
