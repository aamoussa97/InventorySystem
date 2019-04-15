/*
 Navicat Premium Data Transfer

 Source Server         : Azure InventorySystem
 Source Server Type    : SQL Server
 Source Server Version : 12001300
 Source Host           : lagerservice.database.windows.net:1433
 Source Catalog        : lagersystem
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 12001300
 File Encoding         : 65001

 Date: 15/04/2019 23:06:32
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

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'8', N'Skoda')
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

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'83', N'Tesla')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'84', N'Tesla')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'85', N'Tesla')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'86', N'Tesla')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'87', N'Tesla')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'88', N'Tesla')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'89', N'Tesla')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'90', N'Tesla')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'91', N'Tesla')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'92', N'Tesla')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'93', N'Tesla')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'94', N'Tesla')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'95', N'Tesla')
GO

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES (N'96', N'Tesla')
GO

SET IDENTITY_INSERT [dbo].[Brands] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for MaterialCategories
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[MaterialCategories]') AND type IN ('U'))
	DROP TABLE [dbo].[MaterialCategories]
GO

CREATE TABLE [dbo].[MaterialCategories] (
  [MaterialCategoryID] int  NOT NULL,
  [MaterialCategoryName] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
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

SET IDENTITY_INSERT [dbo].[Materials] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for Orders
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Orders]') AND type IN ('U'))
	DROP TABLE [dbo].[Orders]
GO

CREATE TABLE [dbo].[Orders] (
  [OrderID] int  NOT NULL,
  [OrderFirstName] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [OrderLastName] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [OrderCompany] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO


-- ----------------------------
-- Table structure for OrdersProductsList
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[OrdersProductsList]') AND type IN ('U'))
	DROP TABLE [dbo].[OrdersProductsList]
GO

CREATE TABLE [dbo].[OrdersProductsList] (
  [OrderID] int  NOT NULL,
  [ProductID] int  NOT NULL
)
GO


-- ----------------------------
-- Table structure for ProductCategories
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductCategories]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductCategories]
GO

CREATE TABLE [dbo].[ProductCategories] (
  [ProductCategoryID] int  NOT NULL,
  [ProductCategoryName] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
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


-- ----------------------------
-- Records of ProductMaterials
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[ProductMaterials] ON
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'1', N'4')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'2', N'5')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'3', N'6')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'4', N'6')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'5', N'5')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'6', N'4')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'7', N'5')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'8', N'4')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'9', N'6')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'11', N'5')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'12', N'4')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'13', N'4')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'14', N'4')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'15', N'4')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'16', N'4')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'17', N'6')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'18', N'6')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'19', N'6')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'20', N'6')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'21', N'6')
GO

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES (N'22', N'5')
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

SET IDENTITY_INSERT [dbo].[ProductPrices] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for ProductQuantity
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProductQuantity]') AND type IN ('U'))
	DROP TABLE [dbo].[ProductQuantity]
GO

CREATE TABLE [dbo].[ProductQuantity] (
  [ProductID] int  IDENTITY(1,1) NOT NULL,
  [ProductQuantity] bigint  NOT NULL
)
GO


-- ----------------------------
-- Table structure for Products
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Products]') AND type IN ('U'))
	DROP TABLE [dbo].[Products]
GO

CREATE TABLE [dbo].[Products] (
  [ProductID] int  IDENTITY(1,1) NOT NULL,
  [ProductSKUID] int DEFAULT ('0') NULL,
  [ProductNameID] int DEFAULT ('0') NULL,
  [ProductBrandID] int DEFAULT ('0') NULL,
  [ProductMaterialsOrderID] int DEFAULT ('0') NULL,
  [ProductPriceID] int DEFAULT ('0') NULL,
  [ProductVariableCostID] int DEFAULT ('0') NULL
)
GO


-- ----------------------------
-- Records of Products
-- ----------------------------
BEGIN TRANSACTION
GO

SET IDENTITY_INSERT [dbo].[Products] ON
GO

INSERT INTO [dbo].[Products] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductMaterialsOrderID], [ProductPriceID], [ProductVariableCostID]) VALUES (N'1', N'1', N'1', N'2', N'1', N'1', N'1')
GO

INSERT INTO [dbo].[Products] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductMaterialsOrderID], [ProductPriceID], [ProductVariableCostID]) VALUES (N'2', N'2', N'2', N'1', N'2', N'2', N'2')
GO

INSERT INTO [dbo].[Products] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductMaterialsOrderID], [ProductPriceID], [ProductVariableCostID]) VALUES (N'3', N'3', N'3', N'14', N'3', N'3', N'3')
GO

INSERT INTO [dbo].[Products] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductMaterialsOrderID], [ProductPriceID], [ProductVariableCostID]) VALUES (N'4', N'4', N'4', N'13', N'4', N'4', N'4')
GO

INSERT INTO [dbo].[Products] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductMaterialsOrderID], [ProductPriceID], [ProductVariableCostID]) VALUES (N'5', N'5', N'5', N'2', N'5', N'5', N'5')
GO

INSERT INTO [dbo].[Products] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductMaterialsOrderID], [ProductPriceID], [ProductVariableCostID]) VALUES (N'6', N'6', N'6', N'2', N'6', N'6', N'6')
GO

INSERT INTO [dbo].[Products] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductMaterialsOrderID], [ProductPriceID], [ProductVariableCostID]) VALUES (N'8', N'6', N'6', N'2', N'6', N'6', N'6')
GO

INSERT INTO [dbo].[Products] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductMaterialsOrderID], [ProductPriceID], [ProductVariableCostID]) VALUES (N'26', N'26', N'25', N'88', N'14', N'25', N'28')
GO

INSERT INTO [dbo].[Products] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductMaterialsOrderID], [ProductPriceID], [ProductVariableCostID]) VALUES (N'30', N'26', N'25', N'88', N'15', N'25', N'28')
GO

INSERT INTO [dbo].[Products] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductMaterialsOrderID], [ProductPriceID], [ProductVariableCostID]) VALUES (N'36', N'33', N'32', N'95', N'21', N'32', N'35')
GO

INSERT INTO [dbo].[Products] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductMaterialsOrderID], [ProductPriceID], [ProductVariableCostID]) VALUES (N'37', N'34', N'33', N'96', N'22', N'33', N'36')
GO

SET IDENTITY_INSERT [dbo].[Products] OFF
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

SET IDENTITY_INSERT [dbo].[ProductSKU] OFF
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

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'34', N'165000')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'35', N'165000')
GO

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES (N'36', N'140000')
GO

SET IDENTITY_INSERT [dbo].[ProductVariableCosts] OFF
GO

COMMIT
GO


-- ----------------------------
-- Table structure for Supplier
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[Supplier]') AND type IN ('U'))
	DROP TABLE [dbo].[Supplier]
GO

CREATE TABLE [dbo].[Supplier] (
  [SupplierID] int  NOT NULL,
  [SupplierName] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [SupplierAddress] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [SupplierAddressPostal] int  NOT NULL,
  [SupplierAddressCity] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [SupplierMail] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL,
  [SupplierPhone] varchar(50) COLLATE SQL_Latin1_General_CP1_CI_AS  NOT NULL
)
GO


-- ----------------------------
-- View structure for ViewBrands
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ViewBrands]') AND type IN ('V'))
	DROP VIEW [dbo].[ViewBrands]
GO

CREATE VIEW [dbo].[ViewBrands] AS SELECT * FROM Brands
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
-- View structure for ViewProducts
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ViewProducts]') AND type IN ('V'))
	DROP VIEW [dbo].[ViewProducts]
GO

CREATE VIEW [dbo].[ViewProducts] AS SELECT
	Products.ProductID,
	ProductNames.ProductName,
	ProductSKU.ProductSKU,
	Brands.BrandName,
	ProductMaterials.MaterialID,
	ProductPrices.ProductPrice,
	ProductVariableCosts.ProductVariableCost
FROM
	Products,
	ProductNames,
	ProductSKU,
	Brands,
	Materials,
	ProductMaterials,
	ProductPrices,
	ProductVariableCosts
WHERE
	Products.ProductID = ProductNames.ProductID
	AND Products.ProductSKUID = ProductSKU.ProductID
	AND Products.ProductBrandID = Brands.BrandID
	AND Products.ProductPriceID = ProductPrices.ProductID
	AND Products.ProductMaterialsOrderID = ProductMaterials.ProductID
	AND Products.ProductVariableCostID = ProductVariableCosts.ProductID;
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
-- Procedure structure for ProcedureInsertProducts
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertProducts]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertProducts]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertProducts]
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
-- Procedure structure for ProcedureInsertProductsMaterialsOrder
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertProductsMaterialsOrder]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertProductsMaterialsOrder]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertProductsMaterialsOrder]

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
-- Procedure structure for ProcedureInsertProductsBrand
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertProductsBrand]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertProductsBrand]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertProductsBrand]

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
-- Procedure structure for ProcedureInsertProductsSKU
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertProductsSKU]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertProductsSKU]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertProductsSKU]

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
-- Procedure structure for ProcedureInsertProductsPrice
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertProductsPrice]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertProductsPrice]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertProductsPrice]

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
-- Procedure structure for ProcedureInsertProductsName
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertProductsName]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertProductsName]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertProductsName]

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
-- Procedure structure for ProcedureInsertProductsVariableCost
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertProductsVariableCost]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertProductsVariableCost]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertProductsVariableCost]

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
-- Procedure structure for ProcedureInsertMaterial
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ProcedureInsertMaterial]') AND type IN ('P', 'PC', 'RF', 'X'))
	DROP PROCEDURE[dbo].[ProcedureInsertMaterial]
GO

CREATE PROCEDURE [dbo].[ProcedureInsertMaterial]

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
-- Primary Key structure for table Brands
-- ----------------------------
ALTER TABLE [dbo].[Brands] ADD CONSTRAINT [PK__Brands__DAD4F3BE4664A2A2] PRIMARY KEY CLUSTERED ([BrandID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table MaterialCategories
-- ----------------------------
ALTER TABLE [dbo].[MaterialCategories] ADD CONSTRAINT [PK_MaterialCategories] PRIMARY KEY CLUSTERED ([MaterialCategoryID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table Materials
-- ----------------------------
ALTER TABLE [dbo].[Materials] ADD CONSTRAINT [PK__Material__C50613173CDD3FC6] PRIMARY KEY CLUSTERED ([MaterialID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table Orders
-- ----------------------------
ALTER TABLE [dbo].[Orders] ADD CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([OrderID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table OrdersProductsList
-- ----------------------------
ALTER TABLE [dbo].[OrdersProductsList] ADD CONSTRAINT [PK_OrdersProductsList] PRIMARY KEY CLUSTERED ([OrderID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table ProductCategories
-- ----------------------------
ALTER TABLE [dbo].[ProductCategories] ADD CONSTRAINT [PK_productCategories] PRIMARY KEY CLUSTERED ([ProductCategoryID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table ProductMaterials
-- ----------------------------
ALTER TABLE [dbo].[ProductMaterials] ADD CONSTRAINT [PK__ProductM__B40CC6ED7C841DE3] PRIMARY KEY CLUSTERED ([ProductID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table ProductNames
-- ----------------------------
ALTER TABLE [dbo].[ProductNames] ADD CONSTRAINT [PK__ProductN__B40CC6ED451C75B3] PRIMARY KEY CLUSTERED ([ProductID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table ProductPrices
-- ----------------------------
ALTER TABLE [dbo].[ProductPrices] ADD CONSTRAINT [PK__ProductP__B40CC6ED1E520DE4] PRIMARY KEY CLUSTERED ([ProductID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table ProductQuantity
-- ----------------------------
ALTER TABLE [dbo].[ProductQuantity] ADD CONSTRAINT [PK__ProductQ__B40CC6ED5E642B5D] PRIMARY KEY CLUSTERED ([ProductID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table Products
-- ----------------------------
ALTER TABLE [dbo].[Products] ADD CONSTRAINT [PK__Products__B40CC6ED004FE857] PRIMARY KEY CLUSTERED ([ProductID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table ProductSKU
-- ----------------------------
ALTER TABLE [dbo].[ProductSKU] ADD CONSTRAINT [PK__ProductS__B40CC6ED55A5FA31] PRIMARY KEY CLUSTERED ([ProductID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table ProductVariableCosts
-- ----------------------------
ALTER TABLE [dbo].[ProductVariableCosts] ADD CONSTRAINT [PK__ProductV__B40CC6ED079AD059] PRIMARY KEY CLUSTERED ([ProductID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Primary Key structure for table Supplier
-- ----------------------------
ALTER TABLE [dbo].[Supplier] ADD CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED ([SupplierID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)
GO


-- ----------------------------
-- Foreign Keys structure for table ProductMaterials
-- ----------------------------
ALTER TABLE [dbo].[ProductMaterials] ADD CONSTRAINT [FK__ProductMa__Mater__078C1F06] FOREIGN KEY ([MaterialID]) REFERENCES [dbo].[Materials] ([MaterialID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Products
-- ----------------------------
ALTER TABLE [dbo].[Products] ADD CONSTRAINT [FK__Products__Produc__0880433F] FOREIGN KEY ([ProductMaterialsOrderID]) REFERENCES [dbo].[ProductMaterials] ([ProductID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Products] ADD CONSTRAINT [FK__Products__Produc__4D5F7D71] FOREIGN KEY ([ProductSKUID]) REFERENCES [dbo].[ProductSKU] ([ProductID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Products] ADD CONSTRAINT [FK__Products__Produc__51300E55] FOREIGN KEY ([ProductNameID]) REFERENCES [dbo].[ProductNames] ([ProductID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Products] ADD CONSTRAINT [FK__Products__Produc__5224328E] FOREIGN KEY ([ProductBrandID]) REFERENCES [dbo].[Brands] ([BrandID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Products] ADD CONSTRAINT [FK__Products__Produc__531856C7] FOREIGN KEY ([ProductPriceID]) REFERENCES [dbo].[ProductPrices] ([ProductID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Products] ADD CONSTRAINT [FK__Products__Produc__540C7B00] FOREIGN KEY ([ProductVariableCostID]) REFERENCES [dbo].[ProductVariableCosts] ([ProductID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

