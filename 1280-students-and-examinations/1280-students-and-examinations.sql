/* Write your T-SQL query statement below */
Select
    std.student_id, 
    std.student_name, 
    sub.subject_name, 
    count(e.subject_name) attended_exams
From Students std 
cross join Subjects sub
left join Examinations e
on std.student_id = e.student_id and sub.subject_name = e.subject_name
group by std.student_id, std.student_name, sub.subject_name
Order by std.student_id, sub.subject_name