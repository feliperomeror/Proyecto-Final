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

