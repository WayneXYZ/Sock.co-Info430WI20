use Sockmonster


CREATE TABLE [ARTIST] (
  [ArtistID] INT IDENTITY(1,1) PRIMARY KEY,
  [ArtistFName] VARCHAR(50),
  [ArtistLName] VARCHAR(50),
  [ArtistDOB] DATE,
  [ArtistTypeID] 
);


CREATE TABLE [PRODUCTION_RUN] (
  [ProductionID] ,
  [ProductionDate] ,
  [Cost] ,
  [OrderID] ,
  [ManufacturerID] 
);


CREATE TABLE [MEASUREMENT] (
  [SockID] ,
  [Length] VARCHAR(50),
  [Size] 
);


CREATE TABLE [SOCK] (
  [SockID] ,
  [SockName] VARCHAR(50),
  [SockDesc] VARCHAR(200),
  [MaterialID] ,
  [ArtistID] ,
  [MeasurementID] ,
  [SockTypeID] ,
);


CREATE TABLE [MANUFACTURER] (
  [MfgID] ,
  [MfgName] VARCHAR(50),
  [MfgDesc] VARCHAR(200),
  [LocationID] INT
);

CREATE INDEX [FK] ON  [MANUFACTURER] ([LocationID]);

CREATE TABLE [REGION] (
  [RegionID] ,
  [RegionName] 
);

CREATE INDEX [Key] ON  [REGION] ([RegionID]);

CREATE TABLE [COUNTRY] (
  [CountryID] ,
  [CountryName] ,
  [RegionID] ,
  PRIMARY KEY ([CountryID])
);

CREATE INDEX [FK] ON  [COUNTRY] ([RegionID]);

CREATE TABLE [LOCATION] (
  [LocationID] ,
  [Address] ,
  [ZIP] ,
  [CityID] ,
  PRIMARY KEY ([LocationID])
);

CREATE INDEX [FK] ON  [LOCATION] ([CityID]);

CREATE TABLE [SOURCE] (
  [SourceID] ,
  [SourceName] ,
  [SourceDesc] ,
  [MaterialID] ,
  [LocationID] ,
  PRIMARY KEY ([SourceID])
);

CREATE INDEX [FK] ON  [SOURCE] ([MaterialID], [LocationID]);

CREATE TABLE [CUSTOMER_TYPE] (
  [CustTypeID] ,
  [CustTypeName] ,
  [CustTypeDesc] ,
  PRIMARY KEY ([CustTypeID])
);

CREATE TABLE [ORDER_ITEM] (
  [OrderItemID] ,
  [Qty] ,
  [Price] ,
  [SockID] ,
  [OrderID] ,
  PRIMARY KEY ([OrderItemID])
);

CREATE INDEX [FK] ON  [ORDER_ITEM] ([SockID], [OrderID]);

CREATE TABLE [SOCK_TYPE] (
  [SockTypeID] ,
  [SockTypeName] ,
  [SockTypeDesc] ,
  PRIMARY KEY ([SockTypeID])
);

CREATE TABLE [CITY] (
  [CItyID] ,
  [CityName] ,
  [CountryID] ,
  PRIMARY KEY ([CItyID])
);

CREATE TABLE [MATERIAL] (
  [MaterialID] ,
  [MaterialName] ,
  [MaterialDesc] ,
  PRIMARY KEY ([MaterialID])
);

CREATE TABLE [MANUFACTURER_SOURCE] (
  [MfSourceID] ,
  [SourceID] ,
  [ManufaturerID] ,
  PRIMARY KEY ([MfSourceID])
);

CREATE INDEX [FK] ON  [MANUFACTURER_SOURCE] ([SourceID], [ManufaturerID]);

CREATE TABLE [ARTIST_TYPE] (
  [ArtistTypeID] ,
  [ArtistTypeName] ,
  [ArtistTypeDesc] ,
  PRIMARY KEY ([ArtistTypeID])
);

CREATE TABLE [CUSTOMER] (
  [CustID] ,
  [CustFName] ,
  [CustLName] ,
  [CustBirth?] ,
  [Location] ,
  [CustTypeID] ,
  PRIMARY KEY ([CustID])
);

CREATE INDEX [FK] ON  [CUSTOMER] ([Location], [CustTypeID]);

CREATE TABLE [ORDER] (
  [OrderID] ,
  [OrderName] ,
  [Date] ,
  [CustID] ,
  PRIMARY KEY ([OrderID])
);

CREATE INDEX [FK] ON  [ORDER] ([CustID]);

CREATE TABLE [MATERIAL_SOURCE] (
  [MatSourID] ,
  [MaterialID] ,
  [SourceID] ,
  PRIMARY KEY ([MatSourID])
);

CREATE INDEX [FK] ON  [MATERIAL_SOURCE] ([MaterialID], [SourceID]);

