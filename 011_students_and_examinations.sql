-- ================================================
-- Pergunta de produto:
-- Quantos exames cada aluno realizou por tema?
--
-- Contexto:
-- Identificar a quantidade de exames realizados por
-- cada aluno em cada tema, incluindo temas nos quais
-- o aluno não realizou nenhum exame.
--
-- Métrica:
-- Quantidade de exames realizados por aluno e tema.
--
-- Conceito SQL:
-- CROSS JOIN · LEFT JOIN · COUNT · GROUP BY · ORDER BY
--
-- Nível:
-- Intermediário
-- ================================================

SELECT
    Students.student_id,
    Students.student_name,
    Subjects.subject_name,
    COUNT(Examinations.student_id) AS attended_exams
FROM Students
CROSS JOIN Subjects
LEFT JOIN Examinations
    ON Students.student_id = Examinations.student_id
    AND Subjects.subject_name = Examinations.subject_name
GROUP BY
    Students.student_id,
    Students.student_name,
    Subjects.subject_name
ORDER BY
    student_id,
    subject_name;
