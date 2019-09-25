CREATE TABLE [dbo].[Game] (
    [Id]        INT            IDENTITY (1, 1) NOT NULL,
    [Name]      NVARCHAR (200) NULL,
    [ConsoleId] INT            NULL,
    [Year]      NVARCHAR (10)  NULL,
    [Units]     INT            NULL,
    CONSTRAINT [PK_Game] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_Game_Console] FOREIGN KEY ([ConsoleId]) REFERENCES [dbo].[Console] ([Id])
);

