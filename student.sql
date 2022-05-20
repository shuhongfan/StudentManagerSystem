/*
 Navicat Premium Data Transfer

 Source Server         : 192.168.120.20
 Source Server Type    : SQL Server
 Source Server Version : 15004198
 Source Host           : 192.168.120.20:1433
 Source Catalog        : student
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15004198
 File Encoding         : 65001

 Date: 20/05/2022 11:12:20
*/


-- ----------------------------
-- Table structure for class
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[class]') AND type IN ('U'))
	DROP TABLE [dbo].[class]
GO

CREATE TABLE [dbo].[class] (
  [claid] bigint  IDENTITY(1,1) NOT NULL,
  [claname] varchar(30) COLLATE Chinese_PRC_CI_AS  NULL,
  [term] varchar(30) COLLATE Chinese_PRC_CI_AS  NULL,
  [teacher] varchar(30) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[class] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of class
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[class] ON
GO

INSERT INTO [dbo].[class] ([claid], [claname], [term], [teacher]) VALUES (N'1', N'test1', N'2022年春季学期', N'test1'), (N'2', N'test2', N'2022年春季学期', N'test2'), (N'3', N'代码阅读之道', N'2022年春季学期', N'test3'), (N'4', N'python语言的学习', N'2022年春季学期', N'test4'), (N'5', N'谈修养', N'2022年春季学期', N'test5'), (N'6', N'UML那些事', N'2022年春季学期', N'test9'), (N'7', N'计算机网络', N'2022年春季学期', N'张三')
GO

SET IDENTITY_INSERT [dbo].[class] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for manager
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[manager]') AND type IN ('U'))
	DROP TABLE [dbo].[manager]
GO

CREATE TABLE [dbo].[manager] (
  [manid] bigint  IDENTITY(1,1) NOT NULL,
  [manname] varchar(30) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [role] varchar(30) COLLATE Chinese_PRC_CI_AS DEFAULT ('管理员') NULL,
  [manpasswd] varchar(30) COLLATE Chinese_PRC_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[manager] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of manager
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[manager] ON
GO

INSERT INTO [dbo].[manager] ([manid], [manname], [role], [manpasswd]) VALUES (N'1', N'admin', N'管理员', N'admin'), (N'4', N'root1', N'管理员', N'root'), (N'5', N'root2', N'管理员', N'root2'), (N'6', N'root4', N'管理员', N'root4'), (N'7', N'root3', N'管理员', N'root3'), (N'8', N'test9', N'管理员', N'test9'), (N'9', N'root', N'管理员', N'root')
GO

SET IDENTITY_INSERT [dbo].[manager] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for sc
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sc]') AND type IN ('U'))
	DROP TABLE [dbo].[sc]
GO

CREATE TABLE [dbo].[sc] (
  [scid] bigint  IDENTITY(1,1) NOT NULL,
  [stuid] bigint  NULL,
  [claid] bigint  NULL,
  [grades] bigint  NULL
)
GO

ALTER TABLE [dbo].[sc] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of sc
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[sc] ON
GO

INSERT INTO [dbo].[sc] ([scid], [stuid], [claid], [grades]) VALUES (N'8', N'1', N'1', N'12'), (N'9', N'1', N'2', N'90'), (N'10', N'1', N'4', N'90'), (N'12', N'5', N'7', N'61'), (N'18', N'7', N'7', N'99'), (N'19', N'7', N'4', N'99'), (N'20', N'7', N'5', N'99')
GO

SET IDENTITY_INSERT [dbo].[sc] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for sctime
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sctime]') AND type IN ('U'))
	DROP TABLE [dbo].[sctime]
GO

