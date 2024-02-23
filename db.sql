-- leetcode assistant`homework
select p.product_name,s.year,s.price from Sales s left join Product p on s.product_id=p.product_id order by product_name,year,price
SELECT distinct author_id as id FROM Views where author_id = viewer_id order by author_id;
select e.name,b.bonus from Employee e left join Bonus b on e.empId=b.empId where bonus < 1000 or bonus is null order by bonus
SELECT * FROM Cinema where rating > 8.6 order by rating desc
select distinct actor_id,director_id from ActorDirector where actor_id = director_id;


-- leetcode mentor`s homework
-- ---------------------------------------------------------------
select round(avg(population)) from City;
-- ---------------------------------------------------------------
-- 2 CHiqmadi
-- ---------------------------------------------------------------
select round(sum(LAT_N),2) AS lat,round(sum(LONG_W),2) AS lon from STATION 
-- ---------------------------------------------------------------
SELECT 
    CASE
    WHEN grades.grade < 8 THEN 'NULL'
    ELSE students.name
    END,
    grades.grade, students.marks
    FROM students, grades 
WHERE students.marks >= grades.min_mark AND students.marks <= grades.max_mark
ORDER BY grades.grade DESC, students.name
-- ---------------------------------------------------------------
select cy.Continent,round(avg(c.population-0.5)) from Country cy inner join City c on c.CountryCode = cy.Code
group by cy.Continent; -- float sonlar borligi ucgun 0.5 ni ayirib tashladim
-- ---------------------------------------------------------------
Select case
when A + B <= C or A + C <= B or B + C <= A then 'Not A Triangle'
when A = B and B = C then 'Equilateral'
when A = B or B = C or A = C then 'Isosceles'
else 'Scalene'
end
from TRIANGLES;