#상관과 회귀

#단순 선형 회귀

df <-read.csv(choose.files(),header = TRUE)
              
cor(df$adv,df$sales)

?lm

linear_model1 <- lm(sales-adv,df)

linear_model1

summary(linear_model1)




#다중 선형 회귀

x1<-c(2,4,6,8)

x2<-c(0,4,2,3)

y<-c(81,93,91,97)

#+는 x1과 x2 독립적으로 고려해서 y에 미치는 영향 분석
#*는 x1과 x2 이 둘의 교호작용 항인 x1:x2 를 모두 포함
linear_model2 <- lm(y ~ x1+x2)

linear_model2

#교호작용 포함한 모델

linear_model3_1 <- lm(y ~ x1*x2)

linear_model3_1


linear_model3_2 <- lm(y ~ x1+x2+x1:x2)

linear_model3_2

