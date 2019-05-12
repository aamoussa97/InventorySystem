/*
 Navicat Premium Data Transfer

 Source Server         : AWS InventorySystem
 Source Server Type    : SQL Server
 Source Server Version : 14003049
 Source Host           : inventorysystem-mssqlaws.ci5a6xlnb47q.us-east-2.rds.amazonaws.com:1433
 Source Catalog        : lagersystem
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 14003049
 File Encoding         : 65001

 Date: 12/05/2019 21:01:01
*/


-- ----------------------------
-- Table structure for Brands
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Brands]') AND type IN ('U'))
	DROP TABLE [dbo].[Brands]
GO

CREATE TABLE [dbo].[Brands] (
  [BrandID] int  IDENTITY(1,1) NOT NULL,
  [BrandName] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[Brands] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Brands
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[Brands] ON
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'1', N'Apple')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'2', N'Tesla')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'3', N'Microsoft')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'4', N'Samsung')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'5', N'Sony')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'6', N'LG')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'7', N'VW')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'9', N'Ferrari')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'10', N'Ford')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'11', N'Toyota')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'12', N'Finlux')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'13', N'Acer')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'14', N'McLaren')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'66', N'Suzuki')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'71', N'Atari')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'101', N'MERCEDES')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'105', N'SAMSUNG')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'106', N'MASERATI')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'107', N'JETBRAINS')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'108', N'stelton')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'124', N'fiat')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'133', N'Presonus')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'136', N'Jeep')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'137', N'testPriceOptimize')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'138', N'TESTWPF')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'139', N'Subaru')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'147', N'fixdetali')
GO

SET IDENTITY_INSERT [dbo].[Brands] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for Materials
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Materials]') AND type IN ('U'))
	DROP TABLE [dbo].[Materials]
GO

CREATE TABLE [dbo].[Materials] (
  [MaterialID] int  IDENTITY(1,1) NOT NULL,
  [MaterialName] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[Materials] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of Materials
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[Materials] ON
GO

INSERT INTO [dbo].[Materials] ([MaterialID], [MaterialName]) VALUES (N'4', N'Steel')
GO

INSERT INTO [dbo].[Materials] ([MaterialID], [MaterialName]) VALUES (N'5', N'Wood')
GO

INSERT INTO [dbo].[Materials] ([MaterialID], [MaterialName]) VALUES (N'6', N'Aluminium')
GO

INSERT INTO [dbo].[Materials] ([MaterialID], [MaterialName]) VALUES (N'7', N'Coal')
GO

INSERT INTO [dbo].[Materials] ([MaterialID], [MaterialName]) VALUES (N'8', N'Glass')
GO

INSERT INTO [dbo].[Materials] ([MaterialID], [MaterialName]) VALUES (N'9', N'Metal')
GO

INSERT INTO [dbo].[Materials] ([MaterialID], [MaterialName]) VALUES (N'10', N'Copper')
GO

INSERT INTO [dbo].[Materials] ([MaterialID], [MaterialName]) VALUES (N'16', N'Oil')
GO

INSERT INTO [dbo].[Materials] ([MaterialID], [MaterialName]) VALUES (N'17', N'Glass')
GO

INSERT INTO [dbo].[Materials] ([MaterialID], [MaterialName]) VALUES (N'18', N'Lithium')
GO

INSERT INTO [dbo].[Materials] ([MaterialID], [MaterialName]) VALUES (N'19', N'Battery')
GO

INSERT INTO [dbo].[Materials] ([MaterialID], [MaterialName]) VALUES (N'21', N'Iron')
GO

INSERT INTO [dbo].[Materials] ([MaterialID], [MaterialName]) VALUES (N'27', N'ceramic')
GO

INSERT INTO [dbo].[Materials] ([MaterialID], [MaterialName]) VALUES (N'28', N'Carbonfiber')
GO

INSERT INTO [dbo].[Materials] ([MaterialID], [MaterialName]) VALUES (N'30', N'Fiber')
GO

INSERT INTO [dbo].[Materials] ([MaterialID], [MaterialName]) VALUES (N'37', N'Plastic')
GO

INSERT INTO [dbo].[Materials] ([MaterialID], [MaterialName]) VALUES (N'50', N'fixdetali')
GO

SET IDENTITY_INSERT [dbo].[Materials] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for ProductGrowthFactors
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductGrowthFactors]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductGrowthFactors]
GO

CREATE TABLE [dbo].[ProductGrowthFactors] (
  [ProductID] int  IDENTITY(1,1) NOT NULL,
  [ProductGrowthFactor] bigint  NULL
)
GO

ALTER TABLE [dbo].[ProductGrowthFactors] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ProductGrowthFactors
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[ProductGrowthFactors] ON
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'1', N'885')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'2', N'121')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'3', N'341')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'4', N'1431')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'5', N'444')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'6', N'444')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'7', N'444')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'8', N'444')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'9', N'444')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'10', N'20')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'11', N'20')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'12', N'20')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'13', N'444')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'14', N'444')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'15', N'444')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'16', N'444')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'17', N'444')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'18', N'444')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'19', N'444')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'20', N'444')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'21', N'444')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'22', N'444')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'23', N'444')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'24', N'444')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'25', N'444')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'26', N'444')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'27', N'444')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'28', N'444')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'29', N'444')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'30', N'444')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'31', N'444')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'32', N'444')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'33', N'444')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'34', N'20')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'35', N'0')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'36', N'20')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'37', N'20')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'38', N'20')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'39', N'20')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'40', N'20')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'41', N'444')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'42', N'20')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'43', N'400')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'44', N'400')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'45', N'20')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'46', N'20')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'47', N'20')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'48', N'30')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'49', N'5000')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'50', N'60')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'51', N'60')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'52', N'200')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'53', N'123')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'54', N'847')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'55', N'847')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'56', N'847')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'57', N'847')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'58', N'847')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'59', N'847')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'60', N'847')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'61', N'847')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'62', N'1000')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'63', N'123')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'64', N'123')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'65', N'1111')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'66', N'123')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'67', N'234')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'68', N'234')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'69', N'345')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'70', N'600')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'71', N'20')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'72', N'573')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'73', N'2134')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'74', N'234')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'75', N'500')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'76', N'800')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'77', N'3000')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'78', N'3000')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'79', N'500')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'80', N'5000')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'81', N'400')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'82', N'123')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'83', N'50')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'84', N'10')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'85', N'30')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'86', N'50')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'87', N'50')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'88', N'50')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'89', N'50')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'90', N'50')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'91', N'20')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'92', N'20')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'93', N'20')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'94', N'30')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'95', N'20')
GO

INSERT INTO [dbo].[ProductGrowthFactors] ([ProductID], [ProductGrowthFactor]) VALUES (N'96', N'20')
GO

SET IDENTITY_INSERT [dbo].[ProductGrowthFactors] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for ProductMaterials
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductMaterials]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductMaterials]
GO

CREATE TABLE [dbo].[ProductMaterials] (
  [ProductID] int  IDENTITY(1,1) NOT NULL,
  [MaterialID] int  NOT NULL
)
GO

ALTER TABLE [dbo].[ProductMaterials] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ProductMaterials
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[ProductMaterials] ON
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'10', N'4')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'10', N'17')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'10', N'21')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'11', N'4')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'11', N'17')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'11', N'21')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'12', N'4')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'12', N'17')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'12', N'21')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'13', N'4')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'13', N'5')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'13', N'17')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'14', N'4')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'14', N'9')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'14', N'21')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'15', N'9')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'15', N'17')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'15', N'21')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'20', N'7')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'20', N'17')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'21', N'17')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'23', N'4')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'23', N'9')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'23', N'21')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'23', N'28')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'24', N'6')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'24', N'17')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'24', N'19')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'30', N'9')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'30', N'17')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'30', N'19')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'34', N'9')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'34', N'28')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'35', N'9')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'35', N'28')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'36', N'9')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'36', N'28')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'37', N'9')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'37', N'28')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'38', N'9')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'38', N'28')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'39', N'9')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'39', N'28')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'41', N'6')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'42', N'4')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'42', N'5')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'43', N'4')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'43', N'5')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'44', N'4')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'44', N'5')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'45', N'5')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'46', N'6')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'47', N'4')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'47', N'10')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'47', N'17')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'50', N'9')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'50', N'17')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'50', N'37')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'51', N'5')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'53', N'6')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'53', N'19')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'53', N'37')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'60', N'9')
GO

SET IDENTITY_INSERT [dbo].[ProductMaterials] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for ProductNames
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductNames]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductNames]
GO