CREATE TABLE [dbo].[sctime] (
  [sctimeid] bigint  IDENTITY(1,1) NOT NULL,
  [claid] bigint  NULL,
  [sctime] varchar(30) COLLATE Chinese_PRC_CI_AS  NULL,
  [location] varchar(30) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[sctime] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of sctime
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[sctime] ON
GO

INSERT INTO [dbo].[sctime] ([sctimeid], [claid], [sctime], [location]) VALUES (N'1', N'1', N'星期一第一节', N'A102'), (N'2', N'1', N'星期一第二节', N'A102'), (N'3', N'2', N'星期一第三节', N'A102'), (N'4', N'3', N'星期一第一节', N'A104'), (N'5', N'3', N'星期一第二节', N'A104'), (N'6', N'4', N'星期三第一节', N'A102'), (N'7', N'4', N'星期三第二节', N'A102'), (N'8', N'5', N'星期一第一节', N'A203'), (N'9', N'5', N'星期一第二节', N'A203'), (N'10', N'6', N'星期一第三节', N'A103'), (N'11', N'6', N'星期一第四节', N'A103'), (N'12', N'7', N'星期一第三节', N'A202')
GO

SET IDENTITY_INSERT [dbo].[sctime] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for student
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[student]') AND type IN ('U'))
	DROP TABLE [dbo].[student]
GO

CREATE TABLE [dbo].[student] (
  [stuid] bigint  IDENTITY(1,1) NOT NULL,
  [stuname] varchar(30) COLLATE Chinese_PRC_CI_AS  NULL,
  [stuxuehao] varchar(30) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [stupasswd] varchar(30) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [stugrade] varchar(30) COLLATE Chinese_PRC_CI_AS  NULL,
  [stumajor] varchar(30) COLLATE Chinese_PRC_CI_AS  NULL,
  [stusex] varchar(2) COLLATE Chinese_PRC_CI_AS DEFAULT ('男') NULL,
  [stuborn] varchar(30) COLLATE Chinese_PRC_CI_AS  NULL,
  [role] varchar(30) COLLATE Chinese_PRC_CI_AS DEFAULT ('学生') NULL,
  [stuhometown] varchar(30) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[student] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of student
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[student] ON
GO

INSERT INTO [dbo].[student] ([stuid], [stuname], [stuxuehao], [stupasswd], [stugrade], [stumajor], [stusex], [stuborn], [role], [stuhometown]) VALUES (N'1', N'test2', N'201000830090', N'admin', N'三年级', N'工业设计', N'男', N'2022-05-20', N'学生', N'武汉'), (N'2', N'test1', N'201000830091', N'201000830091', N'三年级', N'工业设计', N'男', N'2022-05-20', N'学生', N'孝感'), (N'3', N'test3', N'201000830092', N'201000830092', N'三年级', N'过程装备与控制工程', N'男', N'2022-05-20', N'学生', N'上海'), (N'4', N'test3', N'201000830093', N'201000830093', N'三年级', N'过程装备与控制工程', N'男', N'2022-05-20', N'学生', N'北京'), (N'5', N'test4', N'201000830094', N'201000830094', N'三年级', N'过程装备与控制工程', N'男', N'2022-05-20', N'学生', N'广州'), (N'6', N'test5', N'201000830095', N'201000830095', N'三年级', N'工业设计', N'男', N'2022-05-20', N'学生', N'深圳'), (N'7', N'李四', N'20212361236', N'123456', N'三年级', N'计算机科学与技术', N'男', N'2020-02-26', N'学生', N'武汉')
GO

SET IDENTITY_INSERT [dbo].[student] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for sysdiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sysdiagrams]') AND type IN ('U'))
	DROP TABLE [dbo].[sysdiagrams]
GO

CREATE TABLE [dbo].[sysdiagrams] (
  [name] sysname  NOT NULL,
  [principal_id] int  NOT NULL,
  [diagram_id] int  IDENTITY(1,1) NOT NULL,
  [version] int  NULL,
  [definition] varbinary(max)  NULL
)
GO

ALTER TABLE [dbo].[sysdiagrams] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of sysdiagrams
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[sysdiagrams] ON
GO

SET IDENTITY_INSERT [dbo].[sysdiagrams] OFF
GO

COMMIT
GO


-- ----------------------------
-- procedure structure for sp_upgraddiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_upgraddiagrams]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[sp_upgraddiagrams]
GO

