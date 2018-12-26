BEGIN
        DECLARE @n INT = 4
        DECLARE @fac INT

        SET @fac = @n

        WHILE @n > 1
        BEGIN
                SET @fac = @fac * (@n - 1)
                SET @n = @n - 1
        END

        PRINT @fac
END