CREATE TABLE [dbo].[ProductNames] (
  [ProductID] int  IDENTITY(1,1) NOT NULL,
  [ProductName] varchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO

ALTER TABLE [dbo].[ProductNames] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ProductNames
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[ProductNames] ON
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'1', N'Model X')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'2', N'Macbook Pro')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'3', N'McLaren P1')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'4', N'Aspire')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'5', N'Model Y')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'6', N'Model S')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'8', N'Finlux TV')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'22', N'Model T')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'23', N'Model K')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'24', N'Model K')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'25', N'Model K')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'26', N'Model K')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'27', N'Model K')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'28', N'Model R')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'29', N'Model R')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'30', N'Model R')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'31', N'Model R')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'32', N'Model R')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'33', N'Model E')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'34', N'iPad Pro 11')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'35', N'iPad Pro 11')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'36', N'iPad Pro 11')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'37', N'iPad Pro 11')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'38', N'iPad Pro 11')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'39', N'iPad Pro 12')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'40', N'iPad Pro 13')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'41', N'iPad Pro 14')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'43', N'AirPower')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'44', N'AirPower')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'45', N'Model E')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'46', N'Model R2')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'47', N'Model R3')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'48', N'Model B')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'49', N'aspire1')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'50', N'Aspire2')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'51', N'ERIS E5')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'52', N'string')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'53', N'Aspire4')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'54', N'Cheroke')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'55', N'Cheroke2')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'56', N'Cheroke3')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'57', N'test')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'58', N'testfront')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'59', N'Roadster')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'60', N'testPriceOptimize')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'61', N'asdda')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'62', N'iFone 8')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'63', N'iPad Air 2')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'64', N'500')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'65', N'Pixel 3XL')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'66', N'Pixel 3')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'67', N'TESTWPF')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'68', N'WRX STI')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'69', N'BRZ')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'70', N'testtwpf')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'71', N'TESTUPDATE')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'72', N'Tenserflow')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'73', N'testingwpf')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'74', N'iPhone 7')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'75', N'iPhone 8 Plus')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'76', N'testmatwpf')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'77', N'testUpdate')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'78', N'iPhone 8')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'79', N'MacBook Air')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'80', N'iPod Touch')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'81', N'Testcors')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'82', N'TESTCASE')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'83', N'testname')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'84', N'testnameyux')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'85', N'testgehdsk')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'86', N'testnamename')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'87', N'asdasdasd')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'88', N'testmedprice')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'89', N'testmedtimer')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'90', N'testmedtimer2')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'91', N'testerror')
GO

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES (N'92', N'testquantity')
GO

SET IDENTITY_INSERT [dbo].[ProductNames] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for ProductPrices
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductPrices]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductPrices]
GO

CREATE TABLE [dbo].[ProductPrices] (
  [ProductID] int  IDENTITY(1,1) NOT NULL,
  [ProductPrice] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[ProductPrices] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ProductPrices
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[ProductPrices] ON
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'1', N'650000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'2', N'13000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'3', N'1200000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'4', N'6500')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'5', N'450000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'6', N'750000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'7', N'99999')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'8', N'123456789')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'9', N'888888')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'10', N'1997')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'21', N'930000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'22', N'930000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'23', N'1230000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'24', N'1230000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'25', N'1230000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'26', N'1230000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'27', N'1230000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'28', N'1750000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'29', N'1750000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'30', N'1750000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'31', N'1750000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'32', N'1750000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'33', N'1850000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'34', N'0')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'35', N'1997')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'36', N'61000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'37', N'61000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'38', N'61000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'39', N'61000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'40', N'61000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'41', N'61000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'42', N'61000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'43', N'61000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'44', N'0')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'45', N'61000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'46', N'61000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'47', N'61000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'48', N'99880')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'49', N'99880')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'50', N'99880')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'51', N'99880')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'52', N'99880')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'53', N'2000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'54', N'2000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'55', N'2000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'56', N'99880')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'57', N'99880')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'58', N'99880')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'59', N'99880')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'60', N'99880')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'61', N'99880')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'62', N'99880')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'63', N'99880')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'64', N'99880')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'65', N'99880')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'66', N'99880')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'67', N'99880')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'68', N'99880')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'69', N'99880')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'70', N'99880')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'71', N'99880')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'72', N'99880')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'73', N'99880')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'74', N'99880')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'75', N'99880')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'76', N'99880')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'77', N'2000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'78', N'0')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'79', N'2000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'80', N'2000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'81', N'2000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'82', N'2000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'83', N'2000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'84', N'99880')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'85', N'6000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'86', N'54000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'87', N'54000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'88', N'940')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'89', N'940')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'90', N'2200')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'91', N'5000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'92', N'75000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'93', N'1180')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'94', N'900')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'95', N'6000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'96', N'6810')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'97', N'426')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'98', N'426')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'99', N'426')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'100', N'426')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'101', N'426')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'102', N'426')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'103', N'426')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'104', N'3333')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'105', N'15000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'106', N'6810')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'107', N'6810')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'108', N'94447')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'109', N'6810')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'110', N'12926')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'111', N'12222')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'112', N'19042')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'113', N'7400')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'114', N'940')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'115', N'6535')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'116', N'67972')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'117', N'12926')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'118', N'5000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'119', N'3200')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'120', N'4000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'121', N'4000')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'122', N'1500')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'123', N'30001')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'124', N'500')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'125', N'6811')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'126', N'10')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'127', N'60')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'128', N'50')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'129', N'30')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'130', N'60')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'131', N'60')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'132', N'60')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'133', N'60')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'134', N'65')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'135', N'65')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'136', N'20')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'137', N'50')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'138', N'60')
GO

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES (N'139', N'40')
GO

SET IDENTITY_INSERT [dbo].[ProductPrices] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for ProductQuantities
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductQuantities]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductQuantities]
GO

CREATE TABLE [dbo].[ProductQuantities] (
  [ProductID] int  IDENTITY(1,1) NOT NULL,
  [ProductQuantity] bigint  NULL
)
GO

ALTER TABLE [dbo].[ProductQuantities] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ProductQuantities
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[ProductQuantities] ON
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'20', N'13')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'21', N'0')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'22', N'1')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'23', N'100')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'24', N'80')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'25', N'0')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'26', N'10')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'27', N'20')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'28', N'0')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'29', N'0')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'30', N'40')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'31', N'15')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'32', N'10')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'33', N'5')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'34', N'21')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'35', N'0')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'36', N'4')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'37', N'1')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'38', N'17')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'39', N'13')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'42', N'9')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'43', N'3')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'44', N'12')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'45', N'2')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'46', N'6')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'47', N'50')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'48', N'50')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'50', N'9')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'51', N'5')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'53', N'50')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'54', N'50')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'55', N'10')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'56', N'10')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'57', N'10')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'58', N'20')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'59', N'50')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'60', N'3')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'61', N'50')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'62', N'10')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'63', N'20')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'64', N'10')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'65', N'2')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'66', N'2')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'67', N'2')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'68', N'2')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'69', N'50')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'70', N'50')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'71', N'50')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'72', N'50')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'73', N'50')
GO

INSERT INTO [dbo].[ProductQuantities] ([ProductID], [ProductQuantity]) VALUES (N'74', N'0')
GO

SET IDENTITY_INSERT [dbo].[ProductQuantities] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for ProductSKU
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductSKU]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductSKU]
GO

CREATE TABLE [dbo].[ProductSKU] (
  [ProductID] int  IDENTITY(1,1) NOT NULL,
  [ProductSKU] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[ProductSKU] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ProductSKU
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[ProductSKU] ON
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'1', N'361467156733')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'2', N'573823853863')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'3', N'385728978525')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'4', N'285923589275')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'5', N'357825235532')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'6', N'354646434633')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'9', N'1243756387356')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'21', N'776387436733')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'22', N'776387436733')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'23', N'776387436733')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'24', N'129987436733')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'25', N'129987436733')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'26', N'129987436733')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'27', N'129987436733')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'28', N'129987436733')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'29', N'198577881733')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'30', N'198577881733')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'31', N'198577881733')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'32', N'198577881733')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'33', N'198577881733')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'34', N'145577888837')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'35', N'574998436731')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'36', N'574998436731')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'37', N'574998436731')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'38', N'574998436731')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'39', N'574998436731')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'40', N'574998436731')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'41', N'574998436731')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'42', N'574998436731')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'43', N'112')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'44', N'574998436731')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'45', N'574998436731')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'46', N'934998436731')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'47', N'348761939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'48', N'578761939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'49', N'578761939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'50', N'578761939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'51', N'0')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'52', N'0')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'53', N'0')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'54', N'0')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'55', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'56', N'0')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'57', N'0')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'58', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'59', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'60', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'61', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'62', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'63', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'64', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'65', N'0')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'66', N'578761939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'67', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'68', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'69', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'70', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'71', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'72', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'73', N'578761939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'74', N'578761939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'75', N'578761939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'76', N'578761939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'77', N'578761939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'78', N'0')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'79', N'0')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'80', N'578761939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'81', N'578761939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'82', N'578761939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'83', N'578761939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'84', N'578761939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'85', N'578761939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'86', N'578761939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'87', N'578761939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'88', N'578761939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'89', N'578761939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'90', N'578761939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'91', N'578761939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'92', N'578761939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'93', N'578761939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'94', N'578761939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'95', N'578761939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'96', N'578761939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'97', N'578761939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'98', N'578761939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'99', N'578761939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'100', N'578761939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'101', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'102', N'0')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'103', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'104', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'105', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'106', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'107', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'108', N'716361939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'109', N'87654321')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'110', N'0')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'111', N'0')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'112', N'0')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'113', N'0')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'114', N'0')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'115', N'0')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'116', N'0')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'117', N'0')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'118', N'0')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'119', N'0')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'120', N'574246884')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'121', N'574246884')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'122', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'123', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'124', N'87654321')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'125', N'11223344')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'126', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'127', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'128', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'129', N'778342354')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'130', N'123461')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'131', N'445361939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'132', N'445361939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'133', N'445361939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'134', N'445361939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'135', N'445784939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'136', N'445784939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'137', N'445784939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'138', N'445784939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'139', N'234653')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'140', N'341641')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'141', N'12346234')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'142', N'12451234')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'143', N'1234')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'144', N'123451')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'145', N'123')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'146', N'123451')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'147', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'148', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'149', N'448544939981')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'150', N'432543')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'151', N'123451')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'152', N'94578101')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'153', N'14785236')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'154', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'155', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'156', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'157', N'54879632')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'158', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'159', N'12235433')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'160', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'161', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'162', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'163', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'164', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'165', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'166', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'167', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'168', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'169', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'170', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'171', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'172', N'12345678')
GO

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES (N'173', N'12345678')
GO

