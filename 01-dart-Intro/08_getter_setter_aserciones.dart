
void main() {
  
  final Cuadrado areaCuadrado = Cuadrado(lado: 5);
  
  areaCuadrado.cambiarValor = 10;

  print("Calcular el area: ${areaCuadrado.area}");
  
  
  
}



class Cuadrado {
  
  //El guion bajo significa que es una propiedad privada
  double _lado;
  
 
  //Constructor
  Cuadrado({required double lado})
    : assert (lado>=0, "El lado debe ser mayor o igual a cero"), //Asercion nos ayuda a progrmar la logica de negocio que quiere decir esto por ejemplo para este ejemplo que se quiere calcular el area de un cuadrado el numero no puedo ser negativo por tanto se coloca esta asercion para que cuando el numero sea menor que cero imprima un mensaje de error --Haga un ejemplo colocando un -10 y se dara de cuenta 
      _lado = lado;
  
  //manera de establecer un getter
  double get area {//TipoDeDatoQueRetorna get NombreDelGet{return}
    return _lado * _lado ;//Retorna el area del cuadrado 
  }
  
  //manera de establecer un setter
  set cambiarValor(double valor){
    print("Cambiando el valor");
      if(valor<0) throw "El valor es menor que cero";//Si el valor es menor que cero imprime un mensaje 
    _lado = valor;//si no es menor que cero cambia el valor del dato 
  }
  
  
  //Manera de crear un metodo 
  double calcularArea() => _lado * _lado;
  
 
}
