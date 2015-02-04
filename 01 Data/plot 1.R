p1 <- ggplot (df_combined, aes(x= as.Date(ORDER_DATE, "%Y-%m-%d"), y = as.Date(SHIPPED_DATE, "%Y-%m-%d"))) + geom_point(aes(color = as.factor(UNIT_PRICE)))
p1 + facet_wrap (~ CUSTOMER_STATE)
