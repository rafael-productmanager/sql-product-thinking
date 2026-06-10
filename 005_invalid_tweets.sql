-- ================================================
-- Pergunta de produto:
-- Quais publicações excedem o limite permitido?
--
-- Contexto:
-- Identificar conteúdos inválidos para publicação.
--
-- Métrica:
-- Tweets com mais de 15 caracteres.
--
-- Conceito SQL:
-- LENGTH
--
-- Nível:
-- Básico
-- ================================================

SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;
