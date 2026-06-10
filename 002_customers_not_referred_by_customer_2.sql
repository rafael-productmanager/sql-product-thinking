-- ================================================
-- Pergunta de produto:
-- Quais clientes não foram indicados pelo
-- usuário de ID 2?
--
-- Contexto:
-- Analisar aquisição de clientes removendo
-- influência de um referral específico.
--
-- Métrica:
-- Lista de clientes elegíveis.
--
-- Conceito SQL:
-- WHERE · OR · NULL
--
-- Nível:
-- Básico
-- ================================================

SELECT name
FROM Customer
WHERE referee_id != 2
OR referee_id IS NULL;
