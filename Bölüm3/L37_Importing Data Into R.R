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