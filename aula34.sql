delimiter $

create procedure conta(n1 int, n2 int)
    begin 
        select n1 + n2 as 'soma';
    end $
    