# =========================================================
# PROYECTO FINAL - ANALÍTICA DE NEGOCIOS
# MODELO PREDICTIVO POTENCIA MUNDIALISTA 2026
# =========================================================

# =========================================================
# LIBRERÍAS
# =========================================================

library(readxl)
library(dplyr)
library(pscl)
library(car)
library(stargazer)

# =========================================================
# CARGAR BASE
# =========================================================

data <- read_excel(
  "Base_Mundial_2026_COMPLETA.xlsx"
)

# =========================================================
# LIMPIAR NOMBRES
# =========================================================

library(janitor)

data <- clean_names(data)

# =========================================================
# REVISAR ESTRUCTURA
# =========================================================

str(data)
summary(data)

# =========================================================
# MODELO LOGÍSTICO FINAL
# =========================================================

modelo_logit <- glm(
  
  potencia_mundial ~
    
    elo_rating +
    ranking_fifa +
    valor_plantel_m,
  
  family = binomial(link = "logit"),
  
  data = data
  
)

# =========================================================
# RESULTADOS DEL MODELO
# =========================================================

summary(modelo_logit)

# =========================================================
# PSEUDO R2
# =========================================================

pR2(modelo_logit)

# =========================================================
# ODDS RATIOS
# =========================================================

exp(coef(modelo_logit))

# =========================================================
# MULTICOLINEALIDAD
# =========================================================

vif(modelo_logit)

# =========================================================
# PROBABILIDADES PREDICHAS
# =========================================================

data$Probabilidad <- predict(
  modelo_logit,
  type = "response"
)

# =========================================================
# CLASIFICACIÓN
# =========================================================

data$Prediccion <- ifelse(
  data$Probabilidad > 0.5,
  1,
  0
)

# =========================================================
# MATRIZ DE CONFUSIÓN
# =========================================================

table(
  
  Real = data$potencia_mundial,
  
  Predicho = data$Prediccion
  
)

# =========================================================
# ACCURACY
# =========================================================

accuracy <- mean(
  
  data$potencia_mundial ==
    data$Prediccion
  
)

accuracy

# =========================================================
# RANKING DE PROBABILIDADES
# =========================================================

ranking_probabilidades <- data %>%
  
  select(
    pais,
    Probabilidad
  ) %>%
  
  arrange(
    desc(Probabilidad)
  )

ranking_probabilidades

# =========================================================
# TOP 10 FAVORITOS
# =========================================================

head(
  ranking_probabilidades,
  10
)

# =========================================================
# GRÁFICO PROBABILIDADES
# =========================================================

top10 <- head(
  ranking_probabilidades,
  10
)

barplot(
  
  top10$Probabilidad,
  
  names.arg = top10$pais,
  
  las = 2,
  
  main = "Top 10 Selecciones con Mayor Probabilidad",
  
  ylab = "Probabilidad"
  
)

