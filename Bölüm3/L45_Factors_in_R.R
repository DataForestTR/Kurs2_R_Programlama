#### FACTORS IN R / R DILINDE FAKTORLER ####
############################################

cinsiyet <- c("erkek", "kadin", "kadin", "erkek")
str(cinsiyet) # chr: Karakter Vektoru
cinsiyet <- factor(c("erkek", "kadin", "kadin", "erkek"))
str(cinsiyet)
cinsiyet

summary(cinsiyet)
unclass(cinsiyet)


cinsiyet2 <- factor(c("erkek", "kadin", "kadin", "erkek"), levels = c("kadin", "erkek"))
str(cinsiyet)
str(cinsiyet2)

cinsiyet
cinsiyet2

summary(cinsiyet)
summary(cinsiyet2)

unclass(cinsiyet)
unclass(cinsiyet2)