df_combined <- data.frame(eval(parse(text=substring(getURL(URLencode('http://129.152.144.84:5001/rest/native/?query="select * from orders o join customers c on o.customer_id = c.customer_id join order_details d on o.order_id = d.order_id join items i on d.item_id = i.item_id"'), httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521/PDB1.usuniversi01134.oraclecloud.internal', USER='DV_ORDERS', PASS='orcl', MODE='native_mode', MODEL='model', returnFor = 'R', returnDimensions = 'False'), verbose = TRUE), 1, 2^31-1))))
head (df_combined)

p1 <- ggplot (df_combined, aes(x= as.Date(ORDER_DATE), y = as.Date(SHIPPED_DATE))) + geom_point(aes(color = as.factor(UNIT_PRICE)))
p1 + facet_wrap (~ CUSTOMER_STATE)

p2 <- ggplot (df_combined, aes(x= as.Date(ORDER_DATE), y = as.Date(SHIPPED_DATE))) + geom_point(aes(color = as.factor(TITLE)))
p2 + facet_wrap (~ CUSTOMER_STATE)

p3 <- ggplot (df_combined, aes(x= as.Date(ORDER_DATE), y = as.Date(SHIPPED_DATE))) + geom_point(aes(color = ARTIST))
p3 + facet_wrap(~ CUSTOMER_STATE)

p4 <- ggplot (df_customers, aes(x= as.factor(CUSTOMER_STATE), y = as.factor(CUSTOMER_CITY))) + geom_point()
p4
