##### USER-DEFINED FUNCTIONS / KENDI FONKSIYONUMUZ #####

x = 70
kontrol = x > 100

# fonksiyon_adi <- function(x){

#  x parametresi ile ilgili islemlerimiz

# }


buyuktur100 = function(x){
  kontrol = x > 100
  print(kontrol)
}

buyuktur100(101)


# ------------ 2.Kısım --------------

ilk_fonksiyon <- function(sayi, alt_limit, ust_limit){
  
  dizi = runif(n = sayi, min = alt_limit, max = ust_limit)
  karekok = sqrt(dizi)
  
  print(karekok)
  
}
ilk_fonksiyon(5, 1, 20)
ilk_fonksiyon(5,,20)



fonksiyon2 = function(sayi, alt_limit = 0, ust_limit){
  
  dizi = runif(n = sayi, min = alt_limit, max = ust_limit)
  karekok = sqrt(dizi)
  
  print(karekok)
  
}

fonksiyon2(5,,20)
fonksiyon2(5,20)



fonksiyon3 = function(sayi, alt_limit = 0, ust_limit = 100){
  
  dizi = runif(n = sayi, min = alt_limit, max = ust_limit)
  karekok = sqrt(dizi)
  
  print(dizi)
  print(karekok)
  
}

fonksiyon3(5)
