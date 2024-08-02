numOrders = COUNTROWS('Sales Orders Sheet')
Total Cost = 'Sales Orders Sheet'[Unit Cost] * 'Sales Orders Sheet'[Order Quantity]

#
# Calculate the Net Profit Margin = (Total Revenue - Total Cost)*100/(Total Revenue)
#
Net Profit Margin = 
VAR _Revenue = SUM('Sales Orders Sheet'[Sales Amount])
VAR _Cost = SUM('Sales Orders Sheet'[Total Cost])
VAR _NetProfit = 
DIVIDE(
    _Revenue - _Cost,
    _Revenue,
    0
)
RETURN _NetProfit

