#### DATA PREPROCESSING (PREPARATION) / VERI ON ISLEME (HAZIRLAMA) ####  
#######################################################################

### Veri Kesfine Giris ###
str(airquality)
head(airquality)
summary(airquality)
plot(airquality)
pairs(airquality [1:4], panel = panel.smooth, main = "airquality data")

### Veri Hazirlama ###
## Missing Value / Eksik Deger Calismasi
?anyNA
eksik <- mapply(anyNA,airquality)
eksik

hava_kalitesi <- airquality

?which

# Eksik Ozon Degerlerini "Aylik" Ortalamalari ile Degistirmek (Imputation)
for (i in 1:nrow(hava_kalitesi)){
  if(is.na(hava_kalitesi[i,"Ozone"])){
    hava_kalitesi[i,"Ozone"]<- mean(hava_kalitesi[which(hava_kalitesi[,"Month"]==hava_kalitesi[i,"Month"]),"Ozone"],na.rm = TRUE)
  }

# Eksik Solar Radyasyon Degerlerini "Aylik" Ortalamalari ile Degistirmek (Imputation)
  if(is.na(hava_kalitesi[i,"Solar.R"])){
    hava_kalitesi[i,"Solar.R"]<- mean(hava_kalitesi[which(hava_kalitesi[,"Month"]==hava_kalitesi[i,"Month"]),"Solar.R"],na.rm = TRUE)
  }
}

# Modelin daha iyi calismasi icin Normalizasyon
normalize<- function(x){
  return((x-min(x))/(max(x)-min(x)))
}
hava_kalitesi <- normalize(hava_kalitesi) # replace contents of dataset with normalized values

str(hava_kalitesi)


