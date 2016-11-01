CREATE TABLE [dbo].[Users](
	[UserId] [INT] NOT NULL,
	[FirstName] [NVARCHAR](20) NOT NULL,
	[LastName] [NVARCHAR](20) NOT NULL,
	[Login] [NVARCHAR](100) NOT NULL,
	[Password] [NVARCHAR](20) NOT NULL,
	[ClientId] [INT] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)
) ON [PRIMARY]

GO


