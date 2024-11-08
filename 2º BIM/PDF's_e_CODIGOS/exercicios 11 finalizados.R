#1-
#a)
vida_media <-c(53, 52, 51, 49, 
               58, 60, 57, 54, 
               56, 52, 55, 52, 
               60, 58, 53, 50, 
               51, 50, 54, 53, 
               55, 54, 50, 51 )
valvula <-factor(rep(paste(LETTERS[1:4], sep = ""),6))
valvula

#b)
diferente<-aov(vida_media~valvula)
anova(diferente)
#o valor de p é maior que 0,05, 
#porém a hipótese nula não é rejeitada,
#pois não tem diferença entre as válvulas

#c)
tab<-data.frame(valvula, vida_media)
tab

#d)
tab[order(tab$valvula),]


#2-
dens<-c(3.6, 3.3, 3.5, 3.5, 3.7,
        3.5, 3.5, 3.3, 3.4, 3.4, 
        3.7, 3.4, 3.4, 3.0, 3.6, 
        3.1, 3.2, 3.4, 3.3, 3.5, 
        3.1, 3.4, 3.3, 3.3, 3.6, 
        3.2, 3.4, 3.2, 3.8, 3.4 )
mist<-factor(rep(paste(LETTERS[1:5], sep =""),6))
evid<-aov(dens~mist)
anova(evid)
#o valor de p foi maior que 0,05, 
#então não há diferença significativa

#3-
temp<-c(40, 59, 42,
        39, 55, 51,
        47, 55, 45,
        45, 50, 40,
        52, 52, 41)
bloco<-gl(5, 3, label=c(paste('Operário', 1:5)))
tr<-rep(paste('Máquina', LETTERS[1:3]),5)
tab<-data.frame(blocos=bloco,
                tra=factor(tr),
                dados=temp)
tab
dif<-aov(dados~tra+blocos, tab)
anova(dif)
#O valor de p para o tratamento é menor do que 0,05 então a hipótese nula vai ser rejeitada, pois há diferença entre as máquinas
#o valor de p para os blocos foram maiores que 0,05, então a hipótese nula não vai ser rejeitada pois não tem diferença significativa

#4-
lote<-c(15, 12, 10, 14,
         19, 15, 12, 11,
         18, 14, 15, 12,
         16, 11, 12, 16,
         17, 16, 11, 14)
solo<-gl(5,4, label=c(paste('SOLO',LETTERS[1:5])))
tipo_café<-rep(paste('tipo de café', 1:4),5)
tabela<-data.frame(blocos=solo,
                tipo=factor(tipo_café),
                dados=lote)
tabela
result<-aov(dados~tipo+blocos, tabela)
anova(result)
#no tipo de café o valor de p foi menor que 0,05, sendo assim, a hipótese nula será rejeitada devido haver diferença entre esses tipos ed café
#nos solos(blocos) o valor de p foi maior que 0,05, entáo a hipótese nula será aceita por não ter diferença entre eles
