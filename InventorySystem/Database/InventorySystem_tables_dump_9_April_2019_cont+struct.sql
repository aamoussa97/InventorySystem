-- -------------------------------------------------------------
-- TablePlus 2.2(212)
--
-- https://tableplus.com/
--
-- Database: lagersystem
-- Generation Time: 2019-04-09 10:30:28.9750
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
    [MaterialName] varchar(100),
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

CREATE TABLE [dbo].[ProductCategories] (
    [ProductCategoryID] int,
    [ProductCategoryName] varchar(50),
    PRIMARY KEY ([ProductCategoryID])
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: sequences, indices, triggers. Do not use it as a backup.

CREATE TABLE [dbo].[ProductMaterials] (
    [ProductID] int,
    [MaterialID] int,
    PRIMARY KEY ([ProductID])
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: sequences, indices, triggers. Do not use it as a backup.

CREATE TABLE [dbo].[ProductNames] (
    [ProductID] int,
    [ProductName] varchar(100),
    PRIMARY KEY ([ProductID])
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: sequences, indices, triggers. Do not use it as a backup.

CREATE TABLE [dbo].[ProductPrices] (
    [ProductID] int,
    [ProductPrice] bigint,
    PRIMARY KEY ([ProductID])
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: sequences, indices, triggers. Do not use it as a backup.

CREATE TABLE [dbo].[ProductQuantity] (
    [ProductID] int,
    [ProductQuantity] bigint,
    PRIMARY KEY ([ProductID])
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: sequences, indices, triggers. Do not use it as a backup.

CREATE TABLE [dbo].[Products] (
    [ProductID] int,
    [ProductSKUID] int DEFAULT ('0'),
    [ProductNameID] int DEFAULT ('0'),
    [ProductBrandID] int DEFAULT ('0'),
    [ProductMaterialsOrderID] int DEFAULT ('0'),
    [ProductPriceID] int DEFAULT ('0'),
    [ProductVariableCostID] int DEFAULT ('0'),
    CONSTRAINT [FK__Products__Produc__4D5F7D71] FOREIGN KEY ([ProductSKUID]) REFERENCES [dbo].[ProductSKU]([ProductID]),
    CONSTRAINT [FK__Products__Produc__51300E55] FOREIGN KEY ([ProductNameID]) REFERENCES [dbo].[ProductNames]([ProductID]),
    CONSTRAINT [FK__Products__Produc__5224328E] FOREIGN KEY ([ProductBrandID]) REFERENCES [dbo].[Brands]([BrandID]),
    CONSTRAINT [FK__Products__Produc__540C7B00] FOREIGN KEY ([ProductVariableCostID]) REFERENCES [dbo].[ProductVariableCosts]([ProductID]),
    CONSTRAINT [FK__Products__Produc__56E8E7AB] FOREIGN KEY ([ProductMaterialsOrderID]) REFERENCES [dbo].[ProductMaterials]([ProductID]),
    CONSTRAINT [FK__Products__Produc__531856C7] FOREIGN KEY ([ProductPriceID]) REFERENCES [dbo].[ProductPrices]([ProductID]),
    PRIMARY KEY ([ProductID])
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: sequences, indices, triggers. Do not use it as a backup.

CREATE TABLE [dbo].[ProductSKU] (
    [ProductID] int,
    [ProductSKU] bigint,
    PRIMARY KEY ([ProductID])
);

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: sequences, indices, triggers. Do not use it as a backup.

CREATE TABLE [dbo].[ProductVariableCosts] (
    [ProductID] int,
    [ProductVariableCost] bigint,
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
('12', 'Finlux'),
('13', 'Acer'),
('14', 'McLaren');

INSERT INTO [dbo].[ProductMaterials] ([ProductID], [MaterialID]) VALUES ('1', '1'),
('2', '2'),
('3', '1'),
('4', '2'),
('5', '1'),
('6', '2');

INSERT INTO [dbo].[ProductNames] ([ProductID], [ProductName]) VALUES ('1', 'Model X'),
('2', 'Macbook Pro'),
('3', 'McLaren P1'),
('4', 'Aspire'),
('5', 'Model Y'),
('6', 'Model S');

INSERT INTO [dbo].[ProductPrices] ([ProductID], [ProductPrice]) VALUES ('1', '650000'),
('2', '13000'),
('3', '1200000'),
('4', '6500'),
('5', '450000'),
('6', '750000');

INSERT INTO [dbo].[Products] ([ProductID], [ProductSKUID], [ProductNameID], [ProductBrandID], [ProductMaterialsOrderID], [ProductPriceID], [ProductVariableCostID]) VALUES ('1', '1', '1', '2', '1', '1', '1'),
('2', '2', '2', '1', '2', '2', '2'),
('3', '3', '3', '14', '3', '3', '3'),
('4', '4', '4', '13', '4', '4', '4'),
('5', '5', '5', '2', '5', '5', '5'),
('6', '6', '6', '2', '6', '6', '6');

INSERT INTO [dbo].[ProductSKU] ([ProductID], [ProductSKU]) VALUES ('1', '361467156733'),
('2', '573823853863'),
('3', '385728978525'),
('4', '285923589275'),
('5', '357825235532'),
('6', '354646434633');

INSERT INTO [dbo].[ProductVariableCosts] ([ProductID], [ProductVariableCost]) VALUES ('1', '45000'),
('2', '3500'),
('3', '100000'),
('4', '1200'),
('5', '35700'),
('6', '33000');

INSERT INTO [dbo].[VariableCosts] ([VariableCostID], [VariableCostValue]) VALUES ('1', '15000'),
('2', '7500'),
('3', '41000');

-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: sequences, indices, triggers. Do not use it as a backup.

CREATE TABLE [dbo].[ViewBrands] (
    [BrandID] int,
    [BrandName] varchar(100)
);
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: sequences, indices, triggers. Do not use it as a backup.

CREATE TABLE [dbo].[ViewProductPrices] (
    [ProductID] int,
    [ProductPrice] bigint
);
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: sequences, indices, triggers. Do not use it as a backup.

CREATE TABLE [dbo].[ViewProducts] (
    [ProductID] int,
    [ProductName] varchar(100),
    [ProductSKU] bigint,
    [BrandName] varchar(100),
    [ProductPrice] bigint,
    [ProductVariableCost] bigint
);
-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: sequences, indices, triggers. Do not use it as a backup.

CREATE TABLE [dbo].[ViewProductVariableCosts] (
    [ProductID] int,
    [ProductVariableCost] bigint
);
