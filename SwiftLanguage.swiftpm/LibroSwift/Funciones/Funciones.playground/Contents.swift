import UIKit

//FUNCIONES EN SWIFT

//Sintaxis de una función

func myFunction(){
    print("Do something")
}

//Las funciones pueden retornar valores, y si una función retorna un valor debemos especificarle el tipo en la firma de la función, es decir, vamos a escribir una función que haga la suma de dos números y retorne el resultado:

func add(a: Int, b: Int)-> Int {
    return a + b
}

//En este caso la firma de la función es:
//func add(a: Int, b: Int) -> Int

//Si nuestra función tiene una única línea de código y retorna un valor, podemos omitir la keyword return, es decir, podríamos escribir el siguiente código sin tener fallos al compilar:

func add2(a: Int, b: Int)-> Int {
    a + b
}

//Y la llamamos de la siguiente forma

add2(a: 10, b: 2)

//Tipos de una función

//Si continuamos con nuestra función add, un detalle curioso es que las funciones tienen un tipo. El tipo de una función consiste en los tipos de los parámetros de entrada y el tipo de retorno. En el caso de nuestra función add su tipo es (Int, Int) -> Int.

//Los valores que están entre paréntesis son los parámetros de entrada de nuestra función, y el tipo seguido de -> es el tipo de retorno.

let math = add(a:b:)

print(math(2,3))

// RESULTADO 👇
// 5

//Vamos a ver más ejemplos, ahora vamos a crear otra función para ver su tipo:

func show(message: String, name:String) -> String {
    return message + "" + name + "!"
}

let message = show(message: "Hola", name: "SwiftBeta")

//En este caso la función acepta dos parámetros de tipo String y retorna un tipo String, su tipo es (String, String) -> String.

//Poder almacenar funciones en constantes y variables es muy potente en Swift. Vamos a ver qué más podemos hacer con las funciones.


//Tuplas en Swift

//Acabamos de ver que las funciones en Swift pueden retornar valores. Esto es muy útil para poder almacenar el valor de retorno en constantes o variables. Además de retornar un tipo concreto, podemos retornar tuplas. Vamos a ver un ejemplo muy sencillo, a continuación creamos una función que retorna una tupla:

func getTuple() -> (String, String) {
    let channel = "SwiftBeta"
    let action = "Suscríbete"
    return (channel, action)
}

let (channel, action) = getTuple()

print(channel)
print(action)

// RESULTADO 👇
// SwiftBeta
// Suscríbete

//A veces resulta útil poder retornar una tupla con pocos valores, pero cuando la tupla retorna muchos valores quizás es mejor crear una Struct o Class.


//Nombres de Parámetros en Swift

//Podemos darle hasta 2 nombres:

//El primer nombre se usa desde fuera del scope de la función. Es decir, lo usará quién llame a la función.
//El segundo nombre se usa dentro del scope de la función. Es decir, se usa dentro de la implementación de la función.

func login (withUsername username: String, withPassword password:String) -> Bool {
    if username.count > 10 {
        return true
    } else {
        return false
    }
}

let isLogged = login(withUsername: "SwiftBeta", withPassword: "123456789")

print(isLogged)

//En Swift también podemos omitir un nombre en el parámetro de entrada y pasarle directamente un valor a la función, ¿cómo lo hacemos?

//añadiendo _ al primer nombre del parámetro, vamos a ver un ejemplo muy sencillo:

func validateUser(_ value: String) -> Bool {
    return value.count > 5
}

//Al llamar a esta función y pasarle el parámetro value, lo añadimos directamente entre los paréntesis de la función, como en el siguiente ejemplo:

validateUser("SwiftBeta")

//Antes de finalizar esta sección, quiero comentarte que podemos tener dos funciones con el mismo nombre en Swift, pero solo funciona si las dos funciones tienen tipos distintos, es decir:

//--> func getTwoValues() -> (String, String)
//--> func getTwoValues(paramOne name: String, paramTwo surname: String) -> (String, String)

//Estas dos funciones tienen el mismo nombre pero su tipo es diferente. Es por eso que podríamos utilizarlas en nuestro Playground y no tendríamos un error de compilación.

//Asignar valores por defecto a los parámetros de una función

func createDatabase(name: String, path: String = "/"){
    print(path)
}

//En este caso, hemos creado una función que tiene dos parámetros de entrada, y el segundo tiene un valor por defecto ¿Esto qué significa? que podríamos llamar a la función de la siguiente manera:

createDatabase(name: "SwiftBeta") //Podemos evitar el segundo parámetro ya que por defecto lo inicializamos en '/'
createDatabase(name: "Swiftbeta", path: "/users/root") //Aqui sobreescribimos el valor por defecto

//Parámetros variadic en funciones en Swift

//Usamos los parámetros Variadic en funciones cuando queremos enviar un número ilimitado de valores del mismo tipo. Para especificar que un parámetro es Variadic lo que hacemos es escribir … seguidos del tipo. Vamos a verlo más claro en el siguiente ejemplo:

func validate(names: String...){
    print("Names \(names)")
}

validate(names: "SwiftBeta", "Hola", "Patimicola")

//En este caso podemos pasar como parámetro todas las String que queramos separando cada valor con una coma.

//Los parámetros Variadic se pueden sustituir por un Array. En el anterior ejemplo podríamos enviar un Array de String y lo único que variaría es la sintaxis que hemos utilizado, es decir el siguiente código hace exactamente lo mismo que usando parámetros Variadic:

func validate(names: [String]) {
    print("Names \(names)")
}

validate(names: ["SwiftBeta", "Suscribete al Canal", "Youtube"])

//Parámetros In-Out en Swift

//Los parámetros de entrada de una función son inmutables dentro del scope de una función. Al intentar modificar el valor de un parámetro dentro de la función obtenemos un error, vamos a verlo con el siguiente ejemplo:

func validateNames(names: [String]){
    var names = ["SwiftBeta", "SwiftUI", "Swift"]
    print("Names \(names)")
}

//--> validateNames(names: ["UIKit"])

// RESULTADO 👇:
// Error: Cannot assign to value: 'names' is a 'let' constant


//Para poder modificar el valor de un parámetro de entrada dentro del scope de la función, necesitamos:

//Escribir inout entre el nombre y el tipo del parámetro de entrada de la función.
//Al llamar a la función debemos usar & al pasar el parámetro de entrada.

print("----")
func validate(names: inout [String]) {
      names = ["SwiftBeta", "SwiftUI", "Swift"]
      print("Names \(names)")
}
var arrayOfNames = ["UIKit"]
validate(names: &arrayOfNames)

//En el anterior ejemplo hemos añadido la keyword inout para especificar que dentro del método podemos modificar el parámetro de entrada names. Y al llamar a la función, cuando le pasamos el parámetro arrayOfNames le añadimos la & justo delante.

//El valor inicial de arrayOfNames era ["UIKit"] pero hemos modificado su valor dentro de la función por ["SwiftBeta", "SwiftUI", "Swift"].