SET IDENTITY_INSERT [dbo].[ProductSKU] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for ProductStartFactors
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductStartFactors]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductStartFactors]
GO

CREATE TABLE [dbo].[ProductStartFactors] (
  [ProductID] int  IDENTITY(1,1) NOT NULL,
  [ProductStartFactor] bigint  NULL
)
GO

ALTER TABLE [dbo].[ProductStartFactors] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ProductStartFactors
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[ProductStartFactors] ON
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'4', N'34231')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'5', N'11123')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'6', N'94892')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'7', N'1352')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'8', N'333')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'9', N'333')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'10', N'333')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'11', N'333')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'12', N'333')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'13', N'400')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'14', N'400')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'15', N'400')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'16', N'333')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'17', N'333')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'18', N'333')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'19', N'333')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'20', N'333')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'21', N'333')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'22', N'333')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'23', N'333')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'24', N'333')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'25', N'333')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'26', N'333')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'27', N'333')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'28', N'333')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'29', N'333')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'30', N'333')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'31', N'333')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'32', N'333')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'33', N'333')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'34', N'333')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'35', N'333')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'36', N'333')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'37', N'400')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'38', N'0')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'39', N'400')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'40', N'400')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'41', N'400')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'42', N'400')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'43', N'400')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'44', N'333')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'45', N'400')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'46', N'90000')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'47', N'90000')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'48', N'400')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'49', N'400')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'50', N'400')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'51', N'8000')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'52', N'80000')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'53', N'400')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'54', N'300')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'55', N'8000')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'56', N'12345')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'57', N'426')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'58', N'426')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'59', N'426')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'60', N'426')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'61', N'426')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'62', N'426')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'63', N'426')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'64', N'426')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'65', N'20000')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'66', N'12345')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'67', N'12345')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'68', N'122222')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'69', N'12345')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'70', N'23456')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'71', N'23454')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'72', N'34567')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'73', N'8000')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'74', N'400')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'75', N'243')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'76', N'123456')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'77', N'23456')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'78', N'6000')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'79', N'4000')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'80', N'7000')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'81', N'7000')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'82', N'2000')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'83', N'1')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'84', N'500')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'85', N'12345')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'86', N'10')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'87', N'50')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'88', N'50')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'89', N'30')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'90', N'60')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'91', N'60')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'92', N'60')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'93', N'60')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'94', N'65')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'95', N'65')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'96', N'40')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'97', N'50')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'98', N'60')
GO

INSERT INTO [dbo].[ProductStartFactors] ([ProductID], [ProductStartFactor]) VALUES (N'99', N'60')
GO

SET IDENTITY_INSERT [dbo].[ProductStartFactors] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for ProductsV5
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductsV5]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductsV5]
GO

CREATE TABLE [dbo].[ProductsV5] (
  [ProductID] int  IDENTITY(1,1) NOT NULL,
  [ProductSKUID] int DEFAULT ('0') NULL,
  [ProductNameID] int DEFAULT ('0') NULL,
  [ProductBrandID] int DEFAULT ('0') NULL,
  [ProductPriceID] int DEFAULT ('0') NULL,
  [ProductVariableCostID] int DEFAULT ('0') NULL,
  [ProductStartFactorID] int DEFAULT ('0') NULL,
  [ProductGrowthFactorID] int DEFAULT ('0') NULL
)
GO

ALTER TABLE [dbo].[ProductsV5] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ProductsV5
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[ProductsV5] ON
GO

INSERT INTO [dbo].[ProductsV5] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductPriceID], [ProductVariableCostID], [ProductStartFactorID], [ProductGrowthFactorID]) VALUES (N'41', N'141', N'67', N'2', N'107', N'110', N'67', N'64')
GO

INSERT INTO [dbo].[ProductsV5] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductPriceID], [ProductVariableCostID], [ProductStartFactorID], [ProductGrowthFactorID]) VALUES (N'44', N'144', N'71', N'9', N'110', N'113', N'70', N'67')
GO

INSERT INTO [dbo].[ProductsV5] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductPriceID], [ProductVariableCostID], [ProductStartFactorID], [ProductGrowthFactorID]) VALUES (N'45', N'145', N'72', N'3', N'111', N'114', N'71', N'68')
GO

INSERT INTO [dbo].[ProductsV5] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductPriceID], [ProductVariableCostID], [ProductStartFactorID], [ProductGrowthFactorID]) VALUES (N'52', N'151', N'77', N'11', N'117', N'120', N'77', N'74')
GO

INSERT INTO [dbo].[ProductsV5] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductPriceID], [ProductVariableCostID], [ProductStartFactorID], [ProductGrowthFactorID]) VALUES (N'53', N'152', N'78', N'1', N'118', N'121', N'78', N'75')
GO

INSERT INTO [dbo].[ProductsV5] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductPriceID], [ProductVariableCostID], [ProductStartFactorID], [ProductGrowthFactorID]) VALUES (N'55', N'154', N'78', N'1', N'120', N'123', N'80', N'77')
GO

INSERT INTO [dbo].[ProductsV5] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductPriceID], [ProductVariableCostID], [ProductStartFactorID], [ProductGrowthFactorID]) VALUES (N'56', N'155', N'79', N'1', N'121', N'124', N'81', N'78')
GO

INSERT INTO [dbo].[ProductsV5] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductPriceID], [ProductVariableCostID], [ProductStartFactorID], [ProductGrowthFactorID]) VALUES (N'57', N'156', N'80', N'1', N'122', N'125', N'82', N'79')
GO

INSERT INTO [dbo].[ProductsV5] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductPriceID], [ProductVariableCostID], [ProductStartFactorID], [ProductGrowthFactorID]) VALUES (N'61', N'160', N'83', N'1', N'126', N'129', N'86', N'83')
GO

INSERT INTO [dbo].[ProductsV5] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductPriceID], [ProductVariableCostID], [ProductStartFactorID], [ProductGrowthFactorID]) VALUES (N'62', N'161', N'84', N'1', N'127', N'130', N'87', N'84')
GO

INSERT INTO [dbo].[ProductsV5] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductPriceID], [ProductVariableCostID], [ProductStartFactorID], [ProductGrowthFactorID]) VALUES (N'63', N'162', N'85', N'71', N'128', N'131', N'88', N'85')
GO

INSERT INTO [dbo].[ProductsV5] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductPriceID], [ProductVariableCostID], [ProductStartFactorID], [ProductGrowthFactorID]) VALUES (N'64', N'163', N'86', N'106', N'129', N'132', N'89', N'86')
GO

INSERT INTO [dbo].[ProductsV5] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductPriceID], [ProductVariableCostID], [ProductStartFactorID], [ProductGrowthFactorID]) VALUES (N'66', N'165', N'87', N'9', N'131', N'134', N'91', N'88')
GO

INSERT INTO [dbo].[ProductsV5] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductPriceID], [ProductVariableCostID], [ProductStartFactorID], [ProductGrowthFactorID]) VALUES (N'67', N'166', N'87', N'9', N'132', N'135', N'92', N'89')
GO

INSERT INTO [dbo].[ProductsV5] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductPriceID], [ProductVariableCostID], [ProductStartFactorID], [ProductGrowthFactorID]) VALUES (N'68', N'167', N'87', N'9', N'133', N'136', N'93', N'90')
GO

INSERT INTO [dbo].[ProductsV5] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductPriceID], [ProductVariableCostID], [ProductStartFactorID], [ProductGrowthFactorID]) VALUES (N'69', N'168', N'88', N'1', N'134', N'137', N'94', N'91')
GO

INSERT INTO [dbo].[ProductsV5] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductPriceID], [ProductVariableCostID], [ProductStartFactorID], [ProductGrowthFactorID]) VALUES (N'70', N'169', N'88', N'1', N'135', N'138', N'95', N'92')
GO

INSERT INTO [dbo].[ProductsV5] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductPriceID], [ProductVariableCostID], [ProductStartFactorID], [ProductGrowthFactorID]) VALUES (N'71', N'170', N'89', N'71', N'136', N'139', N'96', N'93')
GO

