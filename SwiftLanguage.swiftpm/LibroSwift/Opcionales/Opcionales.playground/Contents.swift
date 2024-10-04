import UIKit

//“Vamos a verlo en un ejemplo, creamos dos variables opcionales de tipo String.

var name: String? = nil

//“Si defines una variable como opcional, no hace falta que le asignes el valor nil, ya que cuando se crea se le asigna por defecto. Es decir, podríamos crear un opcional de la siguiente manera:”

var anotherName: String?

//Si más tarde queremos añadir un valor a alguna de estas dos varaibles que hemos declarado, tan solo debemos asignárselo de la siguiente manera:

name = "SwiftBeta"
anotherName = "Suscríbete"

//“2. ¿Cómo extraer el valor de un opcional en Swift?

//En muchas ocasiones, a lo largo de nuestro programa, nos interesa trabajar con el valor que contiene el opcional. Es decir, desempaquetar el opcional y trabajar únicamente con su valor, ya que nos facilita y simplifica mucho el código. A continuación vamos a aprender a cómo extraer el valor de un opcional y vas a ver que podemos hacerlo de diferentes maneras:”

//Extraer con un if let

//En este ejemplo, vamos a transforma un String a Int, y vamos a usar if let para extraer el valor del opcional (en caso de tener un valor).

var myNewString = "123"
var myInt = Int(myNewString)

if let extractedInt = myInt {
    print(extractedInt)
} else {
    print("No value")
}
/**
 1. Creamos una variable de tipo String con el valor de "123"
 2. Transformamos myNewString a un Int. Para hacerlo, usamos el mismo inicializador que hemos visto en la sección anterior.
 3. El tipo de la variable myInt es opcional, es Int? como aprendimos al principio de este capítulo. Esto es debido a que esta transformación puede fallar (y si puede fallar entonces puede contener nil, y por lo tanto es un opcional).
 4. Creamos un if let para extraer el valor de la variable myInt. Si myInt tiene un valor, se almacena en extractedInt
 5. Printamos el valor de extractedInt (en este caso es el número 123). Y como curiosidad, comentar que el tipo de extractedInt es de tipo Int. Es decir, podemos usar extractedInt como una variable normal (sin tratarla como un opcional).
 6. Si no se puede extraer ningún valor de myInt, printamos por consola "No value".*/

//Extraer con map

//Otra manera de extraer el valor de un opcional es usando la función map. Es decir, podríamos hacer lo siguiente:

var myNewString2 = "123"
var myInt2 = Int(myNewString)

myInt2.map { value in
    print("Value \(value)")
}

// RESULTADO 👇
// Value 123

//Extraer valor con Force Unwrap

//Pero ¿qué significa que sea seguro?¿hay alguna manera insegura? La respuesta es sí y es usando el force unwrap

//Si extraemos el valor de un opcional usando force unwrap, y resulta que la variable no tiene valor (su valor es nil) lo que pasará es que la ejecución de nuestra aplicación crasheará cerrándose por completo

//Veamos un ejemplo:

var myString3 = "123"
var myStringToInt3 = Int(myString3)

print(myStringToInt3) //En el primer print estamos mostrando el contenido de myStringToInt, que en este caso es de tipo Int?
print(myStringToInt3!)

//Pero en el segundo print, al usar la exclamación ! lo que estamos haciendo es extraer el contenido de nuestro opcional, por lo tanto sacamos su valor (lo estamos desempaquetando


//Ahora vamos a ver otro ejemplo. En este caso vamos a ver qué pasaría si intentáramos hacer un force unwrap de una variable que su valor es nil (es decir, que no contiene ningún valor).

let myStringHola = "Hola"
let myStringToNil = Int(myStringHola)

//print(myStringToNil!)

// RESULTADO 👇
// [Fatal error: Unexpectedly found nil while unwrapping an Optional value]

//Si analizamos el error, nos indica que ha encontrado nil mientras intentaba extraer el valor de un opcional.
//Esto nos lleva a una conclusión, utiliza solo Force Unwrap cuando sepas seguro que hay un valor dentro de un opcional, sino ¿qué pasará? Tu aplicación tendrá un fatal error y crasheará (cerrándose por completo sin dar ningún tipo de contexto a los usuarios que usen tu aplicación).

//Operador nil coalescing en Swift ??

//La última manera que vamos a ver de extraer el valor de un opcional es con el operador ??. Usar este operador es otra manera segura de trabajar con opcionales.

//Se ve muy claro en el siguiente ejemplo:

var nilValue: String? = nil
var finalValue = nilValue ?? "SwiftBeta"

print(finalValue)

// RESULTADO 👇
// SwiftBeta

/**
 1. Hemos creado una variable llamada nilValue de tipo String?. Y le hemos asignado directamente nil (para este ejemplo no queremos que tenga ningún valor).
 2. Utilizamos el operador ?? para que en caso de no tener un valor en la variable nilValue, asigne por defecto la String "SwiftBeta" a la variable finalValue.
 3. El print muestra por consola "SwiftBeta". */

//En este capítulo hemos hecho un buen repaso sobre los opcionales en Swift. Antes de finalizar, me gustaría recalcar que cualquier tipo en Swift puede ser un opcional. Es decir, en muchas ocasiones te encontrarás creando opcionales con tipos de la Librería Standard de Swift y tipos propios que crearás en tus aplicaciones:

// Tipos de la Librería Standard de Swift
var myValue: Int? = nil
var myBool: Bool?
var myString: String?
var myDouble: Double?

// Tipos propios creados en tu aplicación
struct Car { }
var myCar: Car?

struct User { }
let follower: User?

