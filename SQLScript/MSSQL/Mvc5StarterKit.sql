
USE [Mvc5StarterKit]
GO

/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 4/7/2017 11:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 4/7/2017 11:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 4/7/2017 11:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 4/7/2017 11:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 4/7/2017 11:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 4/7/2017 11:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
	[Tenant_Id] [int] NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tenants]    Script Date: 4/7/2017 11:26:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tenants](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Tenants] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201611282113545_InitialCreate', N'Mvc5StarterKit.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDD6EE33616BE2FB0EF20E86AB748ADFCEC0C6603A745EA246DD0C90FC69962EF06B4443BC248942B516982C53ED95EEC23ED2B2C299192F8275196623B8302C55822BF7378F8913C3C3A27FFFBCF7FA73F3DC791F304D32C4CD0997B3439741D88FC2408D1EACCCDF1F2870FEE4F3FFEE5BBE965103F3BBFF37627B41DE989B233F711E3F5A9E765FE238C413689433F4DB26489277E127B2048BCE3C3C37F7847471E24102EC1729CE9A71CE13086C50FF27396201FAE710EA29B248051C69E9337F302D5B90531CCD6C08767EECD93FF6E8E418A61FA5B88276507D7398F42409499C368E93A00A104034C543DFD9CC1394E13B49AAFC903103DBCAC2169B7045106D9104EEBE6B6A3393CA6A3F1EA8E1CCACF339CC43D018F4E98793CB9FB4646762BF311035E1243E3173AEAC28867EE75008B479F9288184016783A8B52DA98D8B912719EAD6F219EF08E9312F22A25707F26E9D74913F1C0B1EE7750D1E9787248FF3B70667984F3149E2198E3144407CE7DBE8842FF37F8F2907C85E8ECE468B13CF9F0EE3D084EDEFF1D9EBC6B8E948C95B4131E9047F769B28629D10D2EABF1BB8E27F6F3E48E55B7469FD22A844B6465B8CE0D78FE08D10A3F923573FCC175AEC26718F0278C5C9F51481612E984D39CFCBCCDA3082C2258BDF75A65D2FFB7483D7EF77E14A9B7E0295C15532FC9270B2725EBEA138C8AB7D963B82E979730DF5F58B3AB3489E96F915FE5DB2FF3244F7D3A98C4D8E401A42B8845EDA65E4D5E2B4A53A8F169CD51F79FDA545395DEDAA674409BAC042E62DBAB81EBFBBA72AD1977BE5E93C92BA8452DD24A38DD7935910008B7846635818E6C0984C8C0BEE5FDF032066134C286682185B823CB308D6135CA9F13423F807AEB7C0FB28CEC07C1AF207B6C519DFC7304D5E7D0CF534253C2A278FDEAD2EE1F13046FF37841D9BF3D59A34DCDC39FC915F071925E22DA6B30DEC7C4FF9AE4F812051700C3CFD8E780F4E74318DB038CA2CEB9EFC32CBB226486C12C21DE3607BC46F8E4B8371CDDA376ED90CC2210C67A8F44DA4DBFF0A6B557A26FA1782686663AEFA44DD58FC92A4476AAF2A66655CB169DAAB2667D55A560769AB29666458B069D7A96ADFAAAF90011A024B6D09337352B5AB6E8D494351BCD352DC834BE6F5AC0EEBF733ACCCF306D5B0D33CEC9660E7F8108A664C70DEE0126AE14AA67C0668BDB855F534C1F15FAEAC76821E97710E5638BDA683514FBD5F8ABA180DDFFD550A8491E3F850175A02C6E6CBC3181B76AAFBF0C76AF3949B36D2F076198DB16BE9D3DC07AB9F093ACEFE5B2ECF766EF94AFBFD777B8B263EE81E75996F861A1B52600CBC267A2B2E40EE174C7D24AE5E5781C190799D3903A32E40921AC2BCFD61DBA8011C4D039F7CB00F50C643E08D4B5410614F4508CBB491AC5EAB89CA8DCF78A4C422198D24E805EC23342CA1061956F21F2C335883AAD24F5B4E42A1D7B25437E7301D71051819D96B011AE0FC351052A39D2A4745968EA3518D74E44C3ADC934E75D57A87ADE95E8D85638D9717733F09239E5AF42CC768B6D819CED26B151C01852DE0541D95DD99600F2C579DF082ADDD80D04657EF256082A5A6C0704154DF2E6085A86486CE75F8A97EC1B3DC540CDF68FF55673ED809B823DDE1C35D95DC276F2E510993539D5C9EF14A2A118BFF988D88793C991EC751B0C523AE3C488989810A6AA512E16F4257CD65DAF8872EC869531575F1E11059F432CC650EB0B80D63157CC2282C8ABAA0DB05E791DA0ECEBBC02A44C620FE57870BD553BE656F580E581F05658761876C096ECD161715E49000D12A9CA35D31C1A0DCDC910F272B7BACF5563A8E8A46C1B56D7AF068E8651F271200EDCC228A62F2DAA616C6E177DEE178D81B1C9683150C75DC060243E98D1ADC4B9DD6D259D8BDBC7C91D6425C9213558890F66742B318E761B49E366F570B4069948748AB6BCD8F8EED56D21DD69DFE7BC1F6423E9586F60551BB3B5697858AD3AC9AB7753AFCC0D650FA69E2189747A03D6EB10AD1A49A5EC89332F334A673FCCFBE759C62586E7679A74CB4ADB4A124E52B082D25B229A687A15A619BE00182C008D31CE825869A6F55B0C672017D9744DD4B9E3E7226F4DFF5DF6D08794055746757E19CC1519644C3DE8223EAB591DFAEE0ECDF30511483521E15912E531323BF4E6DE6590B7D9BF7CA2224C3D497FC561570CA65CAB44EB5BCD8DBA658C374F9587B8F95C99214C16E7179EA6CD4D9720330A8F8936514C71D29DCD9DC9D3EB3B5FB223DE7FBA3A115E6775B174BC26007BD413A391D1A58035DED9A38A49774D4CF18D3DA29459D784945EF5D0B2993F2728D97CB1119EC1A2FA16F612D48CB926BAFAD61E59933BD784D6BCDE005BA3B3FCCE1E55935ED704D6BCB6C7AE73EDE47D748FCF2FE3ED6EC801560611869D60068CD7D914C739001B19414DA0C6E39E582CE7470163CFF79250C68BF0104295E1A36184326098F71F219D46DC7E5A7380CC98428E8CB0C5B7E50899F1FAD17647E4E077C7E18CD05F8E2D6860EAF8ADDF5FC4DBB9382DA618454FC7B7EAD7D3BDA56108F96C6E0D47A8C6B39A3A06A2FF9CD3D06163F58CDFB5366656AB5EC4030CC2E273D1754613ADAA1427AB41CB011B95354ADC466E5271B68ADF48719A298B997457042B4194B289EBF0ED90B8E92F1986F1843698CCFF8866510829D978831B80C225CC7099F5E61E1F1E1D4B15C5FB53DDEB65591069624EA6125F71E2B690BE879E40EA3F82544D9C1C50015B832A5FEBAE51009FCFDC7F15BD4E8B9824FD57F1F880D0FB330AFFC8C98B873487CEBFD59A95717235DBA3267B5ABF696FD5EB7F7E29BB1E3877295931A7CEA164CB4D6658ACEAECA54DD97580361BD77ABEDD052594506A51A505B179C5E422C4A3544B722DFF1A83E7BFF5554D5B1139085153F53816DE28263455356E8265AC680CC84F5C5434F61BACBEC27113D58CD58D21EA0F26D736DA6F43BCE738478D66366BFFAB313C8BCDB1EA28EE8F6DD335A0A26DEB1B62585D14DA4A0006D57EECFA6454AAC2066D336AE5570FB801D55D1B30E38D15468D76366BEA9E46C3DE25B5FB163B7D1B9B89EE3C19B0D4462B22DA97BAA13A8171B7E542DBAC106AF924FF4D1506ED412ABB261375F7E53FDBE69AE9EBD99E27AAF72BF2D933B2B1FCE4DD97F26C9B6CA62F6B7B4EB65E053B7BC6B55D9D9F3B669AF511BA5744EB28BF697E35EB5902331663476287F1E3EA6BD76759896CFD8C373A2DA44F60FC32AEE4FCCAB3A92F922997747D41D07AF1E5A7AF3337582464F2CB7B46F91750F449E92661F51E62145837310B3567C3CB8215762A729516ED62FB8D95F981AD83656DDAC51A6A48DA6433B7A055366BD32EDB509921CBE63B8B22B0FA06AF91624ADDDF45E994B6F042570FD77176B6253DBFA5522961241DA57D5DF7A4D634BAB75419358A5184A56948057B3B8550A39864174B67C4C22771F36BA675F52871EA63C8718A9BD46418E29734FE883EF18EB2705543D0041F047DC123A9DA5CA365C27D234923DE448A67DE400C02E2AE9CA7385C021F93D7F40B5CF187938AEF0AF43BF00206D7E82EC7EB1C9321C37811090179EA60B5C92F2AB8449DA7776BFA2B1B630844CD907EB9BC433FE76114547A5F6962D60608EAB9B120319D4B4C83C5AB970AE936419640CC7C95C3F900E37544C0B23B34074F7013DD08F53EC215F05FEA2F142690EE8910CD3EBD08C12A0571C630EAFEE427E170103FFFF87FB72B264A4B620000, N'6.1.3-40302')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201612050341494_AddTenant', N'Mvc5StarterKit.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDD6EE33616BE2FB0EF20E86AB748ADFCEC0C6603A745EA246DD0C90FC69962EF06B4443BC248942B516982C53ED95EEC23ED2B2C299192F8275196623B8302C55822BF7378F8913C3C3A27FFFBCF7FA73F3DC791F304D32C4CD0997B3439741D88FC2408D1EACCCDF1F2870FEE4F3FFEE5BBE965103F3BBFF37627B41DE989B233F711E3F5A9E765FE238C413689433F4DB26489277E127B2048BCE3C3C37F7847471E24102EC1729CE9A71CE13086C50FF27396201FAE710EA29B248051C69E9337F302D5B90531CCD6C08767EECD93FF6E8E418A61FA5B88276507D7398F42409499C368E93A00A104034C543DFD9CC1394E13B49AAFC903103DBCAC2169B7045106D9104EEBE6B6A3393CA6A3F1EA8E1CCACF339CC43D018F4E98793CB9FB4646762BF311035E1243E3173AEAC28867EE75008B479F9288184016783A8B52DA98D8B912719EAD6F219EF08E9312F22A25707F26E9D74913F1C0B1EE7750D1E9787248FF3B70667984F3149E2198E3144407CE7DBE8842FF37F8F2907C85E8ECE468B13CF9F0EE3D084EDEFF1D9EBC6B8E948C95B4131E9047F769B28629D10D2EABF1BB8E27F6F3E48E55B7469FD22A844B6465B8CE0D78FE08D10A3F923573FCC175AEC26718F0278C5C9F51481612E984D39CFCBCCDA3082C2258BDF75A65D2FFB7483D7EF77E14A9B7E0295C15532FC9270B2725EBEA138C8AB7D963B82E979730DF5F58B3AB3489E96F915FE5DB2FF3244F7D3A98C4D8E401A42B8845EDA65E4D5E2B4A53A8F169CD51F79FDA545395DEDAA674409BAC042E62DBAB81EBFBBA72AD1977BE5E93C92BA8452DD24A38DD7935910008B7846635818E6C0984C8C0BEE5FDF032066134C286682185B823CB308D6135CA9F13423F807AEB7C0FB28CEC07C1AF207B6C519DFC7304D5E7D0CF534253C2A278FDEAD2EE1F13046FF37841D9BF3D59A34DCDC39FC915F071925E22DA6B30DEC7C4FF9AE4F812051700C3CFD8E780F4E74318DB038CA2CEB9EFC32CBB226486C12C21DE3607BC46F8E4B8371CDDA376ED90CC2210C67A8F44DA4DBFF0A6B557A26FA1782686663AEFA44DD58FC92A4476AAF2A66655CB169DAAB2667D55A560769AB29666458B069D7A96ADFAAAF90011A024B6D09337352B5AB6E8D494351BCD352DC834BE6F5AC0EEBF733ACCCF306D5B0D33CEC9660E7F8108A664C70DEE0126AE14AA67C0668BDB855F534C1F15FAEAC76821E97710E5638BDA683514FBD5F8ABA180DDFFD550A8491E3F850175A02C6E6CBC3181B76AAFBF0C76AF3949B36D2F076198DB16BE9D3DC07AB9F093ACEFE5B2ECF766EF94AFBFD777B8B263EE81E75996F861A1B52600CBC267A2B2E40EE174C7D24AE5E5781C190799D3903A32E40921AC2BCFD61DBA8011C4D039F7CB00F50C643E08D4B5410614F4508CBB491AC5EAB89CA8DCF78A4C422198D24E805EC23342CA1061956F21F2C335883AAD24F5B4E42A1D7B25437E7301D71051819D96B011AE0FC351052A39D2A4745968EA3518D74E44C3ADC934E75D57A87ADE95E8D85638D9717733F09239E5AF42CC768B6D819CED26B151C01852DE0541D95DD99600F2C579DF082ADDD80D04657EF256082A5A6C0704154DF2E6085A86486CE75F8A97EC1B3DC540CDF68FF55673ED809B823DDE1C35D95DC276F2E510993539D5C9EF14A2A118BFF988D88793C991EC751B0C523AE3C488989810A6AA512E16F4257CD65DAF8872EC869531575F1E11059F432CC650EB0B80D63157CC2282C8ABAA0DB05E791DA0ECEBBC02A44C620FE57870BD553BE656F580E581F05658761876C096ECD161715E49000D12A9CA35D31C1A0DCDC910F272B7BACF5563A8E8A46C1B56D7AF068E8651F271200EDCC228A62F2DAA616C6E177DEE178D81B1C9683150C75DC060243E98D1ADC4B9DD6D259D8BDBC7C91D6425C9213558890F66742B318E761B49E366F570B4069948748AB6BCD8F8EED56D21DD69DFE7BC1F6423E9586F60551BB3B5697858AD3AC9AB7753AFCC0D650FA69E2189747A03D6EB10AD1A49A5EC89332F334A673FCCFBE759C62586E7679A74CB4ADB4A124E52B082D25B229A687A15A619BE00182C008D31CE825869A6F55B0C672017D9744DD4B9E3E7226F4DFF5DF6D08794055746757E19CC1519644C3DE8223EAB591DFAEE0ECDF30511483521E15912E531323BF4E6DE6590B7D9BF7CA2224C3D497FC561570CA65CAB44EB5BCD8DBA658C374F9587B8F95C99214C16E7179EA6CD4D9720330A8F8936514C71D29DCD9DC9D3EB3B5FB223DE7FBA3A115E6775B174BC26007BD413A391D1A58035DED9A38A49774D4CF18D3DA29459D784945EF5D0B2993F2728D97CB1119EC1A2FA16F612D48CB926BAFAD61E59933BD784D6BCDE005BA3B3FCCE1E55935ED704D6BCB6C7AE73EDE47D748FCF2FE3ED6EC801560611869D60068CD7D914C739001B19414DA0C6E39E582CE7470163CFF79250C68BF0104295E1A36184326098F71F219D46DC7E5A7380CC98428E8CB0C5B7E50899F1FAD17647E4E077C7E18CD05F8E2D6860EAF8ADDF5FC4DBB9382DA618454FC7B7EAD7D3BDA56108F96C6E0D47A8C6B39A3A06A2FF9CD3D06163F58CDFB5366656AB5EC4030CC2E273D1754613ADAA1427AB41CB011B95354ADC466E5271B68ADF48719A298B997457042B4194B289EBF0ED90B8E92F1986F1843698CCFF8866510829D978831B80C225CC7099F5E61E1F1E1D4B15C5FB53DDEB65591069624EA6125F71E2B690BE879E40EA3F82544D9C1C50015B832A5FEBAE51009FCFDC7F15BD4E8B9824FD57F1F880D0FB330AFFC8C98B873487CEBFD59A95717235DBA3267B5ABF696FD5EB7F7E29BB1E3877295931A7CEA164CB4D6658ACEAECA54DD97580361BD77ABEDD052594506A51A505B179C5E422C4A3544B722DFF1A83E7BFF5554D5B1139085153F53816DE28263455356E8265AC680CC84F5C5434F61BACBEC27113D58CD58D21EA0F26D736DA6F43BCE738478D66366BFFAB313C8BCDB1EA28EE8F6DD335A0A26DEB1B62585D14DA4A0006D57EECFA6454AAC2066D336AE5570FB801D55D1B30E38D15468D76366BEA9E46C3DE25B5FB163B7D1B9B89EE3C19B0D4462B22DA97BAA13A8171B7E542DBAC106AF924FF4D1506ED412ABB261375F7E53FDBE69AE9EBD99E27AAF72BF2D933B2B1FCE4DD97F26C9B6CA62F6B7B4EB65E053B7BC6B55D9D9F3B669AF511BA5744EB28BF697E35EB5902331663476287F1E3EA6BD76759896CFD8C373A2DA44F60FC32AEE4FCCAB3A92F922997747D41D07AF1E5A7AF3337582464F2CB7B46F91750F449E92661F51E62145837310B3567C3CB8215762A729516ED62FB8D95F981AD83656DDAC51A6A48DA6433B7A055366BD32EDB509921CBE63B8B22B0FA06AF91624ADDDF45E994B6F042570FD77176B6253DBFA5522961241DA57D5DF7A4D634BAB75419358A5184A56948057B3B8550A39864174B67C4C22771F36BA675F52871EA63C8718A9BD46418E29734FE883EF18EB2705543D0041F047DC123A9DA5CA365C27D234923DE448A67DE400C02E2AE9CA7385C021F93D7F40B5CF187938AEF0AF43BF00206D7E82EC7EB1C9321C37811090179EA60B5C92F2AB8449DA7776BFA2B1B630844CD907EB9BC433FE76114547A5F6962D60608EAB9B120319D4B4C83C5AB970AE936419640CC7C95C3F900E37544C0B23B34074F7013DD08F53EC215F05FEA2F142690EE8910CD3EBD08C12A0571C630EAFEE427E170103FFFF87FB72B264A4B620000, N'6.1.3-40302')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201612061005191_UpdateTenant', N'Mvc5StarterKit.Models.ApplicationDbContext', 0x1F8B0800000000000400E55CDD6EE3B815BE2FD0771074D516593B3F9DC134B0779175926DB0931F8C338BDE05B4443BC2489457A2B2098A3E592FFA487D85921229897F1265CBB2B3C5008348243F1E1E7E24CFA1CEF17FFFFD9FC90FAF51E8BCC0240D6234754F46C7AE039117FB015A4DDD0C2FBFFBE4FEF0FD1FFF30B9F2A357E7175EEF8CD6232D513A759F315E9F8FC7A9F70C23908EA2C04BE2345EE291174763E0C7E3D3E3E3BF8D4F4EC69040B804CB71265F32848308E60FE47116230FAE7106C2DBD88761CADE9392798EEADC8108A66BE0C1A97BFBE27D9863906098FC1CE051D1C0752EC2001061E6305CBA0E4028C6001351CFBFA6708E9318ADE66BF202848F6F6B48EA2D4198423684F3AABAED688E4FE968C655430EE565298EA38E8027674C3D63B9F9464A764BF511055E1145E3373AEA5C8953F7C687F9AB2F7148142077783E0B135A99E8B9ECE2225DDF413CE20D4705E47542E07E8B936FA33AE29163DDEEA8A4D3E9E898FE3B72665988B3044E11CC7002C223E7215B8481F7337C7B8CBF41343D3B592CCF3E7DF808FCB38F7F85671FEA23256325F58417E4D54312AF61426483CB72FCAE3316DB8DE58665B35A9B422B844B6465B8CE2D78FD0CD10A3F933573FAC975AE8357E8F3378C5C5F514016126984938C3CDE65610816212CCBC78D7DD2FF1B7A3DFDF0B1975EEFC04BB0CAA75EEA9F2C9C84ACAB2F30CC4BD3E7605D2C2F61BE9F58B5EB248EE8B3C8AFA2F4691E67894707131BAB3C826405B128DD645C91D78AD214AA7F5A73D4C3A7369554A5B7B62A1DD0262B817731F46AE0F2EEB65F6BC63D4204106EE499EE981A15ED089384D28A2E27B674416418C3EF7E37089F9D6A745853C01CC709FC092298000CFD0780C91051B544B7DCF5C89F56B3BCD1A45EACD744C5F93028CDBBCFAE04F06EA779B8655DAC87A7768635C35C4520087B382C2D7A21A6EA324822584AFC634CB626803ACBFC00D2949C15FEDF41FADC33E3D5CEE6D0CB12C27642C668BDF3DE1E9E6304EFB2684117D1707DF536358FBFC5D7C0231BD915A2ADB6C6FB1C7BDFE20C5F21FF926C8A5FB1C701E9E36310D903F422CE85E7C134BD266486FE2CCEE839B6CDE2A35BDDBE8DD5590882486FAD4A9BF213AF5A59ACFA1A8AD56AA8A6B35C9B44FD1CAF0264272AAF6A16B5A8D12A2AABD655540A662729AB691634AFD02A6751ABAB98DC18B3909357350BCA4EA4364959B5DEDC969C4CFDFB2D39ECE13B2E876E95EECBEBC9A78F76BAF36334EFE91710667BB3BEEBB4CDF7ABFE57430E7BF8AB211793BC7E097C6A405978F3BC3281B7AAAFBF28685F739264432F07619843773ECC1E605A2E17691A7B41BE0A34F7B8EC164E949F989B4EFB955C311AF95A8F0C8C103DA0671E7943C6E6CAA4BA47973084183A175E71CF3D03A9077C558D64407E07C1F889AA11ACBADE1385FB8BD227613A4C682340FDB594ACD40061755904C80BD6206CD592D4D2F208A3632FFB904B2EE11A22DA61AB266C3AD7DFE65101CA7EA44969D3D0645C635C33110D06B669CEDBACED6ADE95FB984138D962E61B78C9ECB79D10B359630390B359253602186FA6F74150E656D91240F6B10E8DA0927367202833A90621A8A8B13D105454C9BB2368E14DDBCEBFE45A1F1A3D459F7EF863BD515D7BE0A6A08F77474D7681623BF9F26D8A3539D5C96FED4443317EDDB343E2F7C24971047B20A5384F3602D4BEDC0C40CCC229226D30690113959C970B5A085F75DF64C908D9C541CA7C309959147C0EB178ED5939625A0749A1A70822EF6E4D80D50ED8025A285D07C599DE02C0A23594E6CA6AEC303A7EA1DE383C661F7780E597DF8DB0CCAA91606B2452B1EB512BB58AE6D81699DD567E7539B2924ECA2AB172836B381A46C9BB9338700BA5983E8EA88AB1F1F2BAF879B581B1C96850508B4F6650121F4CEF5AE2D46CD792CED5E8E26C6CA525C9313068890FA6772D318EB62B4963EE763078B75291689C0EBCD8F89EDDAE219DD5D5C5EEDA4A47927955C32A8F236BD5F0EBCDF2242FCB26E322D497BD988C0D31C1935BB05E0768558B11666F9C7911203CFB6EDE3D6C362A30C69E4044D9EE287BC2710256502A255D1349AF8324C597008305A097BB333F52AA69ED16C3C9C8BBAC9B26EADCF12392D7A67F172DF4914A8229A39A7B0CE69A0C32A24663FEF94CB33AF4CD1D1AB60D429068BED8CDE2308B90D98635B72E420CEAED8B372AC2642CC9AFD8A78AC2142B5FD4BED5DCA85B467FF3545A889BCF9519C2A471EE78D6756E7246CD28FC6EBA8E62BAAFDEDBDCF19D6CFB19D36FD516F3646AF87FBA9A4CB677D7F9903D9BEE13D38AB09B19AA39D8759006BFDB8CC5E223EB38EC55478C5A889D02562BB34715A320EB9862893DA214EA5887948A3A48590F681484AC176C8467D0A8BE4607F628218C028994527B644D30631D5A53BC01B64666B9CC1E5513EF5807D614DB6357C18FF2297960FBA9C631EED73C296E78B6B34F0C18BBD960FB316F6A215A75A0DAEB8E582C084B0163EF0F9250C66B8E6D0855DCED6D4728038679FF11E29BC4EDA73128CB8C29042D095B7C53D09619AF1B6D774A0EC59B97AB94BD975EBDE4BD4F9827DD9EF6ABB8D64515D7E16A24C7FB5B8A6134A21546F35FC3591840BA99F30AB700054B98E22250CF3D3D3E3995D2860F2785779CA67EA8B98930E5F18A733640CC2D7A0189F70C1235026E8B34D70A54F98673837CF83A75FF99B73ACF6FAAE85FF9EB23E726FD8A825F3352F09864D0F9979A7CD04FDA5FB32F7DA0499AF65ABDF9C753D1F4C8B94FC88A39778E255D6E32C362EA6627698AA65B48D335A173F07514D01DAA353ABD8735F5A708BCFEB98ED463A2E4FBDD7D94FCC3409BD5AB32B36C2892739BBC45EDA0A4CD6BF334C545807B4951ECC02715509B86B815A226D5B02FBC5E54684A25DC04CB9846E893479CA711761BAC3EAD7013D18C2985F97ADA32A1D0FEC8E02DF76816685CD8777B8E1C961DA124436DB5D0D584A75D9C942DBEE8EF321FA8B7C35993EED31BF63EA9BDF31C9F4349EBA9E2DAF69BCD3364024FC397DADF55DECE01449A6BE20BF79F9D3334D74CD7EE071E47DE2D07E7C0C8C6A24EF79F693334D94C57F2074EB64EF93407C6B57D9D9F7B669AF5117A50446BC98EE1019FC366A8F4C2F49E58658C8EDA7586CBBBC969514348E5D9D4A74C145B41E55868ADFFE29BD9D4F5173199FCC241297E03431FE36CEAACDA7B8C1D5655CC9D9A83ABE58EF93251BAE305BA4E4CE1C932B8427DA517A546F398BA299219A78D9A64759ABB35E43B34F5CD6C95C6BE599DE6BE0D5904FBC8C4D1C6F1EBD2AB5ACEDCA618DAF79479238CA425D1ABCDBF6A8CDB794F8936BD2845583D86D893F79357D38B4AF6B1747ACCA311CF997A5C76878C992E8AEC2757468DA2217649ED27F689759406AB0A82FEE03E829E609194756ED032E6B6912411AF225DA6DE420C7C62AE5C243858020F9362FA3928FF81A4FC8A9D7E945C40FF06DD67789D613264182D42E16E9A1A584DFDE70941A2CC93FB357D4AFB18021133A09FD1EED18F5910FAA5DCD79AEB5B0304B5DCD8C7173A97987E8459BD95487731B20462EA2B0DCE4718AD430296DEA33978819BC846A8F719AE80F7565DD69B40DA274254FBE43200AB044429C3A8DA9347C2613F7AFDFE7FF966337B69620000, N'6.1.3-40302')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'732E6E70-84B9-4531-A75A-E729E0F9D941', N'Employee')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'7EA0B2FF-5A45-4E70-8F80-887E100127C1', N'Manager')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'91FF0C14-7E34-4C71-974B-F2362F1BFEF6', N'VP')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'A255F9B0-F2CB-4E5B-8D2A-05CECE4889A2', N'Administrator')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'446f596a-b7ac-4d2e-9814-b96249e10796', N'7EA0B2FF-5A45-4E70-8F80-887E100127C1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'49529006-1142-40be-bacb-55793909d7dd', N'7EA0B2FF-5A45-4E70-8F80-887E100127C1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4d83f471-24c2-4f7c-8f84-f5ac195cb65a', N'732E6E70-84B9-4531-A75A-E729E0F9D941')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'5de4e37e-ef25-4979-8cbe-303ea3eb2554', N'732E6E70-84B9-4531-A75A-E729E0F9D941')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'95087a84-a231-430b-a339-e72054888bb1', N'A255F9B0-F2CB-4E5B-8D2A-05CECE4889A2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a6155e91-f367-422a-9c4e-af19fe50e3ba', N'732E6E70-84B9-4531-A75A-E729E0F9D941')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'bada6fa4-2a35-4868-b6b0-7567b659f719', N'7EA0B2FF-5A45-4E70-8F80-887E100127C1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd36d16e8-1246-481b-b8e0-fa1a0205f150', N'91FF0C14-7E34-4C71-974B-F2362F1BFEF6')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'e704cd24-271f-4edc-80de-e88e0af3b5f3', N'91FF0C14-7E34-4C71-974B-F2362F1BFEF6')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'eae7c07f-3a3d-494e-ae0f-ceb7e513dcad', N'7EA0B2FF-5A45-4E70-8F80-887E100127C1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f6c80567-6fdc-4145-a527-a4b5a9b1aad7', N'91FF0C14-7E34-4C71-974B-F2362F1BFEF6')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Tenant_Id]) VALUES (N'446f596a-b7ac-4d2e-9814-b96249e10796', N'manager@natwr.com', 0, N'ADFoIj+1YECZ3N2jLRiz6urUkZObKIl2aFJDbK4ARdf8T3q2WhFpexNzbgT0o3l9fQ==', N'c7cb2b5c-9eeb-455a-a54a-93ddc4e306f3', NULL, 0, 0, NULL, 1, 0, N'manager@natwr.com', 3)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Tenant_Id]) VALUES (N'49529006-1142-40be-bacb-55793909d7dd', N'manager@deldg.com', 0, N'ADFoIj+1YECZ3N2jLRiz6urUkZObKIl2aFJDbK4ARdf8T3q2WhFpexNzbgT0o3l9fQ==', N'68702f74-bd3c-4d10-b8b4-a04490af978e', NULL, 0, 0, NULL, 1, 0, N'manager@deldg.com', 2)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Tenant_Id]) VALUES (N'4d83f471-24c2-4f7c-8f84-f5ac195cb65a', N'employee@retcl.com', 0, N'ADFoIj+1YECZ3N2jLRiz6urUkZObKIl2aFJDbK4ARdf8T3q2WhFpexNzbgT0o3l9fQ==', N'f8dcd354-0826-4f82-89e1-63ef0457b699', NULL, 0, 0, NULL, 1, 0, N'employee@retcl.com', 4)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Tenant_Id]) VALUES (N'5de4e37e-ef25-4979-8cbe-303ea3eb2554', N'employee@deldg.com', 0, N'ADFoIj+1YECZ3N2jLRiz6urUkZObKIl2aFJDbK4ARdf8T3q2WhFpexNzbgT0o3l9fQ==', N'561cf2a3-4e17-480c-9c12-512347d40871', NULL, 0, 0, NULL, 1, 0, N'employee@deldg.com', 2)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Tenant_Id]) VALUES (N'693c15e5-918b-494c-8197-e4c10f4af46d', N'johndoe@izenda.com', 0, N'ADFoIj+1YECZ3N2jLRiz6urUkZObKIl2aFJDbK4ARdf8T3q2WhFpexNzbgT0o3l9fQ==', N'659b633a-a151-401d-9e0f-f3efa873f5f8', NULL, 0, 0, NULL, 1, 0, N'johndoe@izenda.com', 1)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Tenant_Id]) VALUES (N'93622e07-51e6-4a38-86d8-07e05142c28e', N'testdeldg@system.com', 0, N'ADFoIj+1YECZ3N2jLRiz6urUkZObKIl2aFJDbK4ARdf8T3q2WhFpexNzbgT0o3l9fQ==', N'33b5aca3-ef60-409e-98cc-96229935c7b3', NULL, 0, 0, NULL, 1, 0, N'testdeldg@system.com', 4)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Tenant_Id]) VALUES (N'93b5dc2d-3ed6-4a8a-93ca-ea7136418fc2', N'joedoe1@system.com', 0, N'ABBmugdCq2v//yc4a41thYzRe546tI2oMydHyaHiJ6F89r57bwtJ3Jr9ruVySeSx7w==', N'a9d23677-900b-4f5d-b4c3-83d7e9642bda', NULL, 0, 0, NULL, 1, 0, N'joedoe1@system.com', 1)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Tenant_Id]) VALUES (N'95087a84-a231-430b-a339-e72054888bb1', N'IzendaAdmin@system.com', 0, N'ADFoIj+1YECZ3N2jLRiz6urUkZObKIl2aFJDbK4ARdf8T3q2WhFpexNzbgT0o3l9fQ==', N'fce856a8-bb02-474f-a371-fc8db7e82d5e', NULL, 0, 0, NULL, 1, 0, N'IzendaAdmin@system.com', 1)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Tenant_Id]) VALUES (N'a6155e91-f367-422a-9c4e-af19fe50e3ba', N'employee@natwr.com', 0, N'ADFoIj+1YECZ3N2jLRiz6urUkZObKIl2aFJDbK4ARdf8T3q2WhFpexNzbgT0o3l9fQ==', N'1047ba84-ab9f-40ad-ac75-9e866ed01283', NULL, 0, 0, NULL, 1, 0, N'employee@natwr.com', 3)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Tenant_Id]) VALUES (N'b723d397-2317-4b3c-822c-592e0045cc7b', N'myemail@systm.com', 0, N'ALBFBvLF6SYGzUxKv1HCDtcrTF9/3Q7MT7W7ZZPwluDp/XjLs/lWJ+eGE+DEDzy45Q==', N'60ea33da-5932-4f8e-8e5e-a4dda3bb990c', NULL, 0, 0, NULL, 1, 0, N'myemail@systm.com', 3)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Tenant_Id]) VALUES (N'bada6fa4-2a35-4868-b6b0-7567b659f719', N'natwr@natwr.com', 0, N'AMctGcxJll3muS6d1ch65470x0Qp7LPQa3chVo3gO760jwT7lsUZgE45uYr1xcW5tg==', N'5a0bc273-efc3-4ac1-be09-2a72437d2915', NULL, 0, 0, NULL, 1, 0, N'natwr@natwr.com', 3)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Tenant_Id]) VALUES (N'd36d16e8-1246-481b-b8e0-fa1a0205f150', N'vp@deldg.com', 0, N'ADFoIj+1YECZ3N2jLRiz6urUkZObKIl2aFJDbK4ARdf8T3q2WhFpexNzbgT0o3l9fQ==', N'ac216a19-668d-4e3e-9d82-73d1b9bd29ca', NULL, 0, 0, NULL, 1, 0, N'vp@deldg.com', 2)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Tenant_Id]) VALUES (N'e704cd24-271f-4edc-80de-e88e0af3b5f3', N'vp@retcl.com', 0, N'ADFoIj+1YECZ3N2jLRiz6urUkZObKIl2aFJDbK4ARdf8T3q2WhFpexNzbgT0o3l9fQ==', N'4b27ca91-549e-4024-9b22-44f17baa33b1', NULL, 0, 0, NULL, 1, 0, N'vp@retcl.com', 4)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Tenant_Id]) VALUES (N'eae7c07f-3a3d-494e-ae0f-ceb7e513dcad', N'manager@retcl.com', 0, N'ADFoIj+1YECZ3N2jLRiz6urUkZObKIl2aFJDbK4ARdf8T3q2WhFpexNzbgT0o3l9fQ==', N'6743e1df-7571-4ca4-9004-540f3c27f280', NULL, 0, 0, NULL, 1, 0, N'manager@retcl.com', 4)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Tenant_Id]) VALUES (N'f6c80567-6fdc-4145-a527-a4b5a9b1aad7', N'VP@natwr.com', 0, N'ADFoIj+1YECZ3N2jLRiz6urUkZObKIl2aFJDbK4ARdf8T3q2WhFpexNzbgT0o3l9fQ==', N'bcdbcbd6-74c3-4e2d-9fed-b5ae3c0d32d4', NULL, 0, 0, NULL, 1, 0, N'VP@natwr.com', 3)
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName], [Tenant_Id]) VALUES (N'fb1dbcc2-7780-47c9-98c1-d88faa62dfab', N'joedoe@system.com', 0, N'AKbNLAQXJ5tBuXzUH4E/zsnPh7+HKzkzZQEwEHsqcxGeYZCezrCyGTQUGq3qAfmyfA==', N'b737c00f-9984-4b39-8a09-b72919811d41', NULL, 0, 0, NULL, 1, 0, N'joedoe@system.com', 1)
SET IDENTITY_INSERT [dbo].[Tenants] ON 

INSERT [dbo].[Tenants] ([Id], [Name]) VALUES (1, N'System')
INSERT [dbo].[Tenants] ([Id], [Name]) VALUES (2, N'DELDG')
INSERT [dbo].[Tenants] ([Id], [Name]) VALUES (3, N'NATWR')
INSERT [dbo].[Tenants] ([Id], [Name]) VALUES (4, N'RETCL')
SET IDENTITY_INSERT [dbo].[Tenants] OFF
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUsers_dbo.Tenants_Tenant_Id] FOREIGN KEY([Tenant_Id])
REFERENCES [dbo].[Tenants] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_dbo.AspNetUsers_dbo.Tenants_Tenant_Id]
GO
USE [master]
GO
ALTER DATABASE [Mvc5StarterKit] SET  READ_WRITE 
GO
