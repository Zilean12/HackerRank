SELECT CONCAT(NAME,Occupation_2)
FROM (
       SELECT NAME,
              CASE
                WHEN OCCUPATIONS.Occupation = 'Doctor' THEN '(D)'
                WHEN OCCUPATIONS.Occupation = 'Actor' THEN  '(A)'
                WHEN OCCUPATIONS.Occupation = 'Singer' THEN '(S)'
                WHEN OCCUPATIONS.Occupation = 'Professor'THEN '(P)'
              END AS Occupation_2
        FROM OCCUPATIONS
    ) AS OCCUPATIONS_3
ORDER BY NAME ASC;
SELECT CASE 
         WHEN OCCUPATIONS.Occupation = 'Doctor' THEN 'There are a total of'+                        
  STR(COUNT(Occupation))+' doctors.'
         WHEN OCCUPATIONS.Occupation = 'Singer' THEN 'There are a total of' +
STR(COUNT(Occupation))+' singers.'
         WHEN OCCUPATIONS.Occupation = 'Actor' THEN 'There are a total of' +
STR(COUNT(Occupation))+' actors.'
         WHEN OCCUPATIONS.Occupation = 'Professor' THEN 'There are a total of' + 
STR(COUNT(Occupation))+' professors.'
       END AS Summary
FROM OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(Occupation) ASC;
