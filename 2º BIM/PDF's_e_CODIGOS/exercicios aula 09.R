#1
total<-5
cara<-3
p<-0.5
dbinom(cara, total, p)

#2
total<-5
cara<-0
p<-0.5
m<-dbinom(cara, total, p)
m

total<-5
cara<-1
p<-0.5
n<-dbinom(cara, total, p)
n

total<-5
cara<-2
p<-0.5
o<-dbinom(cara, total, p)
o

totalgeral <-m+n+o
totalgeral


#3)
disp<-4
proba<-0.3
alvo3<-dbinom(3,disp, proba)
alvo4<-dbinom(4,disp, proba)

probabilidade<- alvo3 + alvo4
probabilidade

#modelo poisson
#1)
soli<-5
desej<-2
probabilidade<-signif(dpois(soli, desej),3)
probabilidade

#2)
#a)
cli<-6
de<-3
probabilidade<-signif(dpois(cli, de),3)
probabilidade

#b)
cli<-6
de<-3
probabilidade<-signif(ppois(cli, de),3)
probabilidade



