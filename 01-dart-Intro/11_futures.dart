void main () {
  
  print ( "Inicio del programa" );
  
  
  //Se llama la funcion luego se coloca un then que no va a evaluar esta funcion
  //(valor) es el valor de esta funcion y ese valor se imprime los que hacer ver el mensaje de la peticion get
  peticionhttp("http//www.google.com").then((valor){
    print(valor);
  }).catchError((error){//si llega a haber algun problema al ejecutar la funcion se ejecutara el catch
    print("error: $error");
  });
  print ( "Final del programa" );
  
  
  
  
  
}

//tipo de objeto Future
//en este caso quiero que el tipo de dato que retorne el future sea de tipo String pero se pueden otro tipos de datos


Future<String> peticionhttp(String url) {
  
  //delayed sirve para poder poder instanciar un objeto de tipo duration que sirve para que se ejecute una determinada funcion despues de un determinado tiempo
  //en este ejeplo despues de 1 segundo va a ejecutar una funcion que contiene un string que dice "Respuesta de la peticion http"
  return Future.delayed( Duration(seconds : 1), () {
    
    throw "Errro en la peticion http" ;//Si el Future llega  a fallar esto me ayuda a lanzar la esepccion(throw)
    //return "Respuesta de la peticion http";
  
  });
    
}
