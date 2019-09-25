CREATE TABLE [dbo].[Console] (
    [Id]      INT            IDENTITY (1, 1) NOT NULL,
    [Name]    NVARCHAR (200) NULL,
    [Company] NVARCHAR (200) NULL,
    [Year]    NVARCHAR (10)  NULL,
    [Units]   INT            NULL,
    CONSTRAINT [PK_Console] PRIMARY KEY CLUSTERED ([Id] ASC)
);

