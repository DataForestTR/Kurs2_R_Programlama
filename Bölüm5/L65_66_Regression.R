## Tek Degisken ile Regresyon (Simple Linear Regression)

# Solar.R ile Ozone Tahminleme Modeli Kurmak (Predictive Modelling)
Y<- hava_kalitesi[,"Ozone"] # Hedef Degisken (Target) secimi 
X1<- hava_kalitesi[,"Solar.R"] # Bagimsiz Degisken (Predictor) secimi

model1<- lm(Y~X1)
model1 # Regresyon Katsayilari ile Model bilgisi

plot(Y~X1) # Ozone ve Solar.R degiskenleri ile Scatter Plot
# Grafige Dogrusal Regresyon Cizgisi ekleyerek Iliskisini Gosterme
abline(model1, col="blue", lwd=3)

# Tahmin Yapmak
tahmin1<- predict(model1,data.frame("X1"=10))
tahmin1

# Wind ile Ozone Tahminleme Modeli Kurmak (Predictive Modelling)
X2<- hava_kalitesi[,"Wind"]

model2<- lm(Y~X2)
model2 

plot(Y~X2) # Ozone ve Solar.R degiskenleri ile Scatter Plot
# Grafige Dogrusal Regresyon Cizgisi ekleyerek Iliskisini Gosterme
abline(model2, col="red", lwd=3) 

# Tahmin Yapmak
tahmin2<- predict(model2,data.frame("X2"=5))
tahmin2

## Birden Fazla Degisken ile Regresyon (Multiple Linear Regression)
model3 <- lm(Ozone ~ Wind + Solar.R + Temp, data = hava_kalitesi)
summary(model3)
tahmin3 <- predict(model3,data.frame("Wind"=5, "Solar.R"=10, "Temp"=15))



# Eksik Degerli Satirlari Silip Normalizasyon Yapmadan Tahminleme
hava_kalitesi2 <- na.omit(airquality)
model4 <- lm(Ozone ~ Wind + Solar.R + Temp, data = hava_kalitesi)
summary(model4)
tahmin4 <- predict(model4,data.frame("Wind"=5, "Solar.R"=10, "Temp"=15))