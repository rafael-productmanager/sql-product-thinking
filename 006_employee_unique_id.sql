-- ================================================
-- Pergunta de produto:
-- Qual identificador único está associado
-- a cada colaborador?
--
-- Contexto:
-- Consolidar dados cadastrais distribuídos
-- entre tabelas.
--
-- Métrica:
-- unique_id por colaborador.
--
-- Conceito SQL:
-- LEFT JOIN
--
-- Nível:
-- Básico
-- ================================================

SELECT unique_id,
       name
FROM Employees
LEFT JOIN EmployeeUNI
ON Employees.id = EmployeeUNI.id;