CREATE PROCEDURE [dbo].[sp_upgraddiagrams]
	AS
	BEGIN
		IF OBJECT_ID(N'dbo.sysdiagrams') IS NOT NULL
			return 0;
	
		CREATE TABLE dbo.sysdiagrams
		(
			name sysname NOT NULL,
			principal_id int NOT NULL,	-- we may change it to varbinary(85)
			diagram_id int PRIMARY KEY IDENTITY,
			version int,
	
			definition varbinary(max)
			CONSTRAINT UK_principal_name UNIQUE
			(
				principal_id,
				name
			)
		);


		/* Add this if we need to have some form of extended properties for diagrams */
		/*
		IF OBJECT_ID(N'dbo.sysdiagram_properties') IS NULL
		BEGIN
			CREATE TABLE dbo.sysdiagram_properties
			(
				diagram_id int,
				name sysname,
				value varbinary(max) NOT NULL
			)
		END
		*/

		IF OBJECT_ID(N'dbo.dtproperties') IS NOT NULL
		begin
			insert into dbo.sysdiagrams
			(
				[name],
				[principal_id],
				[version],
				[definition]
			)
			select	 
				convert(sysname, dgnm.[uvalue]),
				DATABASE_PRINCIPAL_ID(N'dbo'),			-- will change to the sid of sa
				0,							-- zero for old format, dgdef.[version],
				dgdef.[lvalue]
			from dbo.[dtproperties] dgnm
				inner join dbo.[dtproperties] dggd on dggd.[property] = 'DtgSchemaGUID' and dggd.[objectid] = dgnm.[objectid]	
				inner join dbo.[dtproperties] dgdef on dgdef.[property] = 'DtgSchemaDATA' and dgdef.[objectid] = dgnm.[objectid]
				
			where dgnm.[property] = 'DtgSchemaNAME' and dggd.[uvalue] like N'_EA3E6268-D998-11CE-9454-00AA00A3F36E_' 
			return 2;
		end
		return 1;
	END
GO


-- ----------------------------
-- procedure structure for sp_helpdiagrams
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagrams]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[sp_helpdiagrams]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagrams]
	(
		@diagramname sysname = NULL,
		@owner_id int = NULL
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		DECLARE @user sysname
		DECLARE @dboLogin bit
		EXECUTE AS CALLER;
			SET @user = USER_NAME();
			SET @dboLogin = CONVERT(bit,IS_MEMBER('db_owner'));
		REVERT;
		SELECT
			[Database] = DB_NAME(),
			[Name] = name,
			[ID] = diagram_id,
			[Owner] = USER_NAME(principal_id),
			[OwnerID] = principal_id
		FROM
			sysdiagrams
		WHERE
			(@dboLogin = 1 OR USER_NAME(principal_id) = @user) AND
			(@diagramname IS NULL OR name = @diagramname) AND
			(@owner_id IS NULL OR principal_id = @owner_id)
		ORDER BY
			4, 5, 1
	END
GO


-- ----------------------------
-- procedure structure for sp_helpdiagramdefinition
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_helpdiagramdefinition]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[sp_helpdiagramdefinition]
GO

CREATE PROCEDURE [dbo].[sp_helpdiagramdefinition]
	(
		@diagramname 	sysname,
		@owner_id	int	= null 		
	)
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		set nocount on

		declare @theId 		int
		declare @IsDbo 		int
		declare @DiagId		int
		declare @UIDFound	int
	
		if(@diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner');
		if(@owner_id is null)
			select @owner_id = @theId;
		revert; 
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname;
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId ))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end

		select version, definition FROM dbo.sysdiagrams where diagram_id = @DiagId ; 
		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_creatediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_creatediagram]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[sp_creatediagram]
GO

CREATE PROCEDURE [dbo].[sp_creatediagram]
	(
		@diagramname 	sysname,
		@owner_id		int	= null, 	
		@version 		int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId int
		declare @retval int
		declare @IsDbo	int
		declare @userName sysname
		if(@version is null or @diagramname is null)
		begin
			RAISERROR (N'E_INVALIDARG', 16, 1);
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID(); 
		select @IsDbo = IS_MEMBER(N'db_owner');
		revert; 
		
		if @owner_id is null
		begin
			select @owner_id = @theId;
		end
		else
		begin
			if @theId <> @owner_id
			begin
				if @IsDbo = 0
				begin
					RAISERROR (N'E_INVALIDARG', 16, 1);
					return -1
				end
				select @theId = @owner_id
			end
		end
		-- next 2 line only for test, will be removed after define name unique
		if EXISTS(select diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @diagramname)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end
	
		insert into dbo.sysdiagrams(name, principal_id , version, definition)
				VALUES(@diagramname, @theId, @version, @definition) ;
		
		select @retval = @@IDENTITY 
		return @retval
	END
GO


-- ----------------------------
-- procedure structure for sp_renamediagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_renamediagram]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[sp_renamediagram]
GO

