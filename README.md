# Seminario de Herramientas para Ciencia de Datos
## :rocket: Proyecto: Patrones de Supervivencia para Distintos tipos de Cáncer
**Maestría en Ciencia e Ingeniería de la Computación, UNAM**   
*Manuel Soto Romero*   

:warning: *Borrador. Trabajo en proceso.*

![imagen](imagenes/dataset-card.jpg)

### :capital_abcd: Introducción
Este proyecto está basado en el reto *Survival Patterns of Cancers* disponible en la plataforma [Kaggle](https://www.kaggle.com/saurabhshahane/survival-patterns-of-cancers).
Este proyecto incluye tres conjuntos de datos:

- Datos sobre cancer de esófago.
- Datos sobre cancer colorectal.
- Datos sobre cancer de próstata.

cada uno de los cuales incluye información sociodemográfica, características de los pacientes, signos, síntomas, 
características de imagen e histológicas así como el estudio [TNM](https://en.wikipedia.org/wiki/TNM_staging_system) del 
cáncer. Así mismo incluye opciones de tratamiento que recibió el paciente así como el estado del mismo (si falleció o
no).

#### :dart: Objetivos y Tareas

- Cargar los datos en un modelo de base de datos relacional.

- Realizar un análisis exploratorio de dato con el fin de obtener estadísticas sobre los datos obtenidos.

- Conectar la base de datos con __Python__ sobre su herramienta __Jupyter Notebooks__ para realizar labores de 
  predicción, clasificación, entre otras posibles.

- Con base en el campo que nos permite determinar si el paciente sobrevivió o no, determinar la correlación de variables
  que nos permita realizar un modelo de predicción quizá por medio de *regresión*.

- Con base en el campo de tratamiento y el campo que determina si el paciente sobrevivió, realizar un modelo de 
  clasificación que ayude a determinar el mejor tratamiento para nuevos pacientes. (:warning: Quizá sea más conveniente
  tratarlo como problema de decisión o de recomendación).

- Por supuesto, realizar actividades de preprocesamiento de los datos con el fin de tener un conjunto de datos limpio
  y bien estructurado que facilite las tareas de predicción y/o clasificación.

### :ballot_box_with_check: Carga y preprocesamiento de datos

Se obtó por usar el Gestor de Bases de Datos __PostgreSQL__ pues sus cláusulas `CUBE` y `ROLLUP` nos permiten realizar
un análisis exploratorio más detallado. Se contó inicialmente con los siguientes conjuntos de datos:

- [colorectal.csv](datasets/colorectal.csv)
- [esophageal.csv](datasets/esophageal.csv)
- [prostate.csv](datasets/postate.csv)

Previo a la carga de datos, se analizó la estructura de cada archivo para determinar si era necesario crear nuevas 
tablas. Derivado de este análisis se notó que no había una equivalencia directa entre estas tablas, por lo que se optó analizar cada conjunto de datos individualmente, sin embargo, **para los fines de este proyecto únicamente se analizaron los datos de cáncer de esófago**.

No se ocuparon todos los datos pues no eran relevantes para el proyecto. Con el fin de no perder los datos originales, se creó una vista (`esophageal_clean`). Las diferencias entre la tabla original y la vista se muestran en el siguiente diagrama:

<center><img src="imagenes/base.png" width="25%" height="25%"></center>

Notar el cambio en los tipos de datos. El proceso de cambio y la construcción de la vista se puede consultar en el siguiente [*script*](limpieza/esophageal.sql) y puede replicarse para los otros dos conjuntos de datos, cuidando que las columnas sean del tipo adecuado y evitando los valores nulos.

### :o: Análisis Exploratorio de Datos

*Sección en proceso*

### :o: Predicción

*Sección en proceso*

### :o: Clasificación

*Sección en proceso*

### :o: Resultados

*Sección en proceso*

### :o: Conclusiones

*Sección en proceso*

### :o: Trabajo a futuro

*Sección en proceso*
