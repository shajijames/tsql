DECLARE @a TABLE (
        name VARCHAR(30)
        ,salary INT
        ,increased_salary INT
        )
DECLARE @name VARCHAR(30)
DECLARE @salary INT
DECLARE @increased_salary INT

DECLARE c CURSOR
FOR
SELECT cname
        ,csalary
FROM ctable

OPEN c

FETCH NEXT
FROM c
INTO @name
        ,@salary

WHILE @@fetch_status = 0
BEGIN
        SET @increased_salary = @salary + (@salary / 10)

        INSERT @a
        SELECT @name
                ,@salary
                ,@increased_salary

        FETCH NEXT
        FROM c
        INTO @name
                ,@salary
END

CLOSE c

SELECT *
FROM @a

DEALLOCATE c
