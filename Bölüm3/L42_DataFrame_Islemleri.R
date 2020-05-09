#### DATAFRAME OPERATIONS / DATAFRAME ISLEMLERI ####
####################################################

# [] Hatirlatmasi
data_table[2:8,]
data_table[c(10,312),]

# Tek boyutlu dataframe kontrolu
is.data.frame(data_table[1,])
is.data.frame(data_table[,1])
is.data.frame(data_table[,1,drop = FALSE])

# Sutunlarda Islemler
data_table$Fare / data_table$Age
data_table$Fare * data_table$Age

# Sutun Ekleme
data_table$Yeni_Sutun <- data_table$Fare / data_table$Age
ncol(data_table)
head(data_table)


# Hatirlatma: Recycling Vectors
data_table$Yeni_Sutun2 <- 1:3
head(data_table)
tail(data_table)

# Sutun silme
data_table$Yeni_Sutun <- NULL
data_table$Yeni_Sutun2 <- NULL





