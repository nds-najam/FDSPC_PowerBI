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

#
# Logical Functions
#
IF(Condition, Value_if_True, Value_if_False)
AND(Condition-1, Condition-2)
OR(Condition-1, Condition-2)
Logical_OR = IF(Condition1|| Condition2||Condition3||...||ConditionN, Value_if_any_one_is_true, Value_if_none_is_true)
Logical_AND = IF(Condition1|| Condition2||Condition3||...||ConditionN, Value_all_are_true, Value_if_none_is_False)

Electronics (Y/N) = IF('Products Sheet'[Product Name] = "computers"
                        || 'Products Sheet'[Product Name] = "TV and video"
                        || 'Products Sheet'[Product Name] = "phones"
                        || 'Products Sheet'[Product Name] = "Audio",
                        "Y","N")

Total Sales = sum('Sales Orders Sheet'[Sales Amount])

#
# TEXT Functions
#
CONCATENATE(text1,text2)
LEFT/RIGHT(Text, [numChars])

# Analyze the % contribution of table lamps sales for different states
# Find the percentage of table lamp orders having a net profit margin greater than 50%
# Analyze how table lamps fare against other items in the lighting fixtures category, including floor lamps and candles
#
# Filter(<Table>,<FilterExpress>)
# CALCULATE(<Expr>, <Filter1>, <Filter2>, ...) 
# ALL removes all the filters: ALL (<TableNameOrColumnName1>,<TableNameOrColumnName2>,...)
# 
# 









