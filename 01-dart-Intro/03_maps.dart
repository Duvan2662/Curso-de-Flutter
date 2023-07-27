void main() {
  
  
  //Map
  //Pares de valores o llave-Valor: llave=primerDato --- Valor=segundoDato
  
  /* tipos de mapas
  Map<tipo de dato del primervalor,tipo de dato del segundo valor> nombreDelMapa = { 
  
  };
  */
  
  /*
  Colocando los valores de los pares
  final Map<int,String>superHeroes = {
    
    1 : "Batman",
    2 : "Flash",
    3 : "SuperMan"
  }; 
   */
  
  //Infiriendo los valores de los pares en este caso seria Map<String,dynamic>
  final Map<String,dynamic>pokemon = {
    
    'nombre' : "Charmander",//llave = String -- valor = String
    'vida' : 100, //llave = String  -- valor = int
    'estaVivo' : true,//llave = String  -- valor = boleano
    'habilidades' : <String>["fuego"],//llave = String  -- valor = Lis<String>
    'poderes' : {//llave = String  -- valor = Map<int,String>{}
      1:"volar",
      2:"correr",
      3:"nadar",
      4:"mimir"
    },
       
  };
 
  print(pokemon); //Imprime todo el mapa Pokemon
  print('Nombre: ${pokemon['nombre']}');//Imprime el nombre del pokemon no mas
  print('poderes: ${pokemon['poderes']}');//Imprime la lista de poderes
  print('poder: ${pokemon['poderes'] [1]}');//Imprime el primer poder --- El mapa en su segundo valor tiene que ser dynamic para poder hacer esto
  print('poder: ${pokemon['poderes'] [2]}');//Imprime el segundo poder--- El mapa en su segundo valor tiene que ser dynamic para poder hacer esto
  print('poder: ${pokemon['poderes'] [3]}');//Imprime el tercer poder--- El mapa en su segundo valor tiene que ser dynamic para poder hacer esto
  print('poder: ${pokemon['poderes'] [4]}');//Imprime el cuarto poder--- El mapa en su segundo valor tiene que ser dynamic para poder hacer esto





}