CREATE PROCEDURE [dbo].[sp_renamediagram]
	(
		@diagramname 		sysname,
		@owner_id		int	= null,
		@new_diagramname	sysname
	
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @DiagIdTarg		int
		declare @u_name			sysname
		if((@diagramname is null) or (@new_diagramname is null))
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT;
	
		select @u_name = USER_NAME(@owner_id)
	
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		-- if((@u_name is not null) and (@new_diagramname = @diagramname))	-- nothing will change
		--	return 0;
	
		if(@u_name is null)
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @theId and name = @new_diagramname
		else
			select @DiagIdTarg = diagram_id from dbo.sysdiagrams where principal_id = @owner_id and name = @new_diagramname
	
		if((@DiagIdTarg is not null) and  @DiagId <> @DiagIdTarg)
		begin
			RAISERROR ('The name is already used.', 16, 1);
			return -2
		end		
	
		if(@u_name is null)
			update dbo.sysdiagrams set [name] = @new_diagramname, principal_id = @theId where diagram_id = @DiagId
		else
			update dbo.sysdiagrams set [name] = @new_diagramname where diagram_id = @DiagId
		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_alterdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_alterdiagram]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[sp_alterdiagram]
GO

CREATE PROCEDURE [dbo].[sp_alterdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null,
		@version 	int,
		@definition 	varbinary(max)
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
	
		declare @theId 			int
		declare @retval 		int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
		declare @ShouldChangeUID	int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid ARG', 16, 1)
			return -1
		end
	
		execute as caller;
		select @theId = DATABASE_PRINCIPAL_ID();	 
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		revert;
	
		select @ShouldChangeUID = 0
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		
		if(@DiagId IS NULL or (@IsDbo = 0 and @theId <> @UIDFound))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1);
			return -3
		end
	
		if(@IsDbo <> 0)
		begin
			if(@UIDFound is null or USER_NAME(@UIDFound) is null) -- invalid principal_id
			begin
				select @ShouldChangeUID = 1 ;
			end
		end

		-- update dds data			
		update dbo.sysdiagrams set definition = @definition where diagram_id = @DiagId ;

		-- change owner
		if(@ShouldChangeUID = 1)
			update dbo.sysdiagrams set principal_id = @theId where diagram_id = @DiagId ;

		-- update dds version
		if(@version is not null)
			update dbo.sysdiagrams set version = @version where diagram_id = @DiagId ;

		return 0
	END
GO


-- ----------------------------
-- procedure structure for sp_dropdiagram
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[sp_dropdiagram]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP PROCEDURE[dbo].[sp_dropdiagram]
GO

CREATE PROCEDURE [dbo].[sp_dropdiagram]
	(
		@diagramname 	sysname,
		@owner_id	int	= null
	)
	WITH EXECUTE AS 'dbo'
	AS
	BEGIN
		set nocount on
		declare @theId 			int
		declare @IsDbo 			int
		
		declare @UIDFound 		int
		declare @DiagId			int
	
		if(@diagramname is null)
		begin
			RAISERROR ('Invalid value', 16, 1);
			return -1
		end
	
		EXECUTE AS CALLER;
		select @theId = DATABASE_PRINCIPAL_ID();
		select @IsDbo = IS_MEMBER(N'db_owner'); 
		if(@owner_id is null)
			select @owner_id = @theId;
		REVERT; 
		
		select @DiagId = diagram_id, @UIDFound = principal_id from dbo.sysdiagrams where principal_id = @owner_id and name = @diagramname 
		if(@DiagId IS NULL or (@IsDbo = 0 and @UIDFound <> @theId))
		begin
			RAISERROR ('Diagram does not exist or you do not have permission.', 16, 1)
			return -3
		end
	
		delete from dbo.sysdiagrams where diagram_id = @DiagId;
	
		return 0;
	END
GO


-- ----------------------------
-- function structure for fn_diagramobjects
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[fn_diagramobjects]') AND type IN ('FN', 'FS', 'FT', 'IF', 'TF'))
	DROP FUNCTION[dbo].[fn_diagramobjects]
GO

