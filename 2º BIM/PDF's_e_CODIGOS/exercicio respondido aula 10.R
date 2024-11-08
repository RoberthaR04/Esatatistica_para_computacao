#1)
periodico <-c (19.8, 15.4, 11.4, 19.5, 10.1, 18.5, 14.1, 8.8, 14.9, 7.9, 17.6, 13.6, 
                7.5, 12.7, 16.7, 11.9, 15.4, 11.9, 15.8, 11.4, 15.4, 11.4)
mpa <- 10
t.test(periodico,
       mu= mpa,
       conf.level = 0.95,
       alternative= "greater")
print('carga excedida')


#2)
catalisador1 <-c(91.5, 94.18, 92.18, 95.39, 91.79, 89.07, 94.72, 89.21)
catalisador2 <- c(89.19, 90.95, 90.46, 93.21, 97.19, 97.04, 91.07, 92.75)
t.test(catalisador1, catalisador2,
       alternative = "greater",
       var.equal = T)
print(t.test)
print('A diferença entre or redimentos médiodo catalisador 1 é maior que o catalisador 2.
      Porém as diferença do rendimento médio é bem pequena')



#4)     
carga<-c(19.8, 15.4, 11.4, 19.5, 10.1, 18.5, 14.1, 8.8, 14.9, 7.9, 17.6, 13.6, 
         7.5, 12.7, 16.7, 11.9, 15.4, 11.9, 15.8, 11.4, 15.4, 11.4)
shapiro.test(carga)
print(shapiro.test)







