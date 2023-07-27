void main() {
  
  //Listas[]
  final numeros = <int>[1,2,3,4,5,5,5,6,7,8,8,9,10];//lista de numero
  
  print('Listado de numeros original: $numeros');//Imprime la lista
  print('Tamaño de la lista: ${numeros.length}');//Imprime el tamaño del arreglo
  print('Primer elemento de la lista: ${numeros[0]}');//Imprime el primer elemento
  print('Primer elemento de la lista: ${numeros.first}');//Imprime el primer elemento
  //Imprime la lista al revez pero la vuelve un iterable = ()
  print('Listado de numeros en reversa: ${numeros.reversed}');//Imprime la lista en reversa
  
  //Iterable()
  final numerosIterable = numeros.reversed;
  print('Iterable:$numerosIterable');//Imprime un iterable
  //vuelve el iterable a lista nuevamente = []
  print("Convirtiendo el iterable a lista: ${numerosIterable.toList()}");//imprime una lista
  //vuelve el iterable a set de datos
  print("Convierte el iterable en un set de datos: ${numerosIterable.toSet()}");//Imprime un set de datos sin repetir los numeros
  //Imprime numeros mas grandes que 5 
  final numerosMasGrandesQue5 = numeros.where((int num){
    return num > 5;
  });
  print('Iterable de numeros mayores que 5: $numerosMasGrandesQue5');
  
  //Set de datos {}
  
  final numerosSet = numerosIterable.toSet();
  print("Set: $numerosSet");//Imprime el set de datos
  
  
  
}