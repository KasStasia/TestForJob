CREATE FUNCTION [dbo].[GetValueFromName]
(@name varchar(50), @date date)
RETURNS varchar(10) 
BEGIN 
	DECLARE @ValueMoney varchar(10)
	SELECT @ValueMoney = ValueMoney
	FROM dbo.Valute
	WHERE Name = @name
	AND
	Date = date
	RETURN @ValueMoney
END;