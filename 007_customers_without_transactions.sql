-- ================================================
-- Pergunta de produto:
-- Quais clientes visitaram o shopping mas
-- não realizaram compras?
--
-- Contexto:
-- Identificar oportunidades de melhoria
-- na conversão.
--
-- Métrica:
-- Quantidade de visitas sem transação
-- por cliente.
--
-- Conceito SQL:
-- LEFT JOIN · IS NULL · GROUP BY · COUNT
--
-- Nível:
-- Intermediário
-- ================================================

SELECT customer_id,
       COUNT(*) AS count_no_trans
FROM Visits
LEFT JOIN Transactions
ON Visits.visit_id = Transactions.visit_id
WHERE transaction_id IS NULL
GROUP BY customer_id;
