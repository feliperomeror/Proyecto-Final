# Proyecto Potencia Mundialista 2026 

Este repositorio contiene el desarrollo y la resolución del caso “Modelo Predictivo Potencia Mundialista 2026”, realizado en el marco del curso Analítica de los Negocios.
Datos y archivos de réplica para el análisis del caso por:

**Andres Felipe Romero Rodriguez**
**Andres Felipe Martinez Murcia**

--------------------------------------------------  

# **Resumen**  

El caso Potencia Mundialista 2026 analiza la probabilidad de que una selección nacional pueda ser considerada una potencia mundialista a partir de variables deportivas, competitivas y económicas. El objetivo principal del análisis es identificar qué factores explican con mayor fuerza la condición de potencia futbolística y construir un modelo predictivo que permita estimar el potencial competitivo de las selecciones de cara al Mundial 2026.

A partir de una base de datos con información de 48 selecciones nacionales, se realiza un análisis cuantitativo orientado a evaluar variables clave como el rendimiento deportivo, la posición en rankings internacionales y el valor económico del plantel. Este análisis busca determinar qué características aumentan o reducen la probabilidad de que una selección sea clasificada como potencia mundialista.

El análisis incluye el estudio de variables como:

- País
- Potencia Mundial
- Elo Rating
- Ranking FIFA
- Valor del Plantel
- Probabilidad estimada
- Predicción del modelo
- Ranking de probabilidades
- Top 10 selecciones con mayor probabilidad

A través de un modelo de regresión logística, odds ratios, Pseudo R² de McFadden, análisis de multicolinealidad mediante VIF, matriz de confusión, accuracy y ranking de probabilidades, se busca comprender los determinantes de una potencia mundialista y evaluar la capacidad predictiva del modelo.

Los resultados muestran que el Elo Rating fue la variable con mayor relevancia estadística dentro del modelo, mientras que el Ranking FIFA presentó una significancia marginal. Por su parte, el valor de mercado del plantel no resultó estadísticamente significativo, lo que indica que tener jugadores costosos no garantiza necesariamente ser una potencia mundialista. El modelo obtuvo un Pseudo R² de McFadden de 0.536 y una exactitud de 89.58%, clasificando correctamente 43 de las 48 selecciones analizadas. 

--------------------------------------------------  

# **Estructura del repositorio**  

El repositorio está organizado en las siguientes carpetas:  

--------------------------------------------------  

# **Carpeta Document**  

Esta carpeta contiene los documentos finales relacionados con el análisis del proyecto.  

**Archivos incluidos:**  

- **Proyecto_Final_Potencia_Mundialista_2026.pdf**  

Documento principal donde se presenta el desarrollo completo del análisis del caso. Este documento incluye la introducción, contexto, descripción de la base de datos, análisis de resultados, estimación del modelo logístico, interpretación de coeficientes, evaluación del desempeño del modelo, ranking de selecciones con mayor probabilidad y conclusiones sobre los factores que explican la condición de potencia mundialista.

- **Resumen_Ejecutivo_Potencia_Mundialista_2026.pdf**  

Documento que presenta una síntesis de los hallazgos más relevantes del análisis. En este resumen se destacan las conclusiones clave relacionadas con los determinantes de una potencia mundialista, el desempeño del modelo predictivo y las implicaciones estratégicas del análisis de cara al Mundial 2026.

--------------------------------------------------  

# **Carpeta Scripts**  

Esta carpeta contiene el código utilizado para desarrollar el análisis de datos.

El análisis fue realizado utilizando el software **R**.

**Archivo incluido:**  

- **Potencia_Mundialista.R**  

Este script incluye:  

- Carga de librerías necesarias
- Importación de la base de datos
- Limpieza de nombres de variables
- Revisión de estructura y resumen de la base
- Estimación del modelo logístico final
- Cálculo del Pseudo R² de McFadden
- Cálculo de odds ratios
- Análisis de multicolinealidad mediante VIF
- Generación de probabilidades predichas
- Clasificación de selecciones
- Construcción de la matriz de confusión
- Cálculo del accuracy
- Ranking de probabilidades
- Identificación del Top 10 de selecciones favoritas
- Generación del gráfico de probabilidades
- Exportación de resultados del modelo
- Exportación de ranking y base con predicciones

--------------------------------------------------  

# **Carpeta Stores**  

Esta carpeta contiene las bases de datos utilizadas para el análisis.  

**Archivos incluidos:**  

- **Base_Mundial_2026.xls**  

Este archivo contiene la información utilizada en el caso, incluyendo datos sobre:  

- País o selección nacional
- Clasificación como potencia mundialista
- Elo Rating
- Ranking FIFA
- Valor del plantel
- Variables deportivas y económicas utilizadas para el modelo
- Información necesaria para calcular probabilidades y predicciones

Estos datos constituyen la base para el análisis estadístico y la construcción de los resultados obtenidos en el modelo predictivo.
--------------------------------------------------  

# **Carpeta Views**  

Esta carpeta contiene todas las figuras, tablas y gráficos generados durante el análisis.

Entre las visualizaciones incluidas se encuentran:  

- Resultados del modelo logístico
- Tabla de odds ratios
- Pseudo R² de McFadden
- Tabla de VIF para evaluar multicolinealidad
- Matriz de confusión
- Métricas de desempeño del modelo
- Ranking de probabilidades
- Gráfico del Top 10 de selecciones con mayor probabilidad
- Base con predicciones generadas por el modelo

Estas visualizaciones permiten interpretar y comunicar de manera clara los resultados obtenidos, especialmente la capacidad del modelo para clasificar selecciones y estimar cuáles tienen mayor probabilidad de ser consideradas potencias mundialistas.
--------------------------------------------------  

# **Notas**  

Para ejecutar correctamente el análisis se recomienda utilizar **R o RStudio**.  

Antes de ejecutar los scripts es recomendable:  

1. Configurar el directorio de trabajo en la carpeta Scripts del repositorio.
2. Verificar que todos los paquetes necesarios estén previamente instalados.
3. Confirmar que la base Base_Mundial_2026.xlsx se encuentre disponible.
4. Ejecutar el script Potencia_Mundialista.R siguiendo el orden indicado en el código.
5. Revisar los archivos exportados con las probabilidades, predicciones y resultados del modelo. 

La velocidad de ejecución puede variar dependiendo de las características del equipo en el que se ejecuten los scripts.
