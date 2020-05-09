#### R ile VERI GORSELLESTIRMEYE GIRIS ####
###########################################

airquality
nrow(airquality)
ncol(airquality)
colnames(airquality)

summary(airquality)x
str(airquality)

?plot
# Tek Degisken
plot(airquality$Ozone)
plot(airquality$Solar.R)

# Iki Degisken
plot(airquality$Wind, airquality$Temp)

# Butun Degisken
plot(airquality)



#############################
#### ARGUMENTS KULLANIMI ####

# type
?plot
plot(airquality$Solar.R, type = "p")
plot(airquality$Solar.R, type = "l")

plot(airquality$Solar.R, type = "b") # b her iki opsiyon için (point - line)
plot(airquality$Solar.R, type = "h")

# Iki Degisken
plot(airquality$Wind, airquality$Temp, 
     xlab = 'Ruzgar', ylab = "Sicaklik", 
     main = "Ruzgara gore Sicaklik Grafigi - Scatter Plot", 
     col = 'green')




#####################################
#### BARPLOTS / SUTUN GRAFIKLERI ####
?barplot
barplot(airquality$Temp,
        main = "Sicaklik Sutun Grafigi",
        xlab = "Sicaklik", col = "blue")

barplot(airquality$Temp,
        main = "Sicaklik Sutun Grafigi",
        xlab = "Sicaklik", col = "pink", 
        horiz = TRUE)

barplot(airquality$Wind, width = 6,
        main = "Ruzgar Sutun Grafigi",
        xlab = "Ruzgar Seviyeleri", col = "orange", 
        horiz = FALSE)

barplot(airquality$Wind, width = 10,
        main = "Ruzgar Sutun Grafigi",
        xlab = "Ruzgar Seviyeleri", col = "darkblue", 
        horiz = TRUE)



###################
#### HISTOGRAM ####

?hist
hist(airquality$Temp)
hist(airquality$Temp,
     main = "Hava Sicakligi Frekans Dagilimi",
     xlab='Sicaklik', ylab = 'Frekans-Siklik', col = 'red')

hist(airquality$Temp, freq = FALSE,
     main = "Hava Sicakligi Olasilik Dagilimi",
     xlab='Sicaklik', ylab = 'Olasilik', col = 'orange')



hist(airquality$Ozone, 
     main = 'Havadaki Ozon Seviyesi', xlab = 'Ozon Degeri', col = 'blue')

hist(airquality$Ozone, breaks = seq(0,170,10),
     main = 'Havadaki Ozon Seviyesi', xlab = 'Ozon Degeri', col = 'lightblue')

summary(airquality$Ozone)

hist(airquality$Ozone, breaks = seq(0,170,5),
     main = 'Havadaki Ozon Seviyesi', xlab = 'Ozon Degeri', col = 'lightblue')



######################################################
### OVERLAPPING HISTOGRAMS / UST USTE HISTOGRAMLAR ###
hist(airquality$Ozone, 
     main = 'Ozon ve Sicaklik Histogrami', xlab = 'Ozon ve Sicaklik Degerleri', col = 'blue')
?hist
# add=T
hist(airquality$Temp, add = T,
     main = "Hava Sicakligi Frekans Dagilimi",
     xlab='Sicaklik', ylab = 'Frekans-Siklik', col = 'red')

summary(airquality$Ozone)
summary(airquality$Temp)

hist(airquality$Ozone, breaks = seq(0,170,5),
     main = 'Ozon ve Sicaklik Histogrami', 
     xlab = 'Ozon ve Sicaklik Degerleri', col = 'blue')

hist(airquality$Temp, add = T, breaks = seq(55,100,5),
     main = "Hava Sicakligi Frekans Dagilimi",
     xlab='Sicaklik', ylab = 'Frekans-Siklik', col = 'red')


## Seffalik -> rgb()
hist(airquality$Ozone, breaks = seq(0,170,5),
     main = 'Ozon ve Sicaklik Histogrami', 
     xlab = 'Ozon ve Sicaklik Degerleri', col = 'blue')

?rgb

hist(airquality$Temp, add = T, breaks = seq(55,100,5),
     main = "Hava Sicakligi Frekans Dagilimi",
     xlab='Sicaklik', ylab = 'Frekans-Siklik', 
     col = rgb(200,0,0,155, maxColorValue = 255))


####################################
#### BOXPLOTS / KUTU GRAFIKLERI ####

?boxplot
boxplot(airquality$Wind)
summary(airquality$Wind)

# minimum = 1.Çeyreklik - 1.5*(3.Çeyreklik - 1.Çeyreklik)
# maximum = 3.Çeyreklik + 1.5*(3.Çeyreklik - 1.Çeyreklik)

boxplot(airquality$Temp)
summary(airquality$Temp)

boxplot(airquality[,1:2], main = "Coklu Box Plot")
boxplot(airquality[,1:4], main = "Coklu Box Plot")

boxplot(Temp ~ Month, data = airquality, 
        xlab = "Aylar", ylab = "Sicaklik",
        main = "Aylara Gore Sicakliklar")

boxplot(Temp ~ Month, data = airquality, 
        xlab = "Aylar", ylab = "Sicaklik",
        main = "Aylara Gore Sicakliklar",
        col = c("green", "pink", "orange", "red", "brown"))


#########################################
#### GRID OF PLOTS / GRAFIK IZGARASI ####

?par
par(mfrow = c(2,2))

plot(airquality$Wind, airquality$Temp,
     xlab = "Ruzgar", ylab = "Sicaklik",
     main = "Ruzgara Gore Sicaklik Grafigi",
     col = "green")


barplot(airquality$Temp,
        main = "Sicaklik Sutun Grafigi",
        xlab = "Sicaklik", col = "blue",
        horiz = TRUE)


hist(airquality$Temp,
     main = "Hava Sicakligi Histogrami",
     xlab = "Sicaklik", ylab = "Frekans", col = "red")


boxplot(Temp ~ Month, data = airquality,
        xlab = "Ay", ylab = "Sicaklik",
        main = "Aylara Gore Sicaklik",
        col = c("green", "pink", "orange", "red", "brown"))

par(mfrow = c(1,1))

########### TO BE UPDATED ########### 

###########################################################
#### LATTICE PAKETI ILE SCATTER PLOT MATRISI OLUSTURMA ####

# Paket kurulumu ve R'a yukleme
install.packages("lattice")
library(lattice)  

# Veriyi hafizaya alma
attach(airquality)

names(airquality)
plot(airquality[,1:4])
splom(airquality[,1:4], main="AIRQUALITY")

##############################################
#### GGPLOT2 PAKETI ILE BOXPLOT OLUSTURMA ####

# Paket kurulumu ve R'a yukleme
install.packages("ggplot2")
library(ggplot2)  
Aylar <- as.factor(Month)
# observations (points) are overlayed and jittered
qplot(Aylar, Temp, data=airquality, geom=c("boxplot"),
      fill=Aylar, main="Aylara Gore Sicaklik Dagilimi",
      xlab="Aylar", ylab="Sicaklik")

qplot(Aylar, Temp, data=airquality, geom=c("boxplot", "jitter"),
      fill=Aylar, main="Aylara Gore Sicaklik Dagilimi",
      xlab="Aylar", ylab="Sicaklik")