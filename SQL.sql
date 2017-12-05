update [Sample].[dbo].[Table1] 
set Second = (select Second from Table2 where table1.ID = table2.id)
where exists
(select * from table2
 where table1.ID = table2.id)
 
 update [Sample].[dbo].[Table1] set Third = (First * Second)
