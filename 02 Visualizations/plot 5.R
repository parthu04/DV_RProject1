p5 <- ggplot (df_orders, aes(x= as.Date(ORDER_DATE, "%Y-%m-%d"), y = as.Date(SHIPPED_DATE, "%Y-%m-%d"))) + geom_point(aes(color = as.factor(CUSTOMER_ID)))
p5