INSERT INTO [dbo].[ProductsV5] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductPriceID], [ProductVariableCostID], [ProductStartFactorID], [ProductGrowthFactorID]) VALUES (N'72', N'171', N'90', N'9', N'137', N'140', N'97', N'94')
GO

INSERT INTO [dbo].[ProductsV5] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductPriceID], [ProductVariableCostID], [ProductStartFactorID], [ProductGrowthFactorID]) VALUES (N'73', N'172', N'91', N'1', N'138', N'141', N'98', N'95')
GO

INSERT INTO [dbo].[ProductsV5] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductPriceID], [ProductVariableCostID], [ProductStartFactorID], [ProductGrowthFactorID]) VALUES (N'74', N'173', N'92', N'124', N'139', N'142', N'99', N'96')
GO

SET IDENTITY_INSERT [dbo].[ProductsV5] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for ProductVariableCosts
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductVariableCosts]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductVariableCosts]
GO

CREATE TABLE [dbo].[ProductVariableCosts] (
  [ProductID] int  IDENTITY(1,1) NOT NULL,
  [ProductVariableCost] bigint  NOT NULL
)
GO

ALTER TABLE [dbo].[ProductVariableCosts] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of ProductVariableCosts
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[ProductVariableCosts] ON
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'1', N'45000')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'2', N'3500')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'3', N'100000')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'4', N'1200')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'5', N'35700')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'6', N'33000')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'12', N'2019')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'13', N'2020')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'24', N'95000')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'25', N'95000')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'26', N'115000')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'27', N'115000')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'28', N'115000')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'29', N'115000')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'30', N'115000')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'31', N'165000')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'32', N'165000')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'33', N'165000')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'34', N'125000')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'35', N'165000')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'36', N'140000')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'37', N'600')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'38', N'600')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'39', N'600')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'40', N'600')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'41', N'600')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'42', N'600')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'43', N'600')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'44', N'600')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'45', N'0')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'46', N'0')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'47', N'11234')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'48', N'600')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'49', N'600')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'50', N'600')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'51', N'875')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'52', N'875')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'53', N'875')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'54', N'875')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'55', N'875')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'56', N'1500')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'57', N'1500')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'58', N'1500')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'59', N'875')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'60', N'875')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'61', N'875')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'62', N'875')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'63', N'875')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'64', N'875')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'65', N'875')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'66', N'875')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'67', N'875')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'68', N'875')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'69', N'875')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'70', N'875')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'71', N'875')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'72', N'875')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'73', N'875')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'74', N'875')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'75', N'875')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'76', N'875')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'77', N'875')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'78', N'875')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'79', N'875')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'80', N'1500')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'81', N'0')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'82', N'1500')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'83', N'1500')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'84', N'1500')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'85', N'1500')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'86', N'1500')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'87', N'875')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'88', N'800')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'89', N'18000')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'90', N'18000')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'91', N'1500')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'92', N'1500')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'93', N'4000')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'94', N'2000')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'95', N'75000')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'96', N'2000')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'97', N'1500')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'98', N'4000')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'99', N'1234')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'100', N'787')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'101', N'787')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'102', N'787')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'103', N'787')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'104', N'787')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'105', N'787')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'106', N'787')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'107', N'787')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'108', N'10000')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'109', N'1234')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'110', N'1234')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'111', N'66666')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'112', N'1234')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'113', N'2345')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'114', N'1231')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'115', N'3456')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'116', N'6000')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'117', N'1500')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'118', N'124')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'119', N'12345')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'120', N'2345')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'121', N'4000')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'122', N'2500')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'123', N'3000')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'124', N'3000')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'125', N'1500')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'126', N'60000')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'127', N'600')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'128', N'1235')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'129', N'30')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'130', N'60')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'131', N'10')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'132', N'80')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'133', N'80')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'134', N'40')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'135', N'40')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'136', N'40')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'137', N'50')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'138', N'50')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'139', N'30')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'140', N'40')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'141', N'40')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'142', N'30')
GO

SET IDENTITY_INSERT [dbo].[ProductVariableCosts] OFF
GO

COMMIT
GO


-- ----------------------------
-- View structure for ViewBrands
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ViewBrands]') AND type IN ('V'))
	DROP VIEW [dbo].[ViewBrands]
GO

CREATE VIEW [dbo].[ViewBrands] AS SELECT
	Brands.BrandID AS BrandID,
	UPPER(Brands.BrandName) AS BrandName
FROM
	Brands
GO


-- ----------------------------
-- View structure for ViewMaterials
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ViewMaterials]') AND type IN ('V'))
	DROP VIEW [dbo].[ViewMaterials]
GO

CREATE VIEW [dbo].[ViewMaterials] AS SELECT
	Materials.MaterialID AS MaterialID,
	UPPER(Materials.MaterialName) AS MaterialName
FROM
	Materials
GO


-- ----------------------------
-- View structure for ViewProductGrowthFactors
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ViewProductGrowthFactors]') AND type IN ('V'))
	DROP VIEW [dbo].[ViewProductGrowthFactors]
GO

CREATE VIEW [dbo].[ViewProductGrowthFactors] AS SELECT * FROM ProductGrowthFactors
GO


-- ----------------------------
-- View structure for ViewProductMaterialsV2
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ViewProductMaterialsV2]') AND type IN ('V'))
	DROP VIEW [dbo].[ViewProductMaterialsV2]
GO

CREATE VIEW [dbo].[ViewProductMaterialsV2] AS SELECT
	ProductMaterials.ProductID AS ProductID,
	UPPER(Materials.MaterialName) AS MaterialName
FROM
	ProductMaterials,
	Materials
WHERE
	ProductMaterials.MaterialID = Materials.MaterialID
GO


-- ----------------------------
-- View structure for ViewProductNames
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ViewProductNames]') AND type IN ('V'))
	DROP VIEW [dbo].[ViewProductNames]
GO

CREATE VIEW [dbo].[ViewProductNames] AS SELECT
	ProductNames.ProductID AS ProductID,
	UPPER(ProductNames.ProductName) AS ProductName
FROM
	ProductNames
GO


-- ----------------------------
-- View structure for ViewProductPrices
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ViewProductPrices]') AND type IN ('V'))
	DROP VIEW [dbo].[ViewProductPrices]
GO

CREATE VIEW [dbo].[ViewProductPrices] AS SELECT * FROM ProductPrices
GO


-- ----------------------------
-- View structure for ViewProductQuantities
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ViewProductQuantities]') AND type IN ('V'))
	DROP VIEW [dbo].[ViewProductQuantities]
GO

CREATE VIEW [dbo].[ViewProductQuantities] AS SELECT * FROM ProductQuantities
GO


-- ----------------------------
-- View structure for ViewProductsSKU
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ViewProductsSKU]') AND type IN ('V'))
	DROP VIEW [dbo].[ViewProductsSKU]
GO

CREATE VIEW [dbo].[ViewProductsSKU] AS SELECT * FROM ProductSKU
GO


-- ----------------------------
-- View structure for ViewProductStartFactors
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ViewProductStartFactors]') AND type IN ('V'))
	DROP VIEW [dbo].[ViewProductStartFactors]
GO

CREATE VIEW [dbo].[ViewProductStartFactors] AS SELECT * FROM ProductStartFactors
GO


-- ----------------------------
-- View structure for ViewProductsV3
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ViewProductsV3]') AND type IN ('V'))
	DROP VIEW [dbo].[ViewProductsV3]
GO

CREATE VIEW [dbo].[ViewProductsV3] AS SELECT
	ProductsV5.ProductID,
	UPPER(ProductName) AS ProductName,
	ProductSKU,
	UPPER(BrandName) AS BrandName,
	ProductPrice,
	ProductVariableCost,
	ProductStartFactor,
	ProductGrowthFactor,
	ProductQuantity
FROM
	ProductsV5 productsV5
	INNER JOIN ProductNames ON productsV5.ProductNameID = ProductNames.ProductID
	INNER JOIN ProductSKU ON productsV5.ProductSKUID = ProductSKU.ProductID
	INNER JOIN Brands ON productsV5.ProductBrandID = Brands.BrandID
	INNER JOIN ProductPrices ON productsV5.ProductPriceID = ProductPrices.ProductID
	INNER JOIN ProductVariableCosts ON productsV5.ProductVariableCostID = ProductVariableCosts.ProductID
	INNER JOIN ProductStartFactors ON productsV5.ProductStartFactorID = ProductStartFactors.ProductID
	INNER JOIN ProductGrowthFactors ON productsV5.ProductGrowthFactorID = ProductGrowthFactors.ProductID
	INNER JOIN ProductQuantities ON productsV5.ProductID = ProductQuantities.ProductID
GO


-- ----------------------------
-- View structure for ViewProductVariableCosts
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ViewProductVariableCosts]') AND type IN ('V'))
	DROP VIEW [dbo].[ViewProductVariableCosts]
GO

CREATE VIEW [dbo].[ViewProductVariableCosts] AS SELECT * FROM ProductVariableCosts
GO


