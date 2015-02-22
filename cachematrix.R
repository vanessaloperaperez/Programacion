- ## Colocar comentarios aquí que dan una descripción general de lo que su
- ## funciones hacen
+ ## Estos dos funciones crear, almacenar y recuperar una matriz y su inversa en / desde la memoria caché  
 
- ## Escribe un comentario corto que describe esta función
 
- makeCacheMatrix  <-  función ( x  =  matriz ()) {
+ ## makeCacheMatrix crea tipo de matriz personalizada capaz de ejecutar cuatro funciones
+ ## tiendas de ajuste de la matriz en la memoria caché, obtener recuerda la matriz
+ ## setInverse y getInverse hacen lo mismo pero para la inversa de la matriz original
 
+ makeCacheMatrix  <-  función ( x  =  matriz ()) {    
+   m  <-  NULL
+   set  <-  función ( y ) {
+     x  << -  y  
+     m  << -  NULL  matriz #store en caché
+}
+   obtener  <-  función () x  #get matriz
+   setInverse  <-  función ( resolver ) m << -  resolver  matriz inversa #set
+   getInverse  <-  función ) ( m  matriz inversa #get
+   lista ( set  =  conjunto , get  =  get ,
+        setInverse  =  setInverse ,
+        getInverse  =  getInverse )   ## crear lista de funciones
 }
 
-
- ## Escribe un comentario corto que describe esta función
+ ## cacheSolve tomar un tipo de matriz personalizada creada por la función makeCacheMatrix
+ ## y calcula la matriz inversa de ella
+ ## pero primero comprueba si el cálculo se ha hecho antes
+ ## si se ha hecho antes de que recupera los datos de la caché. Si no se ha hecho
+ ## antes de que se calcula la matriz inversa luego almacenarlo en la memoria caché
 
 cacheSolve  <-  función ( x , ... ) {
-         ## Devuelve una matriz que es la inversa de 'x'
+   ## Devuelve una matriz que es la inversa de 'x'
+   m  <-  x $ getInverse ()                  #query caché la x de la matriz
+   si ( ! is.null ( m )) {                     #if hay una caché la inversa ha sido calculado previamente
Message ( " la obtención de datos en caché " )     # mensaje enviado indicando que esto es sólo caché
+     retorno ( m )                          # devuelve el caché  
+}
+   datos  <-  x $ get ()                      # obtener la matriz utilizada por la función makeCacheMatrix
+   m  <- resolver ( datos , ... )                # calcular la inversa de la matriz
+   x $ setInverse ( m )                      # tienda de la matriz inversa en caché mediante la puesta en función makeCacheMatrix
 }
