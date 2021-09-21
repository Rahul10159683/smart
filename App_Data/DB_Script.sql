

CREATE TABLE [dbo].OfficeDetails
(
[office] VARCHAR(50) NOT NULL,
[subdivision] VARCHAR(50) NOT NULL, 
[solid] VARCHAR(50) NOT NULL, 
[targetsgiven] INT NOT NULL, 
[targetsachived] INT NOT NULL
)
GO

INSERT INTO PMSCHEMES
Values('Anji','Hyderabad','52212401',255,200)
,('rahul','vijayawada',22201223,334,144)
,('paddu','narasaraopet',33323432,454,234)
,('narasaropet','kukatpally',33322233,344,322)
,('ongole','ongolewest',52121201,445,422)
,('machilipatnam','machilipatnam',52201011,655,344)
,('uppal','Hyderabad',22112111,554,444)
,('srnagar','vijayawada',52201110,443,332)

GO

/*CREATE PROCEDURE [dbo].[usp_GetPersonName]
AS
Begin
Select top 2 office,Targetachived,Targetgiven,(Targetachived * 100.0)/Targetgiven TargetPercentage from [dbo].PMSCHEMES order by (Targetachived * 100.0)/Targetgiven desc
END*/