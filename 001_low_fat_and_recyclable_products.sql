-- ================================================
-- Pergunta de produto:
-- Quais produtos são simultaneamente recicláveis
-- e low-fat?
--
-- Contexto:
-- Identificar produtos que atendem múltiplos
-- critérios de sustentabilidade e saúde.
--
-- Métrica:
-- Lista de produtos elegíveis.
--
-- Conceito SQL:
-- SELECT · WHERE · AND
--
-- Nível:
-- Básico
-- ================================================

SELECT product_id
FROM Products
WHERE low_fats = 'Y'
AND recyclable = 'Y';
