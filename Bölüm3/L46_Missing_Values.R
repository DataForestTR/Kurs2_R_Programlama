#### MISSING VALUES / EKSIK DEGERLER ####
#########################################

# NA: Hersey icin
# NAN: Tanimsiz matematik islemleri icin (NaN)

a = c(1,3,5,NA,15)
is.na(a)
is.nan(a)


# Missing Value Cleaning (Data Cleaning) / Eksik Degerleri Temizleme 
na_vector <- is.na(a)
na_vector

a[!na_vector]


complete_vector <- complete.cases(a)
complete_vector
a[complete_vector]

complete_frame <- complete.cases(data_table)
complete_frame
data_table[complete_frame,]
head(data_table[complete_frame,])


eksiksiz_Yas <- data_table[complete.cases(data_table$Age),]
complete.cases(data_table$Age)
sum(complete.cases(data_table$Age)) # data_table veri cercevimin Age degiskeninin eksik olmayan degerlerinin toplam sayisi
nrow(eksiksiz_Yas)