-- ----------------------------
-- Procedure structure for ProcedureInsertProductsBrandProductsV2
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertProductsBrandProductsV2]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertProductsBrandProductsV2]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertProductsBrandProductsV2]

@ProductBrandName varchar(50),
@BrandID_Output int OUTPUT

AS
BEGIN

IF EXISTS (SELECT * FROM Brands WHERE BrandName = @ProductBrandName)
BEGIN
--do what you need if exists
SELECT @BrandID_Output = Brands.BrandID FROM Brands WHERE BrandName = @ProductBrandName
END
ELSE
BEGIN
--do what needs to be done if not
--Run proceedure for insert brand
INSERT INTO	[dbo].[Brands] ([BrandName])
VALUES	(@ProductBrandName)

SELECT @BrandID_Output = SCOPE_IDENTITY()

END
END
GO


-- ----------------------------
-- Procedure structure for ProcedureInsertMaterialProductsV2
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertMaterialProductsV2]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertMaterialProductsV2]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertMaterialProductsV2]

@MaterialName varchar(50),
@MaterialID_Output INT OUTPUT

AS
BEGIN

IF EXISTS (SELECT * FROM Materials WHERE MaterialName = @MaterialName)
BEGIN
--do what you need if exists
SELECT @MaterialID_Output = Materials.MaterialID FROM Materials WHERE MaterialName = @MaterialName
END
ELSE
BEGIN
--do what needs to be done if not
--Run proceedure for insert brand
INSERT INTO	[dbo].[Materials] ([MaterialName])
VALUES	(@MaterialName)

SELECT @MaterialID_Output = SCOPE_IDENTITY()

END
END
GO


-- ----------------------------
-- Procedure structure for ProcedureInsertProductsQuantities
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertProductsQuantities]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertProductsQuantities]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertProductsQuantities]

@ProductID_Input int,
@ProductQuantity_Input int
--@ProductID_Output int OUTPUT

AS

BEGIN

SET IDENTITY_INSERT ProductQuantities ON

INSERT INTO	[dbo].[ProductQuantities] ([ProductID], [ProductQuantity])
VALUES	(@ProductID_Input, @ProductQuantity_Input)

--SELECT @ProductID_Output = SCOPE_IDENTITY()

SET IDENTITY_INSERT ProductQuantities OFF

END
GO


-- ----------------------------
-- Procedure structure for ProcedureInsertProductsQuantitiesProducts
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertProductsQuantitiesProducts]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertProductsQuantitiesProducts]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertProductsQuantitiesProducts]

@ProductID_Input int,
@ProductQuantity_Input int
--@ProductID_Output int OUTPUT

AS

BEGIN

SET IDENTITY_INSERT ProductQuantities ON

INSERT INTO	[dbo].[ProductQuantities] ([ProductID], [ProductQuantity])
VALUES	(@ProductID_Input, @ProductQuantity_Input)

--SELECT @ProductID_Output = SCOPE_IDENTITY()

SET IDENTITY_INSERT ProductQuantities OFF

END
GO


-- ----------------------------
-- Procedure structure for ProcedureInsertProductsV3
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertProductsV3]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertProductsV3]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertProductsV3]
@ProductSKUID INT,
@ProductNameID INT,
@ProductBrandID INT,
@ProductPriceID INT,
@ProductVariableCostID INT,
@ProductStartFactorID INT,
@ProductGrowthFactorID INT,
@ProductID_Output int OUTPUT

AS BEGIN
	INSERT INTO [dbo].[ProductsV5] (
		[ProductSKUID],
		[ProductNameID],
		[ProductBrandID],
		[ProductPriceID],
		[ProductVariableCostID],
		[ProductStartFactorID],
		[ProductGrowthFactorID]
	)
	VALUES
		(
			@ProductSKUID, @ProductNameID, @ProductBrandID, @ProductPriceID, @ProductVariableCostID, @ProductStartFactorID, @ProductGrowthFactorID
		)
	
		SELECT @ProductID_Output = SCOPE_IDENTITY()
	
END
GO


-- ----------------------------
-- Procedure structure for ProcedureUpdateProductsQuantity
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureUpdateProductsQuantity]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureUpdateProductsQuantity]
GO

CREATE PROCEDURE [dbo].[ProcedureUpdateProductsQuantity]

@ProductIDUpdate INT,
@QuantityUpdate INT

AS

BEGIN

UPDATE
	[dbo].[ProductQuantities]
SET
	ProductQuantity = @QuantityUpdate
WHERE
	ProductID = @ProductIDUpdate
		
END
GO


-- ----------------------------
-- Procedure structure for ProcedureDeleteProductsQuantity
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureDeleteProductsQuantity]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureDeleteProductsQuantity]
GO

CREATE PROCEDURE [dbo].[ProcedureDeleteProductsQuantity]

@ProductIDDelete INT

AS

BEGIN

DELETE
FROM
	[dbo].[ProductQuantities]
WHERE
	ProductID = @ProductIDDelete
		
END
GO


-- ----------------------------
-- Procedure structure for ProcedureInsertProductsNameProductsV2
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertProductsNameProductsV2]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertProductsNameProductsV2]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertProductsNameProductsV2]

@ProductName varchar(50),
@ProductName_Output int OUTPUT

AS
BEGIN

IF EXISTS (SELECT * FROM ProductNames WHERE ProductName = @ProductName)
BEGIN
--do what you need if exists
SELECT @ProductName_Output = ProductNames.ProductID FROM ProductNames WHERE ProductName = @ProductName
END
ELSE
BEGIN
--do what needs to be done if not
--Run proceedure for insert brand
INSERT INTO	[dbo].[ProductNames] ([ProductName])
VALUES	(@ProductName)

SELECT @ProductName_Output = SCOPE_IDENTITY()

END
END
GO


-- ----------------------------
-- Procedure structure for ProcedureInsertProductsStartFactorProducts
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertProductsStartFactorProducts]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertProductsStartFactorProducts]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertProductsStartFactorProducts]

@ProductStartFactor bigint,
@ProductStartFactor_Output int OUTPUT

AS

BEGIN

INSERT INTO	[dbo].[ProductStartFactors] ([ProductStartFactor])
VALUES	(@ProductStartFactor)

SELECT @ProductStartFactor_Output = SCOPE_IDENTITY()

END
GO


-- ----------------------------
-- Procedure structure for ProcedureInsertProductsGrowthFactorProducts
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertProductsGrowthFactorProducts]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertProductsGrowthFactorProducts]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertProductsGrowthFactorProducts]

@ProductGrowthFactor bigint,
@ProductGrowthFactor_Output int OUTPUT

AS

BEGIN

INSERT INTO	[dbo].[ProductGrowthFactors] ([ProductGrowthFactor])
VALUES	(@ProductGrowthFactor)

SELECT @ProductGrowthFactor_Output = SCOPE_IDENTITY()

END
GO


-- ----------------------------
-- Procedure structure for ProcedureInsertProductsMaterialsV2
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertProductsMaterialsV2]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertProductsMaterialsV2]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertProductsMaterialsV2]

@ProductID_Input int,
@MaterialID_Input int,
@ProductID_Output int OUTPUT

AS

BEGIN

SET IDENTITY_INSERT ProductMaterials ON

INSERT INTO	[dbo].[ProductMaterials] ([ProductID], [MaterialID])
VALUES	(@ProductID_Input, @MaterialID_Input)

SELECT @ProductID_Output = SCOPE_IDENTITY()

SET IDENTITY_INSERT ProductMaterials OFF

END
GO


-- ----------------------------
-- Procedure structure for ProcedureInsertMaterialProductsV3
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertMaterialProductsV3]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertMaterialProductsV3]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertMaterialProductsV3] @MaterialInsertAmount_Input INT,
@MaterialName VARCHAR ( 50 ),
@MaterialID_Output INT OUTPUT AS BEGIN
	DECLARE
		@MaterialInsertAmount_Counter INT 
		SET @MaterialInsertAmount_Counter = 0
	WHILE
			@MaterialInsertAmount_Counter < @MaterialInsertAmount_Input BEGIN
			IF
				EXISTS ( SELECT * FROM Materials WHERE MaterialName = @MaterialName ) BEGIN--do what you need if exists
				SELECT
					@MaterialID_Output = Materials.MaterialID 
				FROM
					Materials 
				WHERE
					MaterialName = @MaterialName 
					END ELSE BEGIN--do what needs to be done if not
--Run proceedure for insert brand
					INSERT INTO [dbo].[Materials] ( [MaterialName] )
				VALUES
					( @MaterialName ) SELECT
					@MaterialID_Output = SCOPE_IDENTITY()  
				END 
				SET @MaterialInsertAmount_Counter = @MaterialInsertAmount_Counter + 1
			END 
END
GO


-- ----------------------------
-- Procedure structure for ProcedureInsertProductsMaterialsV3
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertProductsMaterialsV3]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertProductsMaterialsV3]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertProductsMaterialsV3]

@ProductID_Input INT,
@MaterialName_Input varchar(50)

