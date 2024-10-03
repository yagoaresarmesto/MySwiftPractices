import UIKit

//Variables

var myInt = 1 //Entero
var myString = "Hola Developer!" //String
var myDouble = 2.0 //Double
var myBoolean = true //Boleano

//Podemos indicar el tipo de una varaible añadiéndolo

var myInt2: Int = 1
var myString2: String = "¡Hola Developer!"
var myDouble2: Double = 2.0
var myBoolean2: Bool = true

//Modificar el valor de una variable

var myName = "SwiftBeta"
myName = "Suscríbete al canal de SwiftbETA"

//Diferencia entre cosntante y variable

let myName = "SwiftBeta"
myName = "Suscríbete al canal de SwiftBeta"

// RESULTADO 👇
// Cannot assign to value: 'myName' is a 'let' constant”

//Las constantes mantienen un valor y este no se puede cambiar

//Type Aliases

//En Swift podemos usar Type Aliases, que básicamente son sinónimos de tipos que ya existen. Se suelen utilizar para dar una sintaxis más acorde con la lógica que estamos implementando.”

typealias Celsius = Double
var temperature: Celsius = 12.2


//Tuplas

//“Las tuplas pueden almacenar varios valores en un único contenedor. Y los diferentes valores dentro de una tupla pueden ser de diferentes tipos.”

let myUser = ("SwiftBeta", "Aprende", "Swift", 10 , true)

//“En este caso hemos creado una tupla que contiene 5 valores. Y no todos son del mismo tipo. Estos valores son almacenados en la constante myUser. Pero, ¿cómo podemos acceder a estos valores? Podemos hacerlo de varias maneras, vamos a ver la primera:”

//Podemos hacerlo de varias maneras:

let myUser = ("SwiftBeta", "Aprende", "Swift", 10, true)
print(myUser.0)
print(myUser.1)
print(myUser.2)
print(myUser.3)
print(myUser.4)”

//“Otra manera que es mucho más legible y fácil de entender es la siguiente:”

let (name, learn, language, score, isProUser) = ("SwiftBeta", "Aprende", "Swift", 10, true)

print(name)
print(learn)
print(language)
print(score)
print(isProUser)”

//“Al compilar vemos los mismos valores que en el caso de los indices, pero nuestro código es mucho más claro. Es decir, entendemos mejor nuestro código cuando añadimos nombres que nos aportan un significado.”


