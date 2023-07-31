
//Clase padre
abstract class Animal {

}

//Clases que heredan
class Mamifero extends Animal {
  
}

class Ave extends Animal {
  
}

class Pez extends Animal {
  
}



//Mixing
//Clases de tipo mixing
mixin class Volador {
  void volar() => print("Estoy volando");
}

mixin class Nadador {
  void nadar() => print("Estoy nadando");
}

mixin class Caminante {
  void caminar() => print("Estoy caminando");
}






//Mixing
//Clase de cada animal que extiende y utiliza el Mixing especifico la palabra reservada es with
class Delfin extends Mamifero with Nadador {
  
}
class Murcielago extends Mamifero with Volador,Caminante {
  
}
class Gato extends Mamifero with Caminante {
  
}

class Paloma extends Ave with Volador, Caminante {
  
}
class Pato  extends Ave with Volador, Caminante, Nadador {
  
}
class Tiburon extends Pez with Nadador {
  
}
class PezVolador extends Pez with Nadador, Volador {
  
}

void main () {
  
  final Delfin delfin1 = Delfin();
  delfin1.nadar();
  
  
  final Murcielago murcielago1 = Murcielago();
  murcielago1.caminar();
  murcielago1.volar();
  
  final Pato pato1 = Pato();
  pato1.caminar();
  pato1.nadar();
  pato1.volar();
  
}