AS

BEGIN

DECLARE @MaterialID_Input INT, @MaterialID_Output INT

SET IDENTITY_INSERT ProductMaterials ON

--IF MaterialName exists
IF EXISTS (SELECT * FROM Materials WHERE MaterialName = @MaterialName_Input)
BEGIN
SELECT @MaterialID_Output = Materials.MaterialID FROM Materials WHERE MaterialName = @MaterialName_Input

INSERT INTO	[dbo].[ProductMaterials] ([ProductID], [MaterialID])
VALUES	(@ProductID_Input, @MaterialID_Output)

END
ELSE
--IF MaterialName dosen't exist
BEGIN

--Step 1 - Insert MaterialName_Input into Materials

INSERT INTO	[dbo].[Materials] ([MaterialName])
VALUES	(@MaterialName_Input)

SELECT @MaterialID_Output = SCOPE_IDENTITY()

--Step 2 - Insert MaterialID_Output into ProductMaterials along with ProductID

INSERT INTO	[dbo].[ProductMaterials] ([ProductID], [MaterialID])
VALUES	(@ProductID_Input, @MaterialID_Output)

--

SET IDENTITY_INSERT ProductMaterials OFF

END
END
GO


-- ----------------------------
-- Procedure structure for ProcedureUpdateProductsV2
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureUpdateProductsV2]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureUpdateProductsV2]
GO

CREATE PROCEDURE [dbo].[ProcedureUpdateProductsV2]

@ProductID_Input INT,
@ProductSKUValue_Input bigint,
@ProductNameValue_Input varchar(50),
@ProductBrandValue_Input varchar(50),
@ProductPriceValue_Input INT,
@ProductVariableCost_Input INT,
@ProductStartFactor_Input INT,
@ProductGrowthFactor_Input INT,
@ProductQuantity_Input INT

AS
BEGIN
--BEGIN

DECLARE
@ProductNameID_Query INT,
@ProductSKUID_Query INT,
@ProductBrandID_Query INT,
@ProductBrandID_Query_Output INT,
@ProductPriceID_Query INT,
@ProductVariableCostID_Query INT,
@ProductStartFactorID_Query INT,
@ProductGrowthFactorID_Query INT,
@ProductQuantityID_Query INT

--ProductName
SELECT @ProductNameID_Query = ProductNameID FROM ProductsV5 WHERE ProductID = @ProductID_Input

UPDATE
	[dbo].[ProductNames]
SET
	ProductName = @ProductNameValue_Input
WHERE
	ProductID = @ProductNameID_Query

--ProductSKU
SELECT @ProductSKUID_Query = ProductSKUID FROM ProductsV5 WHERE ProductID = @ProductID_Input

UPDATE
	[dbo].[ProductSKU]
SET
	ProductSKU = @ProductSKUValue_Input
WHERE
	ProductID = @ProductSKUID_Query
	
--ProductBrand


SELECT @ProductBrandID_Query = ProductBrandID FROM ProductsV5 WHERE ProductID = @ProductID_Input

--UPDATE
--	[dbo].[Brands]
--SET
--	BrandName = @ProductBrandValue_Input
--WHERE
--	BrandID = @ProductBrandID_Query
--
--
	
IF EXISTS (SELECT * FROM Brands WHERE BrandName = @ProductBrandValue_Input)
BEGIN
--do what you need if exists
SELECT @ProductBrandID_Query_Output = Brands.BrandID FROM Brands WHERE BrandName = @ProductBrandValue_Input
END
ELSE
BEGIN
--do what needs to be done if not
--Run proceedure for insert brand
INSERT INTO	[dbo].[Brands] ([BrandName])
VALUES	(@ProductBrandValue_Input)

SELECT @ProductBrandID_Query_Output = SCOPE_IDENTITY()
SET @ProductBrandID_Query = @ProductBrandID_Query_Output

END

--ProductPrice
SELECT @ProductPriceID_Query = ProductPriceID FROM ProductsV5 WHERE ProductID = @ProductID_Input

UPDATE
	[dbo].[ProductPrices]
SET
	ProductPrice = @ProductPriceValue_Input
WHERE
	ProductID = @ProductPriceID_Query

--ProductVariableCosts
SELECT @ProductVariableCostID_Query = ProductVariableCostID FROM ProductsV5 WHERE ProductID = @ProductID_Input

UPDATE
	[dbo].[ProductVariableCosts]
SET
	ProductVariableCost = @ProductVariableCost_Input
WHERE
	ProductID = @ProductVariableCostID_Query

--ProductStart
SELECT @ProductStartFactorID_Query = ProductStartFactorID FROM ProductsV5 WHERE ProductID = @ProductID_Input

UPDATE
	[dbo].[ProductStartFactors]
SET
	ProductStartFactor = @ProductStartFactor_Input
WHERE
	ProductID = @ProductStartFactorID_Query

--ProductGrowth
SELECT @ProductGrowthFactorID_Query = ProductGrowthFactorID FROM ProductsV5 WHERE ProductID = @ProductID_Input

UPDATE
	[dbo].[ProductGrowthFactors]
SET
	ProductGrowthFactor = @ProductGrowthFactor_Input
WHERE
	ProductID = @ProductGrowthFactorID_Query

--ProductQuantity

UPDATE
	[dbo].[ProductQuantities]
SET
	ProductQuantity = @ProductQuantity_Input
WHERE
	ProductID = @ProductID_Input


--END
END
GO


-- ----------------------------
-- Procedure structure for ProcedureUpdateMaterial
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureUpdateMaterial]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureUpdateMaterial]
GO

CREATE PROCEDURE [dbo].[ProcedureUpdateMaterial]

@MaterialIDUpdate INT,
@MaterialNameUpdate varchar(50)

AS

BEGIN

UPDATE
	[dbo].[Materials]
SET
	MaterialName = @MaterialNameUpdate
WHERE
	MaterialID = @MaterialIDUpdate
		
END
GO


-- ----------------------------
-- Procedure structure for ProcedureUpdateProductsBrand
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureUpdateProductsBrand]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureUpdateProductsBrand]
GO

CREATE PROCEDURE [dbo].[ProcedureUpdateProductsBrand]

@BrandIDUpdate INT,
@BrandNameUpdate varchar(50)

AS

BEGIN

UPDATE
	[dbo].[Brands]
SET
	BrandName = @BrandNameUpdate
WHERE
	BrandID = @BrandIDUpdate
		
END
GO


-- ----------------------------
-- Procedure structure for ProcedureUpdateProductsPrice
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureUpdateProductsPrice]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureUpdateProductsPrice]
GO

CREATE PROCEDURE [dbo].[ProcedureUpdateProductsPrice]

@PriceIDUpdate INT,
@PriceValueUpdate bigint

AS

BEGIN

UPDATE
	[dbo].[ProductPrices]
SET
	ProductPrice = @PriceValueUpdate
WHERE
	ProductID = @PriceIDUpdate
		
END
GO


-- ----------------------------
-- Procedure structure for ProcedureUpdateProductsSKU
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureUpdateProductsSKU]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureUpdateProductsSKU]
GO

CREATE PROCEDURE [dbo].[ProcedureUpdateProductsSKU]

@SKUIDUpdate INT,
@SKUValueUpdate bigint

AS

BEGIN

UPDATE
	[dbo].[ProductSKU]
SET
	ProductSKU = @SKUValueUpdate
WHERE
	ProductID = @SKUIDUpdate
		
END
GO


-- ----------------------------
-- Procedure structure for ProcedureUpdateProductsVariableCost
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureUpdateProductsVariableCost]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureUpdateProductsVariableCost]
GO

CREATE PROCEDURE [dbo].[ProcedureUpdateProductsVariableCost]

@VariableCostIDUpdate INT,
@VariableCostValueUpdate bigint

AS

BEGIN

UPDATE
	[dbo].[ProductVariableCosts]
SET
	ProductVariableCost = @VariableCostValueUpdate
WHERE
	ProductID = @VariableCostIDUpdate
		
END
GO


-- ----------------------------
-- Procedure structure for ProcedureUpdateProductsName
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureUpdateProductsName]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureUpdateProductsName]
GO

CREATE PROCEDURE [dbo].[ProcedureUpdateProductsName]

@NameIDUpdate INT,
@NameValueUpdate varchar(50)

AS

BEGIN

UPDATE
	[dbo].[ProductNames]
SET
	ProductName = @NameValueUpdate
WHERE
	ProductID = @NameIDUpdate
		
END
GO


-- ----------------------------
-- Procedure structure for ProcedureUpdateProductsMaterialsOrder
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureUpdateProductsMaterialsOrder]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureUpdateProductsMaterialsOrder]
GO

CREATE PROCEDURE [dbo].[ProcedureUpdateProductsMaterialsOrder]

@ProductMaterialOrderIDUpdate INT,
@ProductMaterialIDValueUpdate INT

AS

BEGIN

UPDATE
	[dbo].[ProductMaterials]
SET
	MaterialID = @ProductMaterialIDValueUpdate
WHERE
	ProductID = @ProductMaterialOrderIDUpdate
		
