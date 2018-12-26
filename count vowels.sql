CREATE FUNCTION countvovels (@name VARCHAR(30))
RETURNS INT
AS
BEGIN
        DECLARE @count INT

        SELECT @count = sum
		(
		len(@name) - len(REPLACE(@name, 'a', '')) +
		len(@name) - len(REPLACE(@name, 'e', '')) +
		len(@name) - len(REPLACE(@name, 'i', '')) +
		len(@name) - len(REPLACE(@name, 'o', '')) +
		len(@name) - len(REPLACE(@name, 'u', '')))

        RETURN @count
END

SELECT dbo.countvovels('shaji')