CREATE FUNCTION [dbo].[fn_diagramobjects]() 
	RETURNS int
	WITH EXECUTE AS N'dbo'
	AS
	BEGIN
		declare @id_upgraddiagrams		int
		declare @id_sysdiagrams			int
		declare @id_helpdiagrams		int
		declare @id_helpdiagramdefinition	int
		declare @id_creatediagram	int
		declare @id_renamediagram	int
		declare @id_alterdiagram 	int 
		declare @id_dropdiagram		int
		declare @InstalledObjects	int

		select @InstalledObjects = 0

		select 	@id_upgraddiagrams = object_id(N'dbo.sp_upgraddiagrams'),
			@id_sysdiagrams = object_id(N'dbo.sysdiagrams'),
			@id_helpdiagrams = object_id(N'dbo.sp_helpdiagrams'),
			@id_helpdiagramdefinition = object_id(N'dbo.sp_helpdiagramdefinition'),
			@id_creatediagram = object_id(N'dbo.sp_creatediagram'),
			@id_renamediagram = object_id(N'dbo.sp_renamediagram'),
			@id_alterdiagram = object_id(N'dbo.sp_alterdiagram'), 
			@id_dropdiagram = object_id(N'dbo.sp_dropdiagram')

		if @id_upgraddiagrams is not null
			select @InstalledObjects = @InstalledObjects + 1
		if @id_sysdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 2
		if @id_helpdiagrams is not null
			select @InstalledObjects = @InstalledObjects + 4
		if @id_helpdiagramdefinition is not null
			select @InstalledObjects = @InstalledObjects + 8
		if @id_creatediagram is not null
			select @InstalledObjects = @InstalledObjects + 16
		if @id_renamediagram is not null
			select @InstalledObjects = @InstalledObjects + 32
		if @id_alterdiagram  is not null
			select @InstalledObjects = @InstalledObjects + 64
		if @id_dropdiagram is not null
			select @InstalledObjects = @InstalledObjects + 128
		
		return @InstalledObjects 
	END
GO


-- ----------------------------
-- Auto increment value for class
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[class]', RESEED, 7)
GO


-- ----------------------------
-- Primary Key structure for table class
-- ----------------------------
ALTER TABLE [dbo].[class] ADD CONSTRAINT [PK__class__71E318210F975522] PRIMARY KEY CLUSTERED ([claid])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for manager
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[manager]', RESEED, 10)
GO


-- ----------------------------
-- Uniques structure for table manager
-- ----------------------------
ALTER TABLE [dbo].[manager] ADD CONSTRAINT [UQ__manager__7E43C8890AD2A005] UNIQUE NONCLUSTERED ([manname] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table manager
-- ----------------------------
ALTER TABLE [dbo].[manager] ADD CONSTRAINT [PK__manager__0A7B913607F6335A] PRIMARY KEY CLUSTERED ([manid])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for sc
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[sc]', RESEED, 20)
GO


-- ----------------------------
-- Primary Key structure for table sc
-- ----------------------------
ALTER TABLE [dbo].[sc] ADD CONSTRAINT [PK__sc__320EA6B5182C9B23] PRIMARY KEY CLUSTERED ([scid])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for sctime
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[sctime]', RESEED, 12)
GO


-- ----------------------------
-- Primary Key structure for table sctime
-- ----------------------------
ALTER TABLE [dbo].[sctime] ADD CONSTRAINT [PK__sctime__A43E8E051367E606] PRIMARY KEY CLUSTERED ([sctimeid])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for student
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[student]', RESEED, 7)
GO


-- ----------------------------
-- Uniques structure for table student
-- ----------------------------
ALTER TABLE [dbo].[student] ADD CONSTRAINT [UQ__student__A79C5E5E023D5A04] UNIQUE NONCLUSTERED ([stuxuehao] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table student
-- ----------------------------
ALTER TABLE [dbo].[student] ADD CONSTRAINT [PK__student__AEC8BBF77F60ED59] PRIMARY KEY CLUSTERED ([stuid])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for sysdiagrams
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[sysdiagrams]', RESEED, 1)
GO


-- ----------------------------
-- Uniques structure for table sysdiagrams
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD CONSTRAINT [UK_principal_name] UNIQUE NONCLUSTERED ([principal_id] ASC, [name] ASC)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table sysdiagrams
-- ----------------------------
ALTER TABLE [dbo].[sysdiagrams] ADD CONSTRAINT [PK__sysdiagr__C2B05B611ED998B2] PRIMARY KEY CLUSTERED ([diagram_id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table sc
-- ----------------------------
ALTER TABLE [dbo].[sc] ADD CONSTRAINT [ssc_id] FOREIGN KEY ([stuid]) REFERENCES [dbo].[student] ([stuid]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[sc] ADD CONSTRAINT [scc_id] FOREIGN KEY ([claid]) REFERENCES [dbo].[class] ([claid]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table sctime
-- ----------------------------
ALTER TABLE [dbo].[sctime] ADD CONSTRAINT [csctime_id] FOREIGN KEY ([claid]) REFERENCES [dbo].[class] ([claid]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

