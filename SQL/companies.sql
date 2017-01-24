IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Companies]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Companies](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CompanyGuid] [uniqueidentifier] NOT NULL,
	[CompanyName] [nvarchar](100) NOT NULL,
	[ServerAlias] [nvarchar](100) NULL,
	[ServerName] [nvarchar](255) NULL,
	[DatabaseName] [nvarchar](128) NULL,
	[EmailDatabaseName] [nvarchar](128) NULL,
	[IntegratedSecurity] [bit] NOT NULL CONSTRAINT [DF_Companies_IntegratedSecurity]  DEFAULT ((0)),
	[UserName] [nvarchar](255) NULL,
	[Password] [nvarchar](255) NULL,
	[AppKey] [varchar](20) NOT NULL,
	[AppVersion] [varchar](40) NULL,
	[InHomeEstimate] [bit] NOT NULL,
	[ForemanInventory] [bit] NOT NULL,
	[Documents] [bit] NOT NULL,
	[StorageScanIn] [bit] NOT NULL,
	[StorageScanOut] [bit] NOT NULL,
	[ScanAtDelivery] [bit] NOT NULL,
	[AmazonRds] [bit] NOT NULL,
	[AmazonRegion] [varchar](20) NULL,
	[AmazonIdentifier] [varchar](50) NULL,
 CONSTRAINT [PK_Companies] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO


