# cloud-project

Se creó una aplicación de clasificación de 10 tipos de prendas de vestir usando machine learning con la libreria de tensorflow. Se utilizó un dataset "fashion_mnist" usando la libreria de tensorflow_datasets, la cual tiene 60000 datos de entrada (entrenamiento) y 10000 datos de prueba. Las imagenes de este data set tienen un tamaño de 28x28 pixel y solo tienen un canal, es decir, se encuentran en 'grayscale'. La aplicación fue exportada a un archivo llamado "model.json" con el fin de poder cargar el modelo creado para ser usado en un .html y ser probado en tiempo real.

### ML

* La red usada es una tipo "secuencial"
* La capa de entrada será tipo Flatten y será de 788 neuronas (numero de pixels total en una imagen de 28x28), es decir, una neurona por pixel.
* Se usarán unicamente 2 capas ocultas de 50 neuronas cada una, con activación RELU
* La capa de salida es de 10 neuronas ya que unicamente tenemos 10 tipos de prendas. Adicionalmente, se usará la función SOFTMAX.
* El optimizador es adam
* La precisión es del 88%

Cabe recalcar que al probar esta aplicación en el navegador la precisión no parecerá tan alta ya que muchas veces esta predecirá mal. Esto se debe a que el algoritmo de autoaprendizaje analiza pixel por pixel el dibujo que realizaremos en esa caja de 28x28, por lo tanto, si quisieramos dibujar un bolso deberiamos tratar de pintar la mayor cantidad posbible de espacios para que los pixels no queden en blanco.
### Docker

* Para la configuración del DockerFile utilicé un FROM nginx ya que el archivo final a dockerizar era el .html y no el codigo de python.
* La construcción de la imagen se realizó mediante el comando: docker build -t proyecto .
* Para realizar el deploy de la aplicación se utulizó el comando:  docker run -p 8080:80 -d proyecto
* Posteriormente poder abrir el navegador y mediante el localhost:8080 poder observar la aplicación.
* Para volumenes se utilizó el comando : docker run -d -v C:\Users\USUARIO\Desktop\cloud\dist:/usr/share/nginx/html -p 8080:80 -v C:\Users\USUARIO\Desktop\cloud\src:/cloud/src proyecto --- con el cual podía realizar cambios en mi codigo fuente y no necesitar crear una imagen nueva para ver los cambios.

### Kubernetes

* Se realizó mediante el dashboard de minikube "minikube dashboard"
* Se realizó un push de la imagen para que esta pueda cargarse a Docker Hub y mediante ella poder hacer el Deploy en kubernetes
* 
