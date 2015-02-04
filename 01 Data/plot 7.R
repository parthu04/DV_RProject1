p7 <- ggplot (df_items, aes (x = ARTIST, y = as.factor (UNIT_PRICE), color = TITLE)) + geom_point()
p7
