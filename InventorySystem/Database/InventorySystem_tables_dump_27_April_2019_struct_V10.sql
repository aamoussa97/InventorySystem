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

 Date: 27/04/2019 11:30:19
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

ALTER TABLE [dbo].[MaterialCategories] SET (LOCK_ESCALATION = TABLE)
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

ALTER TABLE [dbo].[Orders] SET (LOCK_ESCALATION = TABLE)
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

ALTER TABLE [dbo].[OrdersProductsList] SET (LOCK_ESCALATION = TABLE)
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

ALTER TABLE [dbo].[ProductCategories] SET (LOCK_ESCALATION = TABLE)
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

ALTER TABLE [dbo].[ProductQuantity] SET (LOCK_ESCALATION = TABLE)
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
  [ProductVariableCostID] int DEFAULT ('0') NULL,
  [ProductStartFactorID] int DEFAULT ('0') NULL,
  [ProductGrowthFactorID] int DEFAULT ('0') NULL
)
GO

ALTER TABLE [dbo].[Products] SET (LOCK_ESCALATION = TABLE)
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

ALTER TABLE [dbo].[Supplier] SET (LOCK_ESCALATION = TABLE)
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
-- View structure for ViewProductMaterials
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ViewProductMaterials]') AND type IN ('V'))
	DROP VIEW [dbo].[ViewProductMaterials]
GO

CREATE VIEW [dbo].[ViewProductMaterials] AS SELECT * FROM ProductMaterials
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
-- View structure for ViewProducts
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[ViewProducts]') AND type IN ('V'))
	DROP VIEW [dbo].[ViewProducts]
GO

CREATE VIEW [dbo].[ViewProducts] AS SELECT
	Products.ProductID AS ProductID,
	UPPER(ProductNames.ProductName) AS ProductName,
	ProductSKU.ProductSKU AS ProductSKU,
	UPPER(Brands.BrandName) AS BrandName,
	ProductMaterials.MaterialID AS MaterialID,
	ProductPrices.ProductPrice AS ProductPrice,
	ProductVariableCosts.ProductVariableCost AS ProductVariableCost,
	ProductStartFactors.ProductStartFactor AS ProductStartFactor,
	ProductGrowthFactors.ProductGrowthFactor AS ProductGrowthFactor
FROM
	Products,
	ProductNames,
	ProductSKU,
	Brands,
	ProductMaterials,
	ProductPrices,
	ProductVariableCosts,
	ProductStartFactors,
	ProductGrowthFactors
WHERE
	Products.ProductNameID = ProductNames.ProductID
	AND Products.ProductSKUID = ProductSKU.ProductID
	AND Products.ProductBrandID = Brands.BrandID
	AND Products.ProductPriceID = ProductPrices.ProductID
	AND Products.ProductMaterialsOrderID = ProductMaterials.ProductID
	AND Products.ProductVariableCostID = ProductVariableCosts.ProductID
	AND Products.ProductStartFactorID = ProductStartFactors.ProductID
	AND Products.ProductGrowthFactorID = ProductGrowthFactors.ProductID;
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
	[dbo].[Products]
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
@ProductMaterialsOrderID INT,
@ProductPriceID INT,
@ProductVariableCostID INT,
@ProductStartFactorID INT,
@ProductGrowthFactorID INT AS BEGIN 
INSERT INTO [dbo].[Products] ([ProductSKUID],[ProductNameID],[ProductBrandID],[ProductMaterialsOrderID],[ProductPriceID],[ProductVariableCostID],[ProductStartFactorID],[ProductGrowthFactorID]) VALUES (@ProductSKUID, @ProductNameID, @ProductBrandID, @ProductMaterialsOrderID, @ProductPriceID, @ProductVariableCostID, @ProductStartFactorID, @ProductGrowthFactorID) END
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

INSERT INTO	[dbo].[Brands] ([BrandName])
VALUES	(@ProductBrandName)

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

