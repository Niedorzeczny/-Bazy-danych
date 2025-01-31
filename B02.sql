show databases;
select * from pytania;
set sql_safe_updates=0;

-- plik pierwszy (10 pytań)

select * from pytania where id=15;
select * from pytania where answer='a';
select * from pytania where rok=2007;
select * from pytania where rok=2009 and kategoria='programowanie';
select tresc, odpa, odpb, odpc, odpd from pytania;
select * from pytania order by tresc; 
select tresc from pytania where id between 10 and 12;
select * from pytania where tresc like 'Jak%';
select * from pytania where tresc like '%C++%';
select * from pytania where kategoria='programowanie' or 'systemy operacyjne i sieci' and rok=2012;

-- plik drugi (37 pytań)

select * from pytania where kategoria='programowanie';
select tresc, answer from pytania where rok=2010;
select * from pytania where answer='c';
select * from pytania where kategoria='multimedia i grafika' and rok=2008;
select * from pytania where tresc like '%komputer%';
select * from pytania order by rok asc;
select * from pytania order by rok desc limit 5; 
select * from pytania where kategoria='systemy operacyjne i sieci' order by rok desc;
select count(*) from pytania;
select rok, count(*) from pytania group by rok order by count(*) desc limit 1;
