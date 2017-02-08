CREATE TABLE dbo.Issue(
	IssueId INT NOT NULL,
	StateJson NVARCHAR(MAX) NOT NULL,
 CONSTRAINT PK_Issue PRIMARY KEY CLUSTERED 
(
	IssueId ASC
)
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

INSERT INTO Issue
VALUES
( 1, N'{"Issue":{"Id":1847526212,"IssuerName":"Apple-BioK","Symbol":"APPLBK","Cusip":"CUSIP1","InternationalAccount":null,"ControlAccount":null,"ManagedAccount":null,"OfferDate":"2016-01-18T00:00:00","SettlementDate":"2016-01-26T00:00:00","TypeCode":"V","SettleWithIssuerBrokerId":1877506027},"Tranche":{"Id":1847521696,"Product":{"Id":1847518347,"Name":"BOND","OfferPrice":900.00000000,"SellingConcession":1.00000000,"CurrencyCode":"USD","PercentOfPar":null,"Coupon":null,"Maturity":"2","RegistrationType":0,"SettlementLocation":"Location"}},"Broker":{"Id":1877506219,"Name":"Virtual Company","DtcNum":"001","Role":"Joint Bookrunner","MasterId":1857483660,"IsProxyClient":false},"Quantity":1,"Price":899.00000000,"TradeType":0,"BuyOrSell":1}' ), 
( 2, N'{"Issue":{"Id":1847526213,"IssuerName":"Apple-BioK","Symbol":"APPLBK","Cusip":"CUSIP2","InternationalAccount":null,"ControlAccount":null,"ManagedAccount":null,"OfferDate":"2016-01-18T00:00:00","SettlementDate":"2016-01-26T00:00:00","TypeCode":"V","SettleWithIssuerBrokerId":1877506027},"Tranche":{"Id":1847521696,"Product":{"Id":1847518347,"Name":"BOND","OfferPrice":901.00000000,"SellingConcession":1.00000000,"CurrencyCode":"GBP","PercentOfPar":null,"Coupon":null,"Maturity":"2","RegistrationType":0,"SettlementLocation":"Location"}},"Broker":{"Id":1877506219,"Name":"Virtual Company","DtcNum":"002","Role":"Joint Bookrunner","MasterId":1857483660,"IsProxyClient":false},"Quantity":2,"Price":1890.00000000,"TradeType":0,"BuyOrSell":1}' ), 
( 3, N'{"Issue":{"Id":1847526214,"IssuerName":"Apple-BioK","Symbol":"APPLBK","Cusip":"CUSIP3","InternationalAccount":null,"ControlAccount":null,"ManagedAccount":null,"OfferDate":"2016-01-18T00:00:00","SettlementDate":"2016-01-26T00:00:00","TypeCode":"V","SettleWithIssuerBrokerId":1877506027},"Tranche":{"Id":1847521696,"Product":{"Id":1847518347,"Name":"BOND","OfferPrice":902.00000000,"SellingConcession":1.00000000,"CurrencyCode":"EUR","PercentOfPar":null,"Coupon":null,"Maturity":"2","RegistrationType":0,"SettlementLocation":"Location"}},"Broker":{"Id":1877506219,"Name":"Virtual Company","DtcNum":"003","Role":"Joint Bookrunner","MasterId":1857483660,"IsProxyClient":false},"Quantity":0,"Price":99.00000000,"TradeType":0,"BuyOrSell":1}' ),
( 4, N'"Issue":{"Id":1847526215,"IssuerName":"Apple-BioK","Symbol":"APPLBK","Cusip":"CUSIP3","InternationalAccount":null,"ControlAccount":null,"ManagedAccount":null,"OfferDate":"2016-01-18T00:00:00","SettlementDate":"2016-01-26T00:00:00","TypeCode":"V","SettleWithIssuerBrokerId":1877506027},"Tranche":{"Id":1847521696,"Product":{"Id":1847518347,"Name":"BOND","OfferPrice":903.00000000,"SellingConcession":1.00000000,"CurrencyCode":"EUR","PercentOfPar":null,"Coupon":null,"Maturity":"2","RegistrationType":0,"SettlementLocation":"Location"}},"Broker":{"Id":1877506219,"Name":"Virtual Company","DtcNum":"003","Role":"Joint Bookrunner","MasterId":1857483660,"IsProxyClient":false},"Quantity":0,"Price":99.00000000,"TradeType":0,"BuyOrSell":1}' )

GO
