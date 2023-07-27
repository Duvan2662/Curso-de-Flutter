//Funciones en Dart
void main() {
  //funcion nomral
  print("Saludo 1: ${saludo()}");
  //funcion flecha
  print("Saludo 2: ${saludo2()}");
  //funcion normal
  print("Suma de dos numeros normal: ${sumarDosNumeros(1,2)}");
  //funcion flecha 
  print("Suma de dos numeros funcion flecha: ${sumarDosNumeros2(1,2)}");
  //funcion con parametros opcionales
  print("Suma de dos numeros parametros opcionales 1: ${sumarDosNumerosOpcional(15)}");
  print("Suma de dos numeros parametros opcionales 2: ${sumarDosNumerosOpcional(25)}");
  
  //funcion con parametros por nombre 
  print("Saludo 3: ${saludo3( nombre:"Daniel")}");//Se coloca el nombre del parametro y el valor del parametro el nombre es obligatorio el mensaje es opcional y ya esta pre definido  
  
  print("Saludo 3: ${saludo3( nombre:"Daniel", mensaje:"Buenos dias alegria,")}"); //Se coloca el nombre del parametro y el valor del parametro en este caso el nombre es obligatorio y el mensaje es opcional pero si se coloca el mensaje aparece en pantalla 
  
}

/*
 TipoDeDato NombreDeLaFuncion(tipodeparametro Parametros,....){
 return DatoQueRetorna
 }
 * */

//Funcion
String saludo() {
  return "hola a todos!!!";
}
int sumarDosNumeros(int a, int b){
  return a+b;
}


//Funcion flecha 
//TipoDeDato NombreDeLaFuncion(tipodeparametro Parametros,....) => retorno;
String saludo2() => "Hola mundo";
//Sumar dos numeros 
int sumarDosNumeros2(int a, int b) => a+b;


//Parametros opcionales 
int sumarDosNumerosOpcional(int a, [int ? b]){ //parametro b es opcional y puede ser null
  b = b ?? 0;//Si b = null entonces b=0
  //Manera abreviada del paso anterior 
  //b ??= 0;
  return a+b;
}
int sumarDosNumerosOpcional2(int a, [int b = 0]){ //parametro b es opcional y toma el valor de 0
  return a+b;
}


//Parametros por nombre y opcionales

String saludo3({String mensaje = "Hola,", required String nombre}) {
  return "$mensaje $nombre" ;
}


