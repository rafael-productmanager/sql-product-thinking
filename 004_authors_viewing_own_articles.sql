-- ================================================
-- Pergunta de produto:
-- Quais autores visualizaram pelo menos um dos
-- próprios conteúdos?
--
-- Contexto:
-- Entender comportamento de produtores de conteúdo.
--
-- Métrica:
-- Lista única de autores.
--
-- Conceito SQL:
-- DISTINCT · ORDER BY
--
-- Nível:
-- Básico
-- ================================================

SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY id;
