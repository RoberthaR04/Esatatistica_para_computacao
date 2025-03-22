Excel_estatistica <- read.csv("C:/Users/Rezen/Desktop/Faculdade/2º SEMESTRE ESTATISTICA COMPUTACIONAL/Estatistica/Esatatistica_para_computacao/2º BIM/Materiais_das_aulas/Excel_estatistica.csv", sep=";")
Excel_estatistica$average_score <- as.numeric(gsub("\\.", "", Excel_estatistica$average_score))
str(Excel_estatistica)


print('Influência do nível de escolaridade dos pais nas notas')
summary(Excel_estatistica$parental_level_of_education)

print('Verificar as colunas de notas')
summary(Excel_estatistica[, c("math_score", "reading_score", "writing_score")])

print('Calcular a média de cada nota por nível de escolaridade')
media_math <- aggregate(math_score ~ parental_level_of_education, data = Excel_estatistica, mean)
media_reading <- aggregate(reading_score ~ parental_level_of_education, data = Excel_estatistica, mean)
media_writing <- aggregate(writing_score ~ parental_level_of_education, data = Excel_estatistica, mean)

print('Exibir as médias')
print(media_math)
print(media_reading)
print(media_writing)

print('Boxplot para Matemática')
boxplot(math_score ~ parental_level_of_education, 
        data = Excel_estatistica, 
        main = "Nível de Escolaridade dos Pais x Nota de Matemática",
        xlab = "Nível de Escolaridade dos Pais",
        ylab = "Nota de Matemática",
        col = "lightblue",
        names = c("Assoc.", "Bach.", "High Sch.", "Master","Some Coll.", "Some HS")) 

print('Boxplot para Leitura')
boxplot(reading_score ~ parental_level_of_education, data = Excel_estatistica,
        main = "Nível de Escolaridade dos Pais x Nota de Leitura",
        xlab = "Nível de Escolaridade dos Pais", ylab = "Nota de Leitura",
        col = "lightgreen", 
        names = c("Assoc.", "Bach.", "High Sch.", "Master","Some Coll.", "Some HS")) 
print('Boxplot para Escrita')
boxplot(writing_score ~ parental_level_of_education, data = Excel_estatistica,
        main = "Nível de Escolaridade dos Pais x Nota de Escrita",
        xlab = "Nível de Escolaridade dos Pais", ylab = "Nota de Escrita",
        col = "lightpink",
        names = c("Assoc.", "Bach.", "High Sch.", "Master","Some Coll.", "Some HS")) 

anova_math <- aov(math_score ~ parental_level_of_education, data = Excel_estatistica)
anova_reading <- aov(reading_score ~ parental_level_of_education, data = Excel_estatistica)
anova_writing <- aov(writing_score ~ parental_level_of_education, data = Excel_estatistica)

print('Resumo dos resultados')
print('Matemática')
summary(anova_math)
print('Leitura')
summary(anova_reading)
print('Escrita')
summary(anova_writing)

print('Teste Tukey para Matemática')
tukey_math <- TukeyHSD(anova_math)
print(tukey_math)

print('Teste Tukey para Leitura')
tukey_reading <- TukeyHSD(anova_reading)
print(tukey_reading)

print('Teste Tukey para Escrita')
tukey_writing <- TukeyHSD(anova_writing)
print(tukey_writing)










