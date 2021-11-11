# Первым шагом установим пакеты
install.packages('ggplot2')
install.packages('tidyverse')

#Далее подлкючим библиотеки
library(ggplot2)
library(tidyverse)


#Подключаем данные
table1 <- read.csv("C:\Users\Home\Documents\! 4 курс\Кр Шлеев\RU_Electricity_Market_PZ_dayahead_price_volume.csv", header = TRUE, sep = ",")


# Названия столбцов
names(table1)

#Авторегрессия
set.seed(49)
y <- arima.sim(n = nrow(table1), table1)
plot(y)


#Построим график
ggplot(data = table1)+
  geom_point(alpha = 1/2, mapping = aes(x= timestep, y = price_eur, color = consumption_eur))


ggplot(data = table1)+
  geom_point(alpha = 1/4, mapping = aes(x= consumption_eur, y = price_eur))