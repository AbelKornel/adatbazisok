CREATE TABLE [dbo].[Vendeg](
  	[VENDEG_ID] [int] MASKED WITH (function = 'random(1,6)') NOT NULL,
	[USERNEV] [nvarchar](20) NOT NULL,
	[NEV] [nvarchar](50) MASKED WITH (Function = 'partial(1,"XXX",1)') NOT NULL,
	[EMAIL] [nvarchar](60) MASKED WITH (function = 'email()') NOT NULL,
	[SZAML_CIM] [nvarchar](100) MASKED WITH (function = 'default()') NULL,
	[SZUL_DAT] [date] MASKED with (function = 'datetime("YMD")') NULL,
 CONSTRAINT [PK_Vendeg] PRIMARY KEY CLUSTERED 
(
	[USERNEV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]