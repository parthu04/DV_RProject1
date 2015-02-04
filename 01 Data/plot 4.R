p4 <- ggplot (df_customers, aes(x= as.factor(CUSTOMER_STATE), y = as.factor(CUSTOMER_CITY))) + geom_point()
p4