END
GO


-- ----------------------------
-- Procedure structure for ProcedureDeleteMaterial
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureDeleteMaterial]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureDeleteMaterial]
GO

CREATE PROCEDURE [dbo].[ProcedureDeleteMaterial]

@MaterialIDDelete INT

AS

BEGIN

DELETE
FROM
	[dbo].[Materials]
WHERE
	MaterialID = @MaterialIDDelete
		
END
GO


-- ----------------------------
-- Procedure structure for ProcedureDeleteProductsBrand
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureDeleteProductsBrand]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureDeleteProductsBrand]
GO

CREATE PROCEDURE [dbo].[ProcedureDeleteProductsBrand]

@BrandIDDelete INT

AS

BEGIN

DELETE
FROM
	[dbo].[Brands]
WHERE
	BrandID = @BrandIDDelete
		
END
GO


-- ----------------------------
-- Procedure structure for ProcedureDeleteProductsMaterialsOrder
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureDeleteProductsMaterialsOrder]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureDeleteProductsMaterialsOrder]
GO

CREATE PROCEDURE [dbo].[ProcedureDeleteProductsMaterialsOrder]

@MaterialsOrderIDDelete INT

AS

BEGIN

DELETE
FROM
	[dbo].[ProductMaterials]
WHERE
	ProductID = @MaterialsOrderIDDelete
		
END
GO


-- ----------------------------
-- Procedure structure for ProcedureInsertProductsV2
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertProductsV2]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertProductsV2]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertProductsV2]
@ProductSKUID INT,
@ProductNameID INT,
@ProductBrandID INT,
@ProductPriceID INT,
@ProductVariableCostID INT,
@ProductStartFactorID INT,
@ProductGrowthFactorID INT,
@ProductID_Output int OUTPUT

AS BEGIN
	INSERT INTO [dbo].[ProductsV5] (
		[ProductSKUID],
		[ProductNameID],
		[ProductBrandID],
		[ProductPriceID],
		[ProductVariableCostID],
		[ProductStartFactorID],
		[ProductGrowthFactorID] 
	)
	VALUES
		(
			@ProductSKUID, @ProductNameID, @ProductBrandID, @ProductPriceID, @ProductVariableCostID, @ProductStartFactorID, @ProductGrowthFactorID 
		)
	
		SELECT @ProductID_Output = SCOPE_IDENTITY()
	
END
GO


-- ----------------------------
-- Procedure structure for ProcedureDeleteProductsName
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureDeleteProductsName]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureDeleteProductsName]
GO

CREATE PROCEDURE [dbo].[ProcedureDeleteProductsName]

@NameIDDelete INT

AS

BEGIN

DELETE
FROM
	[dbo].[ProductNames]
WHERE
	ProductID = @NameIDDelete
		
END
GO


-- ----------------------------
-- Procedure structure for ProcedureDeleteProductsPrice
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureDeleteProductsPrice]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureDeleteProductsPrice]
GO

CREATE PROCEDURE [dbo].[ProcedureDeleteProductsPrice]

@PriceIDDelete INT

AS

BEGIN

DELETE
FROM
	[dbo].[ProductPrices]
WHERE
	ProductID = @PriceIDDelete
		
END
GO


-- ----------------------------
-- Procedure structure for ProcedureDeleteProductsSKU
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureDeleteProductsSKU]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureDeleteProductsSKU]
GO

CREATE PROCEDURE [dbo].[ProcedureDeleteProductsSKU]

@SKUIDDelete INT

AS

BEGIN

DELETE
FROM
	[dbo].[ProductSKU]
WHERE
	ProductID = @SKUIDDelete
		
END
GO


-- ----------------------------
-- Procedure structure for ProcedureDeleteProductsVariableCost
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureDeleteProductsVariableCost]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureDeleteProductsVariableCost]
GO

CREATE PROCEDURE [dbo].[ProcedureDeleteProductsVariableCost]

@VariableCostIDDelete INT

AS

BEGIN

DELETE
FROM
	[dbo].[ProductVariableCosts]
WHERE
	ProductID = @VariableCostIDDelete
		
END
GO


-- ----------------------------
-- Procedure structure for ProcedureDeleteProducts
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureDeleteProducts]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureDeleteProducts]
GO

CREATE PROCEDURE [dbo].[ProcedureDeleteProducts]

@ProductIDDelete INT

AS

BEGIN

DELETE
FROM
	[dbo].[ProductsV5]
WHERE
	ProductID = @ProductIDDelete
		
END
GO


-- ----------------------------
-- Procedure structure for ProcedureUpdateProducts
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureUpdateProducts]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureUpdateProducts]
GO

CREATE PROCEDURE [dbo].[ProcedureUpdateProducts]

@ProductIDUpdate INT,
@ProductSKUIDUpdate INT,
@ProductNameIDUpdate INT,
@ProductBrandIDUpdate INT,
@ProductMaterialsOrderIDUpdate INT,
@ProductPriceIDUpdate INT,
@ProductVariableCostIDUpdate INT

AS

BEGIN

UPDATE
	[dbo].[Products]
SET
	ProductSKUID = @ProductSKUIDUpdate,
	ProductNameID = @ProductNameIDUpdate,
	ProductBrandID = @ProductBrandIDUpdate,
	ProductMaterialsOrderID = @ProductMaterialsOrderIDUpdate,
	ProductPriceID = @ProductPriceIDUpdate,
	ProductVariableCostID = @ProductVariableCostIDUpdate
WHERE
	ProductID = @ProductIDUpdate
		
END
GO


-- ----------------------------
-- Procedure structure for ProcedureInsertMaterialProducts
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertMaterialProducts]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertMaterialProducts]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertMaterialProducts]

@MaterialName varchar(50),
@MaterialID_Output INT OUTPUT

AS

BEGIN

INSERT INTO	[dbo].[Materials] ([MaterialName])
VALUES	(@MaterialName)

SELECT @MaterialID_Output = SCOPE_IDENTITY()

END
GO


-- ----------------------------
-- Procedure structure for ProcedureInsertProductsProducts
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertProductsProducts]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertProductsProducts]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertProductsProducts]
@ProductSKUID INT,
@ProductNameID INT,
@ProductBrandID INT,
@ProductMaterialsOrderID INT,
@ProductPriceID INT,
@ProductVariableCostID INT

AS
BEGIN

Insert into [dbo].[Products] ([ProductSKUID], [ProductNameID], [ProductBrandID], [ProductMaterialsOrderID], [ProductPriceID], [ProductVariableCostID]) Values (@ProductSKUID, @ProductNameID, @ProductBrandID, @ProductMaterialsOrderID, @ProductPriceID, @ProductVariableCostID)
	 
END
GO


-- ----------------------------
-- Procedure structure for ProcedureInsertProductsBrandProducts
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertProductsBrandProducts]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertProductsBrandProducts]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertProductsBrandProducts]

@ProductBrandName varchar(50),
@BrandID_Output int OUTPUT

AS

BEGIN

INSERT INTO	[dbo].[Brands] ([BrandName])
VALUES	(@ProductBrandName)

SELECT @BrandID_Output = SCOPE_IDENTITY()

END
GO


-- ----------------------------
-- Procedure structure for ProcedureInsertProductsMaterialsOrderProducts
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertProductsMaterialsOrderProducts]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertProductsMaterialsOrderProducts]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertProductsMaterialsOrderProducts]

@ProductMaterialOrderID INT,
@ProductMaterialOrderID_Output INT OUTPUT

AS

BEGIN

INSERT INTO	[dbo].[ProductMaterials] ([MaterialID])
VALUES	(@ProductMaterialOrderID)

SELECT @ProductMaterialOrderID_Output = SCOPE_IDENTITY()

END
GO


-- ----------------------------
-- Procedure structure for ProcedureInsertProductsNameProducts
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertProductsNameProducts]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertProductsNameProducts]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertProductsNameProducts]

@ProductName varchar(50),
@ProductName_Output int OUTPUT

AS

BEGIN

INSERT INTO	[dbo].[ProductNames] ([ProductName])
VALUES	(@ProductName)

SELECT @ProductName_Output = SCOPE_IDENTITY()

END
GO


-- ----------------------------
-- Procedure structure for ProcedureInsertProductsPriceProducts
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertProductsPriceProducts]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertProductsPriceProducts]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertProductsPriceProducts]

@ProductPrice bigint,
@ProductPrice_Output int OUTPUT

AS

BEGIN

INSERT INTO	[dbo].[ProductPrices] ([ProductPrice])
VALUES	(@ProductPrice)

SELECT @ProductPrice_Output = SCOPE_IDENTITY()

END
GO


-- ----------------------------
-- Procedure structure for ProcedureInsertProductsSKUProducts
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertProductsSKUProducts]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertProductsSKUProducts]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertProductsSKUProducts]

@ProductSKU varchar(50),
@SKUID_Output int OUTPUT

AS

BEGIN

INSERT INTO	[dbo].[ProductSKU] ([ProductSKU])
VALUES	(@ProductSKU)

