
/* with dense rank */

SELECT score, DENSE_RANK() OVER (ORDER BY score DESC) as rank
FROM Scores
ORDER BY score DESC;


/* with row number*/
select a.score, rank_table.rank
from Scores a
left join (SELECT score, ROW_NUMBER() OVER (ORDER BY score DESC) as rank
FROM (select distinct(score) from Scores) as Scores) rank_table
on rank_table.score = a.score
order by rank_table.rank