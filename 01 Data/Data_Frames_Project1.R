dfo <- data.frame(eval(parse(text=substring(getURL(URLencode('http://129.152.144.84:5001/rest/native/?query="select * from orders"'), httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521/PDB1.usuniversi01134.oraclecloud.internal', USER='DV_ORDERS', PASS='orcl', MODE='native_mode', MODEL='model', returnFor = 'R', returnDimensions = 'False'), verbose = TRUE), 1, 2^31-1))))
head(dfo)

dfc <-data.frame(eval(parse(text=substring(getURL(URLencode('http://129.152.144.84:5001/rest/native/?query="select * from customers"'), httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521/PDB1.usuniversi01134.oraclecloud.internal', USER='DV_ORDERS', PASS='orcl', MODE='native_mode', MODEL='model', returnFor = 'R', returnDimensions = 'False'), verbose = TRUE), 1, 2^31-1))))
head (dfc)

dfod <- data.frame(eval(parse(text=substring(getURL(URLencode('http://129.152.144.84:5001/rest/native/?query="select * from order_details"'), httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521/PDB1.usuniversi01134.oraclecloud.internal', USER='DV_ORDERS', PASS='orcl', MODE='native_mode', MODEL='model', returnFor = 'R', returnDimensions = 'False'), verbose = TRUE), 1, 2^31-1))))
head (dfod)

dfi <- data.frame(eval(parse(text=substring(getURL(URLencode('http://129.152.144.84:5001/rest/native/?query="select * from items"'), httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521/PDB1.usuniversi01134.oraclecloud.internal', USER='DV_ORDERS', PASS='orcl', MODE='native_mode', MODEL='model', returnFor = 'R', returnDimensions = 'False'), verbose = TRUE), 1, 2^31-1))))
head (dfi)

dfcombined <- data.frame(eval(parse(text=substring(getURL(URLencode('http://129.152.144.84:5001/rest/native/?query="select * from orders o join customers c on o.customer_id = c.customer_id join order_details d on o.order_id = d.order_id join items i on d.item_id = i.item_id"'), httpheader=c(DB='jdbc:oracle:thin:@129.152.144.84:1521/PDB1.usuniversi01134.oraclecloud.internal', USER='DV_ORDERS', PASS='orcl', MODE='native_mode', MODEL='model', returnFor = 'R', returnDimensions = 'False'), verbose = TRUE), 1, 2^31-1))))
head (dfcombined)

p1 <- ggplot (dfcombined, aes(x= as.Date(ORDER_DATE), y = as.Date(SHIPPED_DATE))) + geom_point(aes(color = as.factor(UNIT_PRICE)))
p1 + facet_wrap (~ CUSTOMER_STATE)

p2 <- ggplot (dfcombined, aes(x= as.Date(ORDER_DATE), y = as.Date(SHIPPED_DATE))) + geom_point(aes(color = as.factor(TITLE)))
p2 + facet_wrap (~ CUSTOMER_STATE)

p3 <- ggplot (dfcombined, aes(x= as.Date(ORDER_DATE), y = as.Date(SHIPPED_DATE))) + geom_point(aes(color = ARTIST))
p3 + facet_wrap(~ CUSTOMER_STATE)