SELECT @SKUID_Output = SCOPE_IDENTITY()

END
GO


-- ----------------------------
-- Procedure structure for ProcedureInsertProductsVariableCostProducts
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertProductsVariableCostProducts]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertProductsVariableCostProducts]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertProductsVariableCostProducts]

@ProductVariableCost bigint,
@ProductVariableCost_Output int OUTPUT

AS

BEGIN

INSERT INTO	[dbo].[ProductVariableCosts] ([ProductVariableCost])
VALUES	(@ProductVariableCost)

SELECT @ProductVariableCost_Output = SCOPE_IDENTITY()

END
GO


-- ----------------------------
-- Procedure structure for ProcedureInsertProducts
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertProducts]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertProducts]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertProducts] @ProductSKUID INT,
@ProductNameID INT,
@ProductBrandID INT,
@ProductPriceID INT,
@ProductVariableCostID INT,
@ProductStartFactorID INT,
@ProductGrowthFactorID INT,
@ProductID_Output int OUTPUT

AS BEGIN
	INSERT INTO [dbo].[Products] (
		[ProductSKUID],
		[ProductNameID],
		[ProductBrandID],
		[ProductPriceID],
		[ProductVariableCostID],
		[ProductStartFactorID],
		[ProductGrowthFactorID] 
	)
	VALUES
		(
			@ProductSKUID, @ProductNameID, @ProductBrandID, @ProductPriceID, @ProductVariableCostID, @ProductStartFactorID, @ProductGrowthFactorID 
		)
	
		SELECT @ProductID_Output = SCOPE_IDENTITY()
	
END
GO


-- ----------------------------
-- Procedure structure for ProcedureInsertProductsMaterialsOrder
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertProductsMaterialsOrder]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertProductsMaterialsOrder]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertProductsMaterialsOrder]

@ProductMaterialOrderID INT

AS

BEGIN

INSERT INTO	[dbo].[ProductMaterials] ([MaterialID])
VALUES	(@ProductMaterialOrderID)

END
GO


-- ----------------------------
-- Procedure structure for ProcedureInsertProductsBrand
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertProductsBrand]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertProductsBrand]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertProductsBrand]

@ProductBrandName varchar(50)

AS
BEGIN

IF EXISTS (SELECT * FROM Brands WHERE BrandName = @ProductBrandName)
BEGIN
--do what you need if exists
--SELECT @BrandID_Output = Brands.BrandID FROM Brands WHERE BrandName = @ProductBrandName
WAITFOR DELAY '00:00:00'
END
ELSE
BEGIN
--do what needs to be done if not
--Run proceedure for insert brand
INSERT INTO	[dbo].[Brands] ([BrandName])
VALUES	(@ProductBrandName)

END
END
GO


-- ----------------------------
-- Procedure structure for ProcedureInsertProductsSKU
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertProductsSKU]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertProductsSKU]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertProductsSKU]

@ProductSKU varchar(50)

AS

BEGIN

INSERT INTO	[dbo].[ProductSKU] ([ProductSKU])
VALUES	(@ProductSKU)

END
GO


-- ----------------------------
-- Procedure structure for ProcedureInsertProductsPrice
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertProductsPrice]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertProductsPrice]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertProductsPrice]

@ProductPrice bigint

AS

BEGIN

INSERT INTO	[dbo].[ProductPrices] ([ProductPrice])
VALUES	(@ProductPrice)

END
GO


-- ----------------------------
-- Procedure structure for ProcedureInsertProductsName
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertProductsName]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertProductsName]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertProductsName]

@ProductName varchar(50)

AS

BEGIN

INSERT INTO	[dbo].[ProductNames] ([ProductName])
VALUES	(@ProductName)

END
GO


-- ----------------------------
-- Procedure structure for ProcedureInsertProductsVariableCost
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertProductsVariableCost]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertProductsVariableCost]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertProductsVariableCost]

@ProductVariableCost bigint

AS

BEGIN

INSERT INTO	[dbo].[ProductVariableCosts] ([ProductVariableCost])
VALUES	(@ProductVariableCost)

END
GO


-- ----------------------------
-- Procedure structure for ProcedureInsertMaterial
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertMaterial]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertMaterial]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertMaterial]

@MaterialName varchar(50)

AS
BEGIN

IF EXISTS (SELECT * FROM Materials WHERE MaterialName = @MaterialName)
BEGIN
--do what you need if exists
WAITFOR DELAY '00:00:00'
END
ELSE
BEGIN
--do what needs to be done if not
--Run proceedure for insert material
INSERT INTO	[dbo].[Materials] ([MaterialName])
VALUES	(@MaterialName)

END
END
GO


-- ----------------------------
-- Primary Key structure for table Brands
-- ----------------------------
ALTER TABLE [dbo].[Brands] ADD CONSTRAINT [PK__Brands__DAD4F3BE4664A2A2] PRIMARY KEY CLUSTERED ([BrandID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Materials
-- ----------------------------
ALTER TABLE [dbo].[Materials] ADD CONSTRAINT [PK__Material__C50613173CDD3FC6] PRIMARY KEY CLUSTERED ([MaterialID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ProductGrowthFactors
-- ----------------------------
ALTER TABLE [dbo].[ProductGrowthFactors] ADD CONSTRAINT [PK__ProductG__B40CC6EDDA81FF10] PRIMARY KEY CLUSTERED ([ProductID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ProductMaterials
-- ----------------------------
ALTER TABLE [dbo].[ProductMaterials] ADD CONSTRAINT [PK_ProductMaterials] PRIMARY KEY CLUSTERED ([ProductID], [MaterialID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ProductNames
-- ----------------------------
ALTER TABLE [dbo].[ProductNames] ADD CONSTRAINT [PK__ProductN__B40CC6ED451C75B3] PRIMARY KEY CLUSTERED ([ProductID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ProductPrices
-- ----------------------------
ALTER TABLE [dbo].[ProductPrices] ADD CONSTRAINT [PK__ProductP__B40CC6ED1E520DE4] PRIMARY KEY CLUSTERED ([ProductID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ProductQuantities
-- ----------------------------
ALTER TABLE [dbo].[ProductQuantities] ADD CONSTRAINT [PK__ProductQ__B40CC6ED03BBFCA9] PRIMARY KEY CLUSTERED ([ProductID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ProductSKU
-- ----------------------------
ALTER TABLE [dbo].[ProductSKU] ADD CONSTRAINT [PK__ProductS__B40CC6ED55A5FA31] PRIMARY KEY CLUSTERED ([ProductID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ProductStartFactors
-- ----------------------------
ALTER TABLE [dbo].[ProductStartFactors] ADD CONSTRAINT [PK__ProductS__B40CC6ED8D606DF8] PRIMARY KEY CLUSTERED ([ProductID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ProductsV5
-- ----------------------------
ALTER TABLE [dbo].[ProductsV5] ADD CONSTRAINT [PK__Products__B40CC6ED69D29158] PRIMARY KEY CLUSTERED ([ProductID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ProductVariableCosts
-- ----------------------------
ALTER TABLE [dbo].[ProductVariableCosts] ADD CONSTRAINT [PK__ProductV__B40CC6ED079AD059] PRIMARY KEY CLUSTERED ([ProductID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table ProductMaterials
-- ----------------------------
ALTER TABLE [dbo].[ProductMaterials] ADD CONSTRAINT [FK__ProductMa__Mater__3CF40B7E] FOREIGN KEY ([MaterialID]) REFERENCES [dbo].[Materials] ([MaterialID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table ProductsV5
-- ----------------------------
ALTER TABLE [dbo].[ProductsV5] ADD CONSTRAINT [FK__ProductsV__Produ__345EC57D] FOREIGN KEY ([ProductGrowthFactorID]) REFERENCES [dbo].[ProductGrowthFactors] ([ProductID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ProductsV5] ADD CONSTRAINT [FK__ProductsV__Produ__3552E9B6] FOREIGN KEY ([ProductStartFactorID]) REFERENCES [dbo].[ProductStartFactors] ([ProductID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ProductsV5] ADD CONSTRAINT [FK__ProductsV__Produ__36470DEF] FOREIGN KEY ([ProductVariableCostID]) REFERENCES [dbo].[ProductVariableCosts] ([ProductID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ProductsV5] ADD CONSTRAINT [FK__ProductsV__Produ__373B3228] FOREIGN KEY ([ProductPriceID]) REFERENCES [dbo].[ProductPrices] ([ProductID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ProductsV5] ADD CONSTRAINT [FK__ProductsV__Produ__382F5661] FOREIGN KEY ([ProductBrandID]) REFERENCES [dbo].[Brands] ([BrandID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ProductsV5] ADD CONSTRAINT [FK__ProductsV__Produ__39237A9A] FOREIGN KEY ([ProductNameID]) REFERENCES [dbo].[ProductNames] ([ProductID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[ProductsV5] ADD CONSTRAINT [FK__ProductsV__Produ__3A179ED3] FOREIGN KEY ([ProductSKUID]) REFERENCES [dbo].[ProductSKU] ([ProductID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

