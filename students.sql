drop database if exists engineering_analysis;

create database engineering_analysis;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `student_summary_report` AS select `students_clean`.`Branch` AS `Branch`,count(0) AS `total_students`,round(avg(`students_clean`.`Average_GPA`),2) AS `avg_gpa`,round(avg(`students_clean`.`CTC_LPA`),2) AS `avg_salary` from `students_clean` where (`students_clean`.`Placement_Status` = 'Placed') group by `students_clean`.`Branch`;
