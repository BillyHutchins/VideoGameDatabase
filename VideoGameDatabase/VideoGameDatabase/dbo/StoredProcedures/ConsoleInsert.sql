-- =====================================================
-- Author:		Billy Hutchins
-- Create date: January 10, 2020
-- Description:	Inserts a single console record into Console table
-- Usage:
-- EXEC [RestApi].[ConsoleInsert] @name = 'Playstation 1', @company = 'Sony', @year = '1995', @units = 1
-- =====================================================

CREATE PROCEDURE RestApi.ConsoleInsert  
(   
@name NVARCHAR(200),  
@company NVARCHAR(200),  
@year NVARCHAR(10),  
@units INT   
)  
AS  
BEGIN TRY  
	INSERT INTO dbo.Console (Name, Company, Year, Units) 
	VALUES(@name, @company, @year, @units)  
END TRY
BEGIN CATCH  
    SELECT  
        ERROR_NUMBER() AS ErrorNumber  
        ,ERROR_SEVERITY() AS ErrorSeverity  
        ,ERROR_STATE() AS ErrorState  
        ,ERROR_PROCEDURE() AS ErrorProcedure  
        ,ERROR_LINE() AS ErrorLine  
        ,ERROR_MESSAGE() AS ErrorMessage;  
END CATCH;  
GO  