p3 <- ggplot (df_combined, aes(x= as.Date(ORDER_DATE, "%Y-%m-%d"), y = as.Date(SHIPPED_DATE, "%Y-%m-%d"))) + geom_point(aes(color = ARTIST))
p3 + facet_wrap(~ CUSTOMER_STATE)
