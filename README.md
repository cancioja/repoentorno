# Introducción

El presente constituye el Trabajo Práctico Final de la materia Entorno de Programación correspondiente al 1ª Cuatrimestre de la Tecnicatura Universitaria en Inteligencia Artificial (TUIA).
El objetivo del mismo es generar un contenedor que al ejecutarse presente un Menú de Opciones de filtrado de un texto determinado, cuyos resultados se presentarán por pantalla.


# Funcionalidades
Menú de mini aplicaciones (scripts de bash) para análisis de texto.  

1.  statsWords.sh  
Indicador estadístico de longitud de palabras (la más corta, la más larga y el promedio de longitud).  
2.  statsUsageWords.sh  
Indicador estadístico de uso de palabras, deben ser de al menos 4(cuatro) letras . Se muestra un Top Ten de estas palabras ordenadas desde la que tiene más apariciones a la que tiene menos. 
3.  findNames.sh  
Identificación de nombres propios (se identifican sólo si están en este formato Nnnnnnnnn), aunque la palabra no sea un nombre propio realmente.  Ejemplos: Mateo, Estonoesunnombre, Ana.  
4.  statsSentences.sh  
Indicador estadístico de longitud de oraciones (la más corta, la más larga y el promedio de longitud).  
5.  blankLinesCounter.sh  
Contador de líneas en blanco. 


## Aspectos evaluativos 

 - programación bash

 - uso de git / gitlab o github

 - uso de contenedores

 - generación de documentación

## Modo de Utilización

 1. Una vez accedido al repositorio en Github se debe descargar todos los archivos y colocarlos en un mismo directorio. Solo deben estar dichos archivos
 2. El archivo Dockerfile es un archivo de texto plano que contiene una serie de instrucciones necesarias para crear una nueva imagen.
    Este conjunto de instrucciones serán los encargadss de indicar los pasos a seguir para el ensamblaje de una imagen en
    Docker, es decir, los elementos necesarios para el desarrollo de un contenedor en Docker. Para realizar esta tarea se utiliza el comando:
    
	 **docker build -t tpentorno .**
	   
	
 3. Una vez ensamblada la imagen se deberà ejecutar el siguiente comando:
 
	 **docker run -it tpentorno**
		
	el cual corre un contenedor (basado en dicha imagen) desde el cual se ejecutará el Menú Principal de inicio de la aplicaciòn.
  

## Herramientas utilizadas

 - GIT: para el control de versiones de la app durante su desarrollo
 - DOCKER: plataforma de virtualización a nivel de sistema operativo que permite crear la aplicación y empaquetarla junto con sus dependencias y librerías en un
   contenedor o  container. Este contenedor software, a su vez, puede ejecutarse en otras máquinas para tener acceso a la app desde cualquier sistema operativo
 - BASH: para interperetar el código de los scripts de la app



```
