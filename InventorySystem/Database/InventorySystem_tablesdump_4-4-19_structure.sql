-- -------------------------------------------------------------
-- TablePlus 2.2(212)
--
-- https://tableplus.com/
--
-- Database: lagersystem
-- Generation Time: 2019-04-04 20:45:54.5640
-- -------------------------------------------------------------


-- This script only contains the table creation statements and does not fully represent the table in the database. It's still missing: sequences, indices, triggers. Do not use it as a backup.

CREATE TABLE [dbo].[Brands] (
    [BrandID] int,
    [BrandName] varchar(50),
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


