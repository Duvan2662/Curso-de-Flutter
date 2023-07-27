void main() {
  var myName = 'Duvan David'; //Infiere el tipo de dato de la variable
  String lastName = 'Riaño Salazar'; //Se le da el tipo de dato de la varible
  final variableFinal ='Hola undo '; //No se le puede cambiar el valor de la variable en ninguna parte del progrma
  late final variableFinal2; // Se le asigna un valor a la variable mas adelante en el codigo
  const yourName2 ='Daniel Felipe'; //No se le puede cambiar el valor de la variable en ninguna parte del program Se utiliza para mejorar la velocidad de las aplicaciones en flutter

  variableFinal2 = "Asignando algo a la variable tardia mente";


  
  print('hola mi  nombre es $myName $lastName'); //$ = Interpolacion de Sting
  print('hola mi  nombre es ${myName.toUpperCase()} ${lastName.toUpperCase()}'); //{} = se utliza para poder acceder a los metodos o propiedades de la variable
  print('hola ${1 + 1}'); //{} = suma de dos numeros
}
