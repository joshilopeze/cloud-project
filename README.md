# cloud-project

Se creó una aplicación de clasificación de 10 tipos de prendas de vestir usando machine learning con la libreria de tensorflow. Se utilizó un dataset "fashion_mnist" usando la libreria de tensorflow_datasets, la cual tiene 60000 datos de entrada (entrenamiento) y 10000 datos de prueba. Las imagenes de este data set tienen un tamaño de 28x28 pixel y solo tienen un canal, es decir, se encuentran en 'grayscale'.

### ML

* La red usada es una tipo "secuencial"
* La capa de entrada será tipo Flatten y será de 788 neuronas (numero de pixels total en una imagen de 28x28), es decir, una neurona por pixel.
* Se usarán unicamente 2 capas ocultas de 50 neuronas cada una, con activación RELU
* La capa de salida es de 10 neuronas ya que unicamente tenemos 10 tipos de prendas. Adicionalmente, se usará la función SOFTMAX.
* El optimizador es adam
* La precisión es del 88%
