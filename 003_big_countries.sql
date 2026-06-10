-- ================================================
-- Pergunta de produto:
-- Quais países possuem grande escala territorial
-- ou populacional?
--
-- Contexto:
-- Identificar mercados potencialmente relevantes.
--
-- Métrica:
-- Países com área >= 3 milhões
-- ou população >= 25 milhões.
--
-- Conceito SQL:
-- SELECT · OR · Comparadores
--
-- Nível:
-- Básico
-- ================================================

SELECT name,
       population,
       area
FROM World
WHERE area >= 3000000
OR population >= 25000000;
