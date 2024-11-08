#1)
dias<-c(2, 4, 6, 8, 10)
peso<-c(42, 51, 59, 64, 76)
barplot(dias, names.arg= peso,
        main= "peso médio",
        xlab= "Peso",
        ylab= "dias de nascido" ,
        ylim= c(0,10))

#2)
dias<-c(2, 4, 6, 8, 10)
peso<-c(42, 51, 59, 64, 76)
barplot(dias, names.arg= peso,
        main= "peso médio",
        xlab= "Peso",
        ylab= "dias de nascido",
        col = c("blue", "pink", "yellow", "green", "red")
)

#3)
tipo <-c("Linha ruidosa","Linha aberta","Alarme","Não responde","Não toca")
num <- c(250, 110, 85, 45, 25)
barplot( height = num, names.arg= tipo,
         main= "Verificação",
         xlab= "Tipo de defeito",
         ylab= "Número de ocorrências",
         density= 80, angle = 120
)

#4)
reserva <-c("A", "A", "A", "A", "A", "A", "A", "A", "A", "A", 
            "B", "B", "B", "B", "B", "B", "B", "B", "B", "B")
macacos <-c(22,28,37,34,13,24,39,5,33,32,7,15,12,14,4,14,16,60,13,16)
frutiferas <-c(25,26,40,30,10,20,35,8,35,28,6,17,18,11,6,15,20,16,12,15)
boxplot(macacos~reserva,
        main= "Densidade populacional de macacos",
        xlab = "reserva",
        ylab = "macacos",
        ylim= c(0,50),
        col= "red"
)

#b)
boxplot(frutiferas~reserva,
        main= "Densidade de árvores ",
        xlab = "Reserva",
        ylab = "Frutíferas",
        ylim= c(0,50),
        col= "green"
)


#c)A quantidade de árvores é maior e a quantidade de macacos também é mais densa o que resulta em algo positivo para a fauna devido a disponibilidade de mais alimentos.



install.packages('tinytex')
tinytex::install_tinytex()
tinytex::tlmgr_search("pdflatex")
rmarkdown::render("atividade-aula-07-respondida.spin.Rmd")
