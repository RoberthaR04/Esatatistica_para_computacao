print('1)')
m_cor<-c(0.97, 0.78,
         0.68, 0.76, 
         0.10, 0.14, 
         0.15, 0.05)
marca <- factor(rep(paste("marca", LETTERS[1:2], sep=""), 4))
lavagem<-gl(4,2,label=c(paste("l", 1:4)))
tabela<-data.frame(m_cor,marca,lavagem)
tabela
teste <- aov(m_cor ~ marca + lavagem, data = tabela)
anova<-(teste)
anova
analise<-TukeyHSD(anova)
analise

plot(analise, cex=0.6)

print('entre L2 e L1 tem semelhança pois ambas não tem zeros, ou seja, são iguais.Entre L3 e L4 há semelhança. Os de mais são diferentes')

print('2)')
vida_p<-c(23, 32, 31, 28,
          18, 40, 37, 34,
          16, 42, 35, 32,
          10, 38, 33, 30,
          11, 30, 34, 33,
          15, 34, 30, 31)
pneus<-factor(rep(paste("Pneu", LETTERS[1:4])))
tabela<-data.frame(vida_p,pneus)
tabela
test<-aov(vida_p~pneus,tabela)
analise_2<-TukeyHSD(test,"pneus")
analise_2
plot(analise_2, cex=0.6)
print('O pneu é diferente entre todos, pois contem zero na sua análise. Os pneus B,C e D são iguais')


print('2.2)')
print('a)ANOVA e teste post-hoc de Tukey HSD')
print('b)Por meio do estudo estatístico, verificou-se a adequação dos valores dos parâmetros disponíveis na bibliografia usando testes de hipóteses paramétricos.')
print('c)alfa sendo igual a 5%, ou seja, 0,05')
print('d)R')

print('3)')
print('f)ANOVA e teste Bonferroni ')
print('g)Analisar um software que usa inteligência artificial para análise de válvula mitral')
print('h)alfa sendo = 0,0083 ')
print('i)também utilizou R')


