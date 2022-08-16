# Introducción

El presente constituye el Trabajo Práctico Final de la materia Entorno de Programación correspondiente al 1ª Cuatrimestre de la Tecnicatura Universitaria en Inteligencia Artificial (TUIA).
El objetivo del mismo es generar un contenedor que al ejecutarse presente un Menú de Opciones de filtrado de un texto determinado, cuyos resultados se presentarán por pantalla.


# Funcionalidades
Menú de mini aplicaciones (scripts de bash) para análisis de texto.  

1.  statsWords.sh  
Indicador estadístico de longitud de palabras (la más corta, la más larga y el promedio de longitud).  
2.  statsUsageWords.sh  
Indicador estadístico de uso de palabras, deben ser de al menos 4(cuatro) letras . Se muestra un Top Ten de estas palabras ordenadas desde la que tiene más apariciones a la que tiene menos). 
3.  findNames.sh  
Identificación de nombres propios (se identifican sólo si están en este formato  
Nnnnnnnnn), aunque la palabra no sea un nombre propio realmente.  Ejemplos: Mateo, Estonoesunnombre, Ana.  
4.  statsSentences.sh  
Indicador estadístico de longitud de oraciones (la más corta, la más larga y el promedio de longitud).  
5.  blankLinesCounter.sh  
Contador de líneas en blanco.  

	PANTALLAS (6)

## Aspectos evaluativos 

 - programación bash

 - uso de git / gitlab o github

 - uso de contenedores

 - generación de documentación

## Modo de Utilización

 1. Una vez accedido al repositorio en Github se debe descargar todos los archivos y colocarlos en un mismo directorio. Solo deben estar dichos archivos
 2. Luego se debe montar una imagen con el comando:
	 **docker build -t tpentorno .**
	 este  creará una imagen con las instrucciones contenidas en el archivo Dockerfile.
   
	PANTALLA 
 3. Una vez montada la imagen se deberà ejecutar el siguiente comando:
	**docker run -it tpentorno **
	el cual corre un contenedor desde el cual se ejecutará el Menú Principal de inicio de la aplicaciòn.
  

	PANTALLA

## Herramientas utilizadas

 - GIT: para el control de versiones de la app durante su desarrollo
 - DOCKER: para tener acceso a la app desde cualquier sistema operativo
 - BASH: para interperetar el código de los scripts de la app



```
