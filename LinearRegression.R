

# Regressão Linear

employees <-
  read.csv("http://headfirstlabs.com/books/hfda/hfda_ch10_employees.csv",
           header = TRUE)

# Modelos lineares segmentados por uma variação de 10%

linear_model_big <-
  lm(received[negotiated = TRUE &
                requested > 10] ~ requested[negotiated = TRUE &
                                              requested > 10], data = employees)
linear_model_small <-
  lm(received[negotiated = TRUE &
                requested <= 10] ~ requested[negotiated = TRUE &
                                              requested <= 10], data = employees)

# Objetos do modelo linear (valores da função de regressão)

linear_model_big_std_error <- summary(linear_model)$sigma
linear_model_big_coefficients <- summary(linear_model)$coefficients

linear_model_small_std_error <- summary(linear_model)$sigma
linear_model_small_coefficients <- summary(linear_model)$coefficients


linear_model_big_std_error
linear_model_small_coefficients

