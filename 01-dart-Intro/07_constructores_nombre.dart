void main() {
  
  //Objeto ironman normal 
  final Heroe ironMan = Heroe(//Constructor que recibe parametros por nombre
    nombre:"Tony", 
    poder: "Tecnologia", 
    estaVivo: true
  );
  
  print(ironMan);//Imprime el objeto iroman
  
  
  
  //Ejemplo de un mapa que trae un heroe 
  final Map <String,dynamic> heroesMapa = {
    "nombre" : "Batman",
    "poder" : "Dinero",
    "estaVivo": false
  };
  
  
  // Objeto batman intanciado con el Map
  final Heroe batman = Heroe.deObjetoMapa(//Constructor que recibe un Map 
    heroesMapa
  );
  print(batman);
  
  
  
  
} 






class Heroe {
  
  String nombre;//propiedad de la clase 
  String poder;
  bool estaVivo;
  
  Heroe({//Constructor de parametros por nombre
    required this.nombre,
    required this.estaVivo,
    required this.poder
    });
  
  //Constructor que recibe parametros mediante un Map
  Heroe.deObjetoMapa(Map<String,dynamic> mapa)
    : nombre = mapa["nombre"] ?? "No viene nombre en el Mapa",//en la propiedad nombre coloca lo que trae el mapa  si no trae nada (?? => significa si es null) coloca No viene nombre en el Mapa
      poder =  mapa["poder"] ?? "No viene poder en el Mapa" ,//en la propiedad nombre coloca lo que trae el mapa  si no trae nada (?? => significa si es null) coloca No viene poder en el Mapa
      estaVivo = mapa["estaVivo"] ?? "No viene si esta vivo en el Mapa";//en la propiedad nombre coloca lo que trae el mapa  si no trae nada (?? => significa si es null) coloca No viene si esta vivo en el Mapa
  
  
  @override
  
  String toString(){
    return "Nombre: $nombre - Poder: $poder - Esta vivo?: ${estaVivo ? "Si" : "No"}";//${estaVivo ? "Si" : "No"} ==> si estaVivo = true entonces imprime si, si no esta vivo imprime no
  }
  
  
}