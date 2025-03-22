print('1)')
print('a- Crie um data.frame e plote o gráfico. ')
periodo_dias<-c(1,45,90,135,180)
vitamina_c<-c(4.09,3.27,2.45,3.27,1.64)
info<-data.frame(periodo_dias,vitamina_c)
info
plot(info)

print('b- Ache a equação da reta que relaciona dos dados.')
reglin<-lm(vitamina_c~periodo_dias, info)
reglin
print('Equação da reta = 3.92980 -0.01093.periodo_dias ')

print('c- Qual seria o teor de vitamina C se o suco ficar armazenado durante 20 dias? ')
teor_x<-20
teor_y<-(-0.01093*teor_x+3.92980)
teor_y

print('d-valores observados aos calculados')
predict(reglin)
resid(reglin)
total<-data.frame(periodo_dias,vitamina_c,
                  calculado=predict(reglin),
                  residuos=resid(reglin))
total
plot(periodo_dias,vitamina_c)
abline(reglin,
       col=2)
segments(
  total$periodo_dias,
  total$vitamina_c,
  total$periodo_dias,
  total$calculado,
  col=4
)
print('e-Qual a conclusão dessa regressão?')
print('com o passar do tempo, o teor de vitamina contido no suco diminui')


print('2)')
print('a-Faça o gráfico de dispersão para esses dados.')
x <- c(5.2,5.1,4.9,4.6,4.7,4.8,4.6,4.9)
y <- c(13,15,18,20,19,17,21,16)
plot(x,y)

print('b- Determine a equação da reta.')
reglin<-lm(y~x)
reglin
print('a equação é y= 73.72 -11.62.x')

print('c- Trace no gráfico anterior, a reta de regressão.')
abline(reglin,
       col=2)
print('d-Calcule e interprete o coeficiente de determinação.Então quando maior o tempo de treinamento, o trabalho diminui')
summary(reglin)
print('O R^2 deu como resultado 0.9201, podendo concluir que 92,01% de y é explicado por x.')

