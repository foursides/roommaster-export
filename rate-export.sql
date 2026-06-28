SELECT RATES.RATETYPE AS 'Rate Name',
       RATES.ROOMTYPE AS 'Rate Type',
       RATES.FROMDATE AS 'From Date',
       RATES.TODATE AS 'To Date',
       RATES.RATEDESC,
       RATES.TWOADULT AS 'Two Adults',
       RATES.TWOADULTW AS 'Two Adults Weekend',
       RATES.THREEADULT AS 'Three Adults',
       RATES.THREEADULTW AS 'Three Adults Weekend',
       RATES.FOURADULT AS 'Four Adults',
       RATES.FOURADULTW AS 'Four Adults Weekend',
       RATES.EXTRAADULT AS 'Adults Over Four',
       RATES.EXTRAADULTW AS 'Extra Adult Weekend',
       RATES.CHILDCHARGE AS 'Child Charge',
       RATES.CHILDCHARGEW AS 'Child Charge Weekend',
       RATES.STARTCHILD AS 'Start Charging On X Child',

       CASE 
           WHEN RATES.SUN = 1 THEN 'Yes'
           WHEN RATES.SUN = 0 THEN 'No'
           ELSE '0'
       END AS 'Allow On Sunday',

       CASE 
           WHEN RATES.MON = 1 THEN 'Yes'
           WHEN RATES.MON = 0 THEN 'No'
           ELSE '0'
       END AS 'Allow On Monday',

       CASE 
           WHEN RATES.TUE = 1 THEN 'Yes'
           WHEN RATES.TUE = 0 THEN 'No'
           ELSE '0'
       END AS 'Allow On Tuesday',

       CASE 
           WHEN RATES.WED = 1 THEN 'Yes'
           WHEN RATES.WED = 0 THEN 'No'
           ELSE '0'
       END AS 'Allow On Wednesday',

       CASE 
           WHEN RATES.THU = 1 THEN 'Yes'
           WHEN RATES.THU = 0 THEN 'No'
           ELSE '0'
       END AS 'Allow On Thursday',

       CASE 
           WHEN RATES.FRI = 1 THEN 'Yes'
           WHEN RATES.FRI = 0 THEN 'No'
           ELSE '0'
       END AS 'Allow On Friday',

       CASE 
           WHEN RATES.SAT = 1 THEN 'Yes'
           WHEN RATES.SAT = 0 THEN 'No'
           ELSE '0'
       END AS 'Allow On Saturday',

       RATES.REVACCOUNT AS 'Revenue Account',
       RATES.STAYDAYS AS 'Minimum Number Of Days To Stay',

       CASE 
           WHEN RATES.HIDERATEINFO = 1 THEN 'Yes'
           WHEN RATES.HIDERATEINFO = 0 THEN 'No'
           ELSE '0'
       END AS 'Hide Rate Info',

       RATES.CREATETIME AS 'Created Time',
       RATES.ORATED1,
       RATES.ORATEF1,
       RATES.ORATET1,
       RATES.ORATER1 AS 'One Person Rate',
       RATES.ORATED2,
       RATES.ORATEF2,
       RATES.ORATET2,
       RATES.ORATER2 AS 'One Person Rate',
       RATES.ORATED3,
       RATES.ORATEF3,
       RATES.ORATET3,
       RATES.ORATER3 AS 'One Person Rate',
       RATES.ORATED4,
       RATES.ORATEF4,
       RATES.ORATET4,
       RATES.ORATER4 AS 'One Person Rate',
       RATES.ORATED5,
       RATES.ORATEF5,
       RATES.ORATET5,
       RATES.ORATER5 AS 'One Person Rate',
       RATES.ORATED6,
       RATES.ORATEF6,
       RATES.ORATET6,
       RATES.ORATER6 AS 'One Person Rate',
       RATES.ORATED7,
       RATES.ORATEF7,
       RATES.ORATET7,
       RATES.ORATER7 AS 'One Person Rate',
       RATES.ORATED8,
       RATES.ORATEF8,
       RATES.ORATET8,
       RATES.ORATER8 AS 'One Person Rate',
       RATES.ORATED9,
       RATES.ORATEF9,
       RATES.ORATET9,
       RATES.ORATER9 AS 'One Person Rate',
       RATES.INFO AS 'Expanded Information',
       RATES.RATESID

FROM RATES
ORDER BY RATES.RATETYPE, RATES.ROOMTYPE, RATES.FROMDATE;
