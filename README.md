# Mastering Microsoft Power BI
This is the code repository for [Mastering Microsoft Power BI](https://www.packtpub.com/big-data-and-business-intelligence/mastering-microsoft-power-bi?utm_source=github&utm_medium=repository&utm_campaign=9781788297233), published by [Packt](https://www.packtpub.com/?utm_source=github). It contains all the supporting project files necessary to work through the book from start to finish.
## About the Book
This book is intended for business intelligence professionals responsible for the design and development of Power BI content as well as managers, architects and administrators who oversee Power BI projects and deployments. The chapters flow from the planning of a Power BI project through the development and distribution of content to the administration of Power BI for an organization.

BI developers will learn how to create sustainable and impactful Power BI datasets, reports, and dashboards. This includes connecting to data sources, shaping and enhancing source data, and developing an analytical data model. Additionally, top report and dashboard design practices are described using features such as Bookmarks and the Power KPI visual.

BI managers will learn how Power BI’s tools work together such as with the On-premises data gateway and how content can be staged and securely distributed via Apps. Additionally, both the Power BI Report Server and Power BI Premium are reviewed.

By the end of this book, you will be confident in creating effective charts, tables, reports or dashboards for any kind of data using the tools and techniques in Microsoft PowerBI. 
##Instructions and Navigation
All of the code is organized into folders. Each folder starts with a number followed by the application name. For example, Chapter02.



The code will look like the following:
```
SELECT
P.ProductKey as 'Product Key'
, P.ProductAlternateKey as 'Product Alternate Key'
, P.EnglishProductName AS 'Product Name'
, ISNULL(S.EnglishProductSubcategoryName, 'Undefined') 'Product
Subcategory'
```

A Power BI Pro license and access to the Power BI service is necessary to follow many of the
topics and examples in this book. The assignment of the Power BI Service Administrator
role within the Office 365 admin center, as well as administrative access to an On-premises
data gateway, would also be helpful for the second half of this book. It's assumed that
readers are familiar with the main user interfaces of Power BI Desktop and have some
background in business intelligence or information technology.
The primary data source for the examples in this book was the AdventureWorks data
warehouse sample database for SQL Server 2016 CTP3. A SQL Server 2017 Developer
Edition database engine instance was used to host the sample database. For the import
mode dataset, an Excel workbook stored the sales plan data. For the DirectQuery dataset,
the sales plan data was stored in the sample SQL Server database.
The AdventureWorksDW2016CTP3 sample database can be downloaded
from the following URL:
https://www.microsoft.com/en-us/download/details.aspx?id=49502.
Editions of SQL Server 2017 are available for download from the following
URL:
https://www.microsoft.com/en-us/sql-server/sql-server-downloads.
The Power BI Desktop files and specific queries and scripts utilized in the book are included
in the code bundle. However, the source data and database are not included in the code
bundle. Additionally, the database used by the book contains objects not included in the
downloadable sample database, such as SQL views for each fact and dimension table.
Therefore, even with access to a SQL Server 2017 database engine instance and the sample
AdventureWorks data warehouse database, the examples in the book cannot be completely
reproduced.

## Errata

* The link for the AdventureWorks database mentioned in the Preface is dead as the resource has been moved to a new location. The database can now be downloaded from this link: https://github.com/Microsoft/sql-server-samples/releases/download/adventureworks/AdventureWorksDW2016.bak

## Related Products
* [Microsoft Power BI Cookbook](https://www.packtpub.com/big-data-and-business-intelligence/microsoft-power-bi-cookbook?utm_source=github&utm_medium=repository&utm_campaign=9781788290142)

* [Mastering Blockchain - Second Edition](https://www.packtpub.com/big-data-and-business-intelligence/mastering-blockchain-second-edition?utm_source=github&utm_medium=repository&utm_campaign=9781788839044)

* [Learn Node.js by Building 6 Projects](https://www.packtpub.com/web-development/learn-nodejs-building-6-projects?utm_source=github&utm_medium=repository&utm_campaign=9781788293631)

### Suggestions and Feedback
[Click here](https://docs.google.com/forms/d/e/1FAIpQLSe5qwunkGf6PUvzPirPDtuy1Du5Rlzew23UBp2S-P3wB-GcwQ/viewform) if you have any feedback or suggestions.

### Download a free PDF

 <i>If you have already purchased a print or Kindle version of this book, you can get a DRM-free PDF version at no cost.<br>Simply click on the link to claim your free PDF.</i>
<p align="center"> <a href="https://packt.link/free-ebook/9781788297233">https://packt.link/free-ebook/9781788297233 </a> </p>