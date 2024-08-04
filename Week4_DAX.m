Cost per Click = 
DIVIDE(
    [Online Spend],
    [Online Clicks],
    0
)

Cost per click latest month = 
CALCULATE(
    [Cost per Click],DATESMTD('Calendar Table'[Date])
)

Cost per click target = 
CALCULATE(
    [Cost per Click],PREVIOUSMONTH('Calendar Table'[Date])
) * 0.98

Marketing as a proportion revenue = 
DIVIDE(
    [Total Marketing Spend],
    [Revenue],
    0
)

Coupon Spend = SUM('VPC data'[Sum of Spend])

CTR Latest Month = 
CALCULATE(
    [Online CTR],DATESMTD('Calendar Table'[Date])
)

CTR Target = 
CALCULATE(
    [Online CTR],PREVIOUSMONTH('Calendar Table'[Date])
) * 1.05

Revenue = sum('POS data'[Revenue($)])
Total Marketing Spend = [Online Spend] + [Coupon Spend]
Units Sold = sum('POS data'[Units_sold])
Web Traffic = sum('POS data'[Page_traffic])

Web traffic latest month = 
CALCULATE(
    [Web Traffic],DATESMTD('Calendar Table'[Date])
)

Web traffic target = 
CALCULATE(
    [Web Traffic],PREVIOUSMONTH('Calendar Table'[Date])
) * 1.10

Online Clicks = sum('Online data'[Online_Clicks])
Online Impressions = sum('Online data'[Online_Impressions])
Online CTR = 
DIVIDE(
    [Online Clicks],
    [Online Impressions],
    0
)

#
# SKU Codes Table
#
SKU Codes = 
DISTINCT(
UNION(
    DISTINCT('Online data'[SKU_ID]),
    DISTINCT('POS data'[SKU_ID])
)
)

