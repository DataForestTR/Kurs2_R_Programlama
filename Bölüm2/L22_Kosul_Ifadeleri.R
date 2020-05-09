## IF-ELSE (EGER) STATEMENS (Kosul Kontrolu)
a <- runif(1,-5,5)

# a sayisi 0'dan buyuk mu?
if (a > 0) {
  deger <- "a sayisi 0'dan buyuk"
} else if (a == 0){
  deger <- "a sayisi 0'a esit"
} else {
  deger <- "a sayisi 0'dan kucuk"
}