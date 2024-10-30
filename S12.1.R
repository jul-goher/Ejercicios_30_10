lista1 <- list (
  num = 33,
  vector = c(30, 31, 32), 
  m1 = matrix (c(1, 2, 3, 4, 5, 6), nrow = 2, ncol= 6 ),
  data_frame = data.frame(nombre = c("Antes", "Después", "Mientras"), estado = c("bueno", "malo", "intermedio"))
)

lista1

lista1[[1]] #al número 
lista1[[2]] # al vector 
lista1[[3]] #a la matriz
lista1[[4]] #al data.frame



comp_list <- list (
  numero = 42,
  vector = c(1, 2, 3), 
  matriz = matrix(c(1, 2, 3, 4), nrow = 2),
  data_frame = data.frame(nombre = c("E. coli", "S. aureus"), gram = c("+", "-")), 
  list (medio = "McConkey", growth = "regular"), 
  list (medio = "PDA", growth = "good")
)
comp_list

comp_list[[5]]

#también se puede hacer tipo:
new <- matrix (c(1:10), nrow = 5, ncol =2)
append (comp_list, new)


ferment <- list (
  list (cepa = 1, cond = "buena", prod_et = 0.7),
  list (cepa = 2, cond = "regular", prod_et = 0.5), 
  list (cepa = 3, cond = "mala", prod_et = 0.2), 
  list (cepa = 4, cond = "regular", prod_et = 0.9)
)

ferment

#Para que me permita 
as.numeric (ferment$prod_et)

ferment[[1]]
ferment[[2]]  
ferment[[3]] 
ferment[[4]]


as.numeric (ferment[[1]]$prod_et)
as.numeric (ferment[[2]]$prod_et)
as.numeric (ferment[[3]]$prod_et)
as.numeric (ferment[[4]]$prod_et)

if (ferment[[1]]$prod_et > (any (ferment$prod_et))) {
  print ("Cepa ", ferment[[1]]$cepa, "es la mayor productora con", ferment[[1]]$prod_et, "y una condición", ferment[[1]]$cond)
} else if (ferment[[2]]$prod_et >= (any (ferment$prod_et))) {
  print ("Cepa ", ferment[[2]]$cepa, "es la mayor productora con", ferment[[2]]$prod_et, "y una condición", ferment[[2]]$cond)
} else if (ferment[[3]]$prod_et > (any (ferment$prod_et))) {
  print ("Cepa ", ferment[[3]]$cepa, "es la mayor productora con", ferment[[3]]$prod_et, "y una condición", ferment[[3]]$cond)
} else if (ferment[[4]]$prod_et > (any (ferment$prod_et))) {
  print ("Cepa ", ferment[[4]]$cepa, "es la mayor productora con", ferment[[4]]$prod_et, "y una condición", ferment[[4]]$cond)
}


#Convertir a nuúmeros 
f1 <- as.numeric (ferment[[1]]$prod_et)
f2 <- as.numeric (ferment[[2]]$prod_et)
f3 <- as.numeric (ferment[[3]]$prod_et)
f4 <- as.numeric (ferment[[4]]$prod_et)

#otro
if (f1 > f2 | f1 > f3 | f1 > f4) {
  print ("Cepa ", ferment[[1]]$cepa, "es la mayor productora con", ferment[[1]]$prod_et, "y una condición", ferment[[1]]$cond)
} else if (ferment[[2]]$prod_et >= (any (ferment$prod_et))) {
  print ("Cepa ", ferment[[2]]$cepa, "es la mayor productora con", ferment[[2]]$prod_et, "y una condición", ferment[[2]]$cond)
} else if (ferment[[3]]$prod_et > (any (ferment$prod_et))) {
  print ("Cepa ", ferment[[3]]$cepa, "es la mayor productora con", ferment[[3]]$prod_et, "y una condición", ferment[[3]]$cond)
} else if (ferment[[4]]$prod_et > (any (ferment$prod_et))) {
  print ("Cepa ", ferment[[4]]$cepa, "es la mayor productora con", ferment[[4]]$prod_et, "y una condición", ferment[[4]]$cond)
}


#otro 
if (f1 > f2 | f1 > f3 | f1 > f4) {
  print (paste = "Cepa 1 es la mayor productora con", f1, "y una condición buena" )
} else if (f2 > f1 | f2 > f3 | f2 > f4) {
  print (paste = "Cepa 2 es la mayor productora con", f2, "y una condición regular")
} else if (f3 > f2 | f3 > f1 | f3 > f4) {
  print (paste = "Cepa 3 es la mayor productora con", f3, "y una condición mala" )
} else if (f4 > f1 | f4 > f3 | f4 > f2) {
  print (paste = "Cepa 4 es la mayor productora con", f4, "y una condición regular")
}


