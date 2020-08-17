CREATE FUNCTION [dbo].[GetValueFromCharCode]
(@name varchar(3), @date date)
RETURNS varchar(10) 
BEGIN 
	DECLARE @ValueMoney varchar(10)
	SELECT @ValueMoney = ValueMoney
	FROM dbo.Valute
	WHERE CharCode = @name
	AND
	Date = date
	RETURN @ValueMoney
END;