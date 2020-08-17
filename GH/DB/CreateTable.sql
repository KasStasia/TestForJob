GO
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Valute](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ValuteID] [varchar](10) NOT NULL,
	[CharCode] [varchar](3) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Nominal] [int] NOT NULL,
	[ValueMoney] [varchar](10) NOT NULL,
	[Date] [date] NOT NULL,
 CONSTRAINT [PK_Valute] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


