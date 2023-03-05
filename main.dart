/// Programación Orientada a Objetos - DART

/// Variables
/*
 Admite objetos -> numeros, cadenas, valores bool
 listas, mapas
 En versiones actuales de dart tenemos NullSafety
 y hay dos maneras de 
*/

// Dart no es de fuertemente tipado, por lo que no es necesario
// poner el tipo de dato que es
var variable = 1;
var variable2 = 'Study';
var variable3 = false;

// Números inicializados no nullos
int number = 1;
double doubleNumber = 1.0;
// Cadenas inicializadas no nullas ('' y "" )
String text = 'This is string';
String textDouble = "This is string with double commas";
// Valores booleanos no nullos
bool value = true;
// Listas -> puedes asignar el tipo de los valores internos o no
List<int> numberList = [1, 2, 3, 4, 5];
List dynamicList = [1, 'Lunes', 2, 'Martes', 3, 'Miercoles'];
// Mapas
var countries = {'co', 'Colombia', 'pe', 'Perú', 'mx', 'México'};

// Valores nullos o no nullos futuros
int? numberNull; // valor acepta null, no inicializado
late int numberFuture; //es nullo pero se debe asignar valor en algun momento

/// Constantes
/*
  Usamos las siguientes palabras reservadas:
  const -> valor asignado en tiempo de compilación
  final -> valor asignado en tiempo de ejecución
*/
final nameFinal = 'Sergio';
final String nameFinalTyped = 'Sergio ';

const nameConst = 'Sergio';
const String nameConstTyped = 'Sergio ';

/// Funciones
// Las funciones pueden recibir distintos parametros y devolver un dato
// los parametros de entrada pueden ser requeridos, posicionales o nombrados

bool verifyProduct(int id, int price) {
  return true;
}

bool verifyProduct2([int? id, double? price]) {
  return false;
}

void verifyProduct3({int? id, double? price}) {}

/// Condicionales y control de flujo
void condicionales() {
  int verification = 10;
  bool? outputValue;

  /// Condicional IF
  // podemos usar en bloque de codigo
  if (verification > 10) {
    // flujo cuando se cumple la condicion
  } else {
    // flujo cuando no se cumple la condicion
  }
  // podemos usar en validacion corta
  // ? () cuando se cumple la condicion
  // : () cuando no se cumple la condicion
  verification > 10 ? outputValue = true : outputValue = false;
  print(outputValue);

  /// Bucle FOR
  var numeros = [1, 2, 3, 4, 5, 6, 7];

  // podemos usar el for en las listas como:
  for (var numero in numeros) {
    print(numero);
  }
  // cuando el objeto por el cual vamos a hacer un for sea un iterable
  // tambien podemos usar la funcion forEach (propia de dart)
  numeros.forEach((element) => print(element));

  /// Switch case
  var age = 20;
  switch (age) {
    case 18:
      {
        print("Excelente");
      }
      break;

    case 19:
      {
        print("Bueno");
      }
      break;

    case 20:
      {
        print("Regular");
      }
      break;

    case 21:
      {
        print("Mala");
      }
      break;

    default:
      {
        print("Elección no válida");
      }
      break;

    ///
  }

  /// Bucle While y DO
  var num = 3;
  var fact = 1;

  // While solo
  while (num >= 1) {
    fact = fact * num;
    num--;
  }
  print("El factorial es $fact");
  // DO
  var n = 5;
  do {
    print(n);
    n--;
  } while (n >= 0);

  /// BREAK
  // se utiliza para detener un bucle
  var i = 1;
  while (i <= 10) {
    if (i % 5 == 0) {
      print("El primer múltiplo de 5 entre 1 y 10 es: $i");
      break;
      //sale del bucle si se encuentra el primer múltiplo
    }
    i++;
  }

  /// Try AND Catch
  // se usa para
  try {
    verifyProduct(1, 2);
  } on FormatException catch (e) {
    // Cualquier tipo de excepcion
    print('Exception Launched : $e');
  } catch (e) {
    // Tipo no especificado, puede ser util para obtener errores
    // dentro del codigo (ej: algun error de tipo de dato)
    print('Some error: $e');
  }

  /// Excepciones
  throw FormatException('Se maneja excepciones');
}

/// Clases
class Calculator {
  final int number1, number2;

  // constructor
  Calculator(this.number1, this.number2);
}

/// Herencia
class User {
  final String name, lastName;

  User({required this.name, required this.lastName});

  String get completeName => 'user: $name $lastName';

  void printName() => print('User class');
}

class Admin extends User {
  final String adminName;
  final String adminLastName;

  Admin({required this.adminName, required this.adminLastName})
      : super(name: adminName, lastName: adminLastName);

  @override
  void printName() => print('Admin class');
}

/// Probar codigo en dartpad.dev
main() => condicionales();