INSERT INTO	[dbo].[Materials] ([MaterialName])
VALUES	(@MaterialName)

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
-- Primary Key structure for table MaterialCategories
-- ----------------------------
ALTER TABLE [dbo].[MaterialCategories] ADD CONSTRAINT [PK_MaterialCategories] PRIMARY KEY CLUSTERED ([MaterialCategoryID])
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
-- Primary Key structure for table Orders
-- ----------------------------
ALTER TABLE [dbo].[Orders] ADD CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([OrderID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table OrdersProductsList
-- ----------------------------
ALTER TABLE [dbo].[OrdersProductsList] ADD CONSTRAINT [PK_OrdersProductsList] PRIMARY KEY CLUSTERED ([OrderID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table ProductCategories
-- ----------------------------
ALTER TABLE [dbo].[ProductCategories] ADD CONSTRAINT [PK_productCategories] PRIMARY KEY CLUSTERED ([ProductCategoryID])
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
ALTER TABLE [dbo].[ProductMaterials] ADD CONSTRAINT [PK__ProductM__B40CC6ED7C841DE3] PRIMARY KEY CLUSTERED ([ProductID])
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
-- Primary Key structure for table ProductQuantity
-- ----------------------------
ALTER TABLE [dbo].[ProductQuantity] ADD CONSTRAINT [PK__ProductQ__B40CC6ED5E642B5D] PRIMARY KEY CLUSTERED ([ProductID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Products
-- ----------------------------
ALTER TABLE [dbo].[Products] ADD CONSTRAINT [PK__Products__B40CC6ED004FE857] PRIMARY KEY CLUSTERED ([ProductID])
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
-- Primary Key structure for table ProductVariableCosts
-- ----------------------------
ALTER TABLE [dbo].[ProductVariableCosts] ADD CONSTRAINT [PK__ProductV__B40CC6ED079AD059] PRIMARY KEY CLUSTERED ([ProductID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table Supplier
-- ----------------------------
ALTER TABLE [dbo].[Supplier] ADD CONSTRAINT [PK_Supplier] PRIMARY KEY CLUSTERED ([SupplierID])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table ProductMaterials
-- ----------------------------
ALTER TABLE [dbo].[ProductMaterials] ADD CONSTRAINT [FK__ProductMa__Mater__078C1F06] FOREIGN KEY ([MaterialID]) REFERENCES [dbo].[Materials] ([MaterialID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table Products
-- ----------------------------
ALTER TABLE [dbo].[Products] ADD CONSTRAINT [FK__Products__Produc__531856C7] FOREIGN KEY ([ProductPriceID]) REFERENCES [dbo].[ProductPrices] ([ProductID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Products] ADD CONSTRAINT [FK__Products__Produc__540C7B00] FOREIGN KEY ([ProductVariableCostID]) REFERENCES [dbo].[ProductVariableCosts] ([ProductID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Products] ADD CONSTRAINT [FK__Products__Produc__0E6E26BF] FOREIGN KEY ([ProductStartFactorID]) REFERENCES [dbo].[ProductStartFactors] ([ProductID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Products] ADD CONSTRAINT [FK__Products__Produc__0F624AF8] FOREIGN KEY ([ProductGrowthFactorID]) REFERENCES [dbo].[ProductGrowthFactors] ([ProductID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Products] ADD CONSTRAINT [FK__Products__Produc__0880433F] FOREIGN KEY ([ProductMaterialsOrderID]) REFERENCES [dbo].[ProductMaterials] ([ProductID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Products] ADD CONSTRAINT [FK__Products__Produc__4D5F7D71] FOREIGN KEY ([ProductSKUID]) REFERENCES [dbo].[ProductSKU] ([ProductID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Products] ADD CONSTRAINT [FK__Products__Produc__51300E55] FOREIGN KEY ([ProductNameID]) REFERENCES [dbo].[ProductNames] ([ProductID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[Products] ADD CONSTRAINT [FK__Products__Produc__5224328E] FOREIGN KEY ([ProductBrandID]) REFERENCES [dbo].[Brands] ([BrandID]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

