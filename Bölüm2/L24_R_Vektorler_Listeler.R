###########################################
### VECTORS & LISTS (Vektorler ve Listeler)

## VECTOR

ilk_vektorum <- c(4, 5, 12, 20)

ilk_vektorum
is.numeric(ilk_vektorum)
is.character(ilk_vektorum)


metin_vektoru = c("Emir", "Emre", "DataForest", "Osman")
is.numeric(metin_vektoru)
is.character(metin_vektoru)


v3 = c("Emir", "Emre", "DataForest", 12)

v3
is.numeric(v3)
is.character(v3)


seq() # sequence (dizi), ":" benzer
rep() # replicate (tekrar) 


seq(1,5)
1:5

seq(1,12,2)

v4 <- seq(1,12,2)
v4



rep(2,5)
rep("Y", 3)

v5 <- c("R", 3.6)
rep(v5, 5)




## LISTS

ilk_listem <- list(2, "A", FALSE, 3 + 4i, v5)
ilk_listem


