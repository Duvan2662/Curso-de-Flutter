void main() {
  
  final plantaEolica = PlantaEolica(energiaInicial : 100);
  print(plantaEolica);
  
}

//Tipo de dato que crea el usuario segun sus necesidades 
enum TiposPlanta { solar,eolica,nuclear }//Se crea un tipo de dato que solo puede tomar 3 valores solar,eolica,nuclear




//Clases abtractas
//No se pueden inicializar 
abstract class PlantaDeEnergia {
  
  //propiedades
  double cantidadEnergia;
  final TiposPlanta tipo;
  
  
  //Constructor
  PlantaDeEnergia({ required this.cantidadEnergia, required this.tipo});
  
  
  //metodos
  //En las clases abtractas los metodos solo se definen no se implementan 
  void consumoDeEnergia(double consumo);
  
  
}


//extends 
// extends = significa que HEREDA todo de la clase padre las propiedades - el constructor - y lo metodos
class PlantaEolica extends PlantaDeEnergia {
  
  
  //Contructo de mi clase
  PlantaEolica({ required double energiaInicial})//Parametros que necesita en esta clase
    : super(cantidadEnergia: energiaInicial, tipo: TiposPlanta.eolica);//Parametros de la clase padre
  
  
  //metodo de la clase padre 
  //Se tiene que llamar igual
  //se utiliza @override por que se esta sobreEscribiendo de la clase padre
  
  @override
  void consumoDeEnergia(double consumo){
    cantidadEnergia = cantidadEnergia - consumo;
  }
}




//implements
//implements = implementa solo ciertos tipos de metodos y propiedades de la clase padre

class PlantaNuclear implements PlantaDeEnergia {
  
  //Se adiciona override por que son los mismos datos de la clase padre
  @override
  double cantidadEnergia;
  @override
  final TiposPlanta tipo = TiposPlanta.nuclear;
  
  
  //Constructor de mi clase PlantaNuclear
  PlantaNuclear({required this.cantidadEnergia});

  ////Se adiciona override por que son los mismos metodos de la clase padre
  @override
  void consumoDeEnergia(double consumo){
    cantidadEnergia = cantidadEnergia * 0.5;//varia lo que devuelve
  }
  
}