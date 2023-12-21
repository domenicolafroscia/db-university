-- 1. Contare quanti iscritti ci sono stati ogni anno

SELECT YEAR(`enrolment_date`) AS `year`, COUNT(*) AS `num_iscritti` 
FROM `students` 
GROUP BY YEAR(`enrolment_date`);


-- 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio

SELECT `office_address`, COUNT(*) AS `n_teachers` 
FROM `teachers` 
GROUP BY `office_address`
ORDER BY `n_teachers` ASC;


-- 3. Calcolare la media dei voti di ogni appello d'esame

SELECT `exam_id`, AVG(`vote`) AS `media`
FROM `exam_student`
GROUP BY `exam_id`
ORDER BY `media` ASC;



-- 4. Contare quanti corsi di laurea ci sono per ogni dipartimento

SELECT `name`, COUNT(*) AS `n_courses` 
FROM `departments`
GROUP BY `name`
ORDER BY `n_courses` ASC;