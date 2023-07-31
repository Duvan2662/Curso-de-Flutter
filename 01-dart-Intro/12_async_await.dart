void main() async {
  print("Inicio del programa");

  try {
    //recuerde que para poder utilizar await la funcion debe ser async
    //en este caso async es el void main()
    final valor = await peticionhttp(
        "http//www.google.com"); //valor = a el resultado del Future peticionhttp
    print(valor); //se imprime dicho valor
  } catch (error) {
    print("Este es el error:$error");
  }

  print("Final del programa");
}

//async siempre retorna un future
Future<String> peticionhttp(String url) async {
  await Future.delayed(Duration(seconds: 1)); //Despues de un segundo

  throw "Error en la peticion";
  //return "tenemos un valor en la peticion http";//retorna este string
}
