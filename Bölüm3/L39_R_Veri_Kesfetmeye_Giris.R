#### IMPORTING TO R / R STUDIO'YA VERI ALMA ####
?read.csv() # csv: Comma Seperated Values


## 1. Yol: Manual Selection / Dosyayi Elle Seçmek
data_table <- read.csv(file.choose())
head(data_table) # Verimize goz atmak (ilk satirlar)


## 2. Yol: Set Working Directory / Calisma Dizini
getwd() # Su anki dizin
setwd("C:/Users/HP/Desktop") # Yeni calisma dizini secme
setwd("C:/Users/HP/Desktop/R_Programming_DF2_uDemy")

rm(data_table) # R'da objeleri silmek
data_table = read.csv("Titanic.csv")
head(data_table) # Verimize goz atmak (ilk satirlar)

## 3. Yol: File Directory / Dosyanin Kendi Dizini
rm(data_table)
data_table <- read.csv("C:/Users/HP/Desktop/R_Programming_DF2_uDemy/Titanic.csv")
head(data_table)

#### DATA EXPLORATION IN R / R STUDIO'DA VERI KESFETME ####
data_table
nrow(data_table) # number of rows / satir sayisi. 891 satir
ncol(data_table) # number of columns / sutun sayisi. 12 sutun

head(data_table, 10)
tail(data_table, 3)

str(data_table)
summary(data_table) 


# str() BONUS:
str(str)
str(lm)
a <- runif(20,0,100)
str(a)

S <- split(data_table, data_table$Sex) # split: Veriyi bolmenizi saglar
str(S)
