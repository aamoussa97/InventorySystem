-- -------------------------------------------------------------
-- TablePlus 2.2(212)
--
-- https://tableplus.com/
--
-- Database: lagersystem
-- Generation Time: 2019-04-08 11:40:16.6860
-- -------------------------------------------------------------


-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: sequences, indices, triggers. Do not use it as a backup.

CREATE TABLE [dbo].[Brands] (
    [BrandID] int,
    [BrandName] varchar(100),
    PRIMARY KEY ([BrandID])
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: sequences, indices, triggers. Do not use it as a backup.

CREATE TABLE [dbo].[MaterialCategories] (
    [MaterialCategoryID] int,
    [MaterialCategoryName] varchar(50),
    PRIMARY KEY ([MaterialCategoryID])
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: sequences, indices, triggers. Do not use it as a backup.

CREATE TABLE [dbo].[Materials] (
    [MaterialID] int,
    [MaterialSKU] varchar(50),
    [MaterialName] varchar(50),
    [MaterialPrice] varchar(50),
    [MaterialWeight] float,
    [MaterialImage] varchar(100),
    [MaterialUnlimited] tinyint,
    [MaterialLocation] tinyint,
    [MaterialCategoryID] int,
    PRIMARY KEY ([MaterialID])
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: sequences, indices, triggers. Do not use it as a backup.

CREATE TABLE [dbo].[Orders] (
    [OrderID] int,
    [OrderFirstName] varchar(50),
    [OrderLastName] varchar(50),
    [OrderCompany] varchar(50),
    PRIMARY KEY ([OrderID])
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: sequences, indices, triggers. Do not use it as a backup.

CREATE TABLE [dbo].[OrdersProductsList] (
    [OrderID] int,
    [ProductID] int,
    PRIMARY KEY ([OrderID])
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: sequences, indices, triggers. Do not use it as a backup.

CREATE TABLE [dbo].[Prices] (
    [PriceID] bigint,
    [PriceValue] bigint DEFAULT ('0'),
    PRIMARY KEY ([PriceID])
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: sequences, indices, triggers. Do not use it as a backup.

CREATE TABLE [dbo].[ProductCategories] (
    [ProductCategoryID] int,
    [ProductCategoryName] varchar(50),
    PRIMARY KEY ([ProductCategoryID])
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: sequences, indices, triggers. Do not use it as a backup.

CREATE TABLE [dbo].[ProductMaterials] (
    [ProductMaterialsOrderID] int,
    [MaterialID] int,
    PRIMARY KEY ([ProductMaterialsOrderID])
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: sequences, indices, triggers. Do not use it as a backup.

CREATE TABLE [dbo].[Products] (
    [ProductID] int,
    [ProductSKUID] varchar(100) DEFAULT ('0'),
    [ProductNameID] varchar(50) DEFAULT ('0'),
    [ProductBrandID] varchar(50) DEFAULT ('0'),
    [ProductMaterialsOrderID] varchar(50) DEFAULT ('0'),
    [ProductPriceID] bigint DEFAULT ('0'),
    [ProductVariableCostID] bigint DEFAULT ('0'),
    PRIMARY KEY ([ProductID])
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: sequences, indices, triggers. Do not use it as a backup.

CREATE TABLE [dbo].[Supplier] (
    [SupplierID] int,
    [SupplierName] varchar(50),
    [SupplierAddress] varchar(50),
    [SupplierAddressPostal] int,
    [SupplierAddressCity] varchar(20),
    [SupplierMail] varchar(50),
    [SupplierPhone] varchar(50),
    PRIMARY KEY ([SupplierID])
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: sequences, indices, triggers. Do not use it as a backup.

CREATE TABLE [dbo].[TestTable1] (
    [ID] int,
    [Name] text,
    [Price] int,
    [Quantity] int,
    [vCost] int
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: sequences, indices, triggers. Do not use it as a backup.

CREATE TABLE [dbo].[VariableCosts] (
    [VariableCostID] bigint,
    [VariableCostValue] bigint DEFAULT ('0'),
    PRIMARY KEY ([VariableCostID])
);

INSERT INTO [dbo].[Brands] ([BrandID], [BrandName]) VALUES ('1', 'Apple'),
('2', 'Tesla'),
('3', 'Microsoft'),
('4', 'Samsung'),
('5', 'Sony'),
('6', 'LG'),
('7', 'VW'),
('8', 'Skoda'),
('9', 'Ferrari'),
('10', 'Ford'),
('11', 'Toyota'),
('12', 'Finlux');

INSERT INTO [dbo].[Prices] ([PriceID], [PriceValue]) VALUES ('1', '135000'),
('2', '50000'),
('3', '200000');

INSERT INTO [dbo].[Products] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductMaterialsOrderID], [ProductPriceID], [ProductVariableCostID]) VALUES ('1', '361467156733', 'Model X', 'Tesla', '1', '0', '0'),
('2', '573823853863', 'Apple Macbook Pro', 'Apple', '2', '0', '0'),
('3', '385728978525', 'McLaren P1', 'McLaren', '3', '0', '0'),
('4', '285923589275', 'Aspire', 'Acer', '4', '0', '0'),
('5', '357825235532', 'Model Y', 'Tesla', '6', '0', '0'),
('6', '354646434633', 'Model S', 'Telsa', '8', '0', '0');

INSERT INTO [dbo].[TestTable1] ([ID], [Name], [Price], [Quantity], [vCost]) VALUES ('2', 'bil', '30000', '1', '15000'),
('2', 'bil', '30000', '1', '15000'),
('2', 'bil', '30000', '1', '15000'),
('2', 'bil', '30000', '1', '15000'),
('2', 'bil', '30000', '1', '15000');

INSERT INTO [dbo].[VariableCosts] ([VariableCostID], [VariableCostValue]) VALUES ('1', '15000'),
('2', '7500'),
('3', '41000');


