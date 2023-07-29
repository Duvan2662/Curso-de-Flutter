void main() {
  final Heroe flash =
      Heroe(nombre: "Duvan", poder: "Veloz"); //Instanciar el objeto de la clase

  print(flash); //Esto de arriba es lo mismo que lo de abajo
  print(flash.toString()); //Imprime la intancia del objeto
  print(flash.nombre); //Imprime el nombre del objeto
  print(flash.poder); //Imprime el poder del objeto
}

//Clase en Dart
class Heroe {
  String nombre; //Propiedades de la clase
  String poder; //Propiedades de la clase

  //Manera 1

  //Heroe(this.nombre, this.poder);//Constructor de la clase NombreDeLaClase(this.PropiedaClase,this.PropiedadClase)

  Heroe(
      { //Contructor de la clase con parametros por Nombre y que son requeridos
      required this.nombre,
      required this.poder
      }
    );

  /*
   * 
   Manera 2 de crear contructor
   Heroe(String pNombre, String pPoder)
        : nombre = pNombre,
         poder = pPoder;
       
   * */

   //Override
  @override
  String toString() {//Se esta sobre escribiendo un metodo heredado cada vez que imprima la intancia de la clase va a aprecer esto
    return "$nombre - $poder"; //Retorna el nombre y el poder de la clase
  }
}
