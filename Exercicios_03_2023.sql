/*
Exercícios 03 - FUNÇÕES SQL
*/

/* 1. Quais são as quatro categorias de funções SQL? */

Select, Insert, Update e Delete

/* 2. Qual categoria de função é ideal para fazer cálculos matemáticos? */

ARITIMÉTICOS

/* 3. Qual categoria de função é ideal para realizar operações estatísticas? */

AGREGAÇÃO

/* 4. Quais funções de agregação você conhece? */

sum, avg, min, max, count

/* 5. Quais funções de data e hora você conhece? */
YEAR, MONTH, DAY, GETDATE, DATEPART, DATEDIFF, DATENAME E DATEADD
/* 6. Quais funções numéricas você conhece? */
POWER, SQRT, PI, ABS, ROUND, SIN, COS, TAN, ASIN


/* 7. Quais funções string você conhece? */
LEFT, RIGHT, UPPER, LOWER E LEN.


/* 8. Qual é o número médio de filhos por funcionário da empresa? */
SELECT AVG(FILHOS) AS MEDIA_FILHOS FROM CADFUN;


/* 9. Qual é o número médio de filhos por funcionário da empresa que pertence ao departamento 5? */
SELECT AVG(FILHOS) AS MEDIA_FILHOS FROM CADFUN WHERE DEPTO = 5;
 

/* 10. Qual é o valor de salários pagos aos funcionários do departamento 5? */
SELECT SALARIO,DEPTO FROM CADFUN WHERE DEPTO = 5;


/* 11. Quantos funcionários estão no departamento 5? */
SELECT COUNT(DEPTO) FROM CADFUN WHERE DEPTO = 5;

/* 12. Qual é o maior valor de salário pago no departamento 5? */
SELECT MAX (SALARIO) DEPTO FROM CADFUN WHERE DEPTO = 5;


/* 13. Quanto a empresa paga para todos os analistas? */
SELECT SALARIO FROM CADFUN WHERE FUNCAO ='ANALISTA'


/* 14. Quanto a empresa paga para os analistas do departamento 2? */
SELECT SALARIO FROM CADFUN WHERE FUNCAO = 'ANALISTA' AND DEPTO = '2'


/* 15. Listar os nomes de todos os funcionários admitidos no dia 10 de qualquer mês*/
SELECT NOME FROM cadfun WHERE DAY(ADMISSAO) = 10;

/* 16. Listar os nomes e as datas de admissao de todos os funcionários admitidos entre o dia 
5 e o dia 10 de qualquer mês*/

SELECT NOME, ADMISSAO FROM cadfun WHERE (DAY(ADMISSAO) >= 5) AND (DAY(ADMISSAO) <= 10);


/* 17. Listar os nomes e as datas de admissao de todos os funcionários admitidos entre o dia 
5 e o dia 10 de qualquer mês ordenado de forma ascendente por data*/
SELECT NOME, ADMISSAO FROM cadfun WHERE (DAY(ADMISSAO) >= 5) AND (DAY(ADMISSAO) <= 10) ORDER BY ADMISSAO;


/* 18. Listar os nomes e as datas de admissao de todos os funcionários admitidos entre o dia 
5 e o dia 10 de qualquer mês ordenado de forma descendente por data*/

SELECT NOME, ADMISSAO FROM cadfun WHERE (DAY(ADMISSAO) >= 5) AND (DAY(ADMISSAO) <= 10) ORDER BY ADMISSAO DESC;

/* 19. Listar todos os funcionários admitidos antes do dia 20 de setembro de 2006*/

SELECT * FROM cadfun WHERE ADMISSAO <  '20060920';

/* 20. Listar os nomes, datas de admissao e os nomes dos meses de admissão de todos os 
funcionários do departamento 5*/



/* 21. Listar os nomes e os departamentos de todos os funcionários
em letras minúsculas dos departamentos 3 e 5 */ 



/* 22. Listar os nomes, os departamentos e as datas de admissão de todos os funcionários
admitidos entre o dia 5 e o dia 10 de qualquer mês dos departamentos 3 e 5*/ 



/* 23. Listar os nomes, os departamentos, funções e as datas de admissão de todos os funcionários
admitidos entre o dia 1º e o dia 15 que sejam analistas*/ 



/* 24. Listar os nomes, os departamentos, funções e as datas de admissão de todos os funcionários
admitidos entre os meses de maio e agosto de qualquer mês que sejam analistas*/ 



/* 25. Listar os nomes, os departamentos, funções e as datas de admissão de todos os funcionários
admitidos entre os meses de maio e agosto de qualquer mês que não sejam analistas*/ 



/* 26. Quantos funcionários foram admitidos no mês de julho?*/ 








