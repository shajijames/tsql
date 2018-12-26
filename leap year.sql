CREATE PROCEDURE leapyear (@year INT)
AS
BEGIN
        IF @year % 4 != 0
                PRINT 'Not a Leap Year'
        ELSE IF @year % 100 != 0
                PRINT 'Leap Year'
        ELSE IF @year % 400 != 0
                PRINT 'Not a Leap Year'
        ELSE
                PRINT 'Leap Year'
END
EXEC leapyear 2016
