void main() {
  
  final String pokemon = "Charmander";//String 
  final int vida = 100; //enteros 
  final bool estaVivo = true;//boleano 
  final List<String> habilidades = ['fuego'];//Lista de String      List<TIPO DE DATOS DE MI LISTA>
  final poderes = <String>["correr veloz", "Volar", "Nadar"]; //Lista de String       <TIPO DE DATOS DE MI LISTA>[dato1,dato2,dato3]
 
  
 //dynamic
 //puede tener valores nullo y se utiliza cuando no se el tipo de valor de una variable puede ser cualquier tipo de dato
 //Como el ejeplo de abajo  intente no utilizar este tipo de dato por que puede generar errores 
  dynamic mensajeError = "peguelo";
  mensajeError = true;
  mensajeError = ["dato1","dato2","dato3"];//Lista
  mensajeError = {"dato1","dato2","dato3"};//Set de datos
  mensajeError = null;
  
  
  
  bool? estaVivo2;//Esta variable puede tener 3 valores. true-false-null 
  
  //String multilinea """"""
  print("""
  $pokemon
  $vida
  $estaVivo
  $habilidades
  $poderes
  $mensajeError
  
  """);
  
}