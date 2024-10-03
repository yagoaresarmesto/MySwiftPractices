import UIKit

//“Crea 4 variables que almacenen tipos de valores distintos. Por ejemplo, una variable que almacene una String, Int, Double y Bool.”

var name = "Yago"
var edad = 23
var puntuacion = 9.88
var aprobado = true

//Modifica los valores que has creado en el punto 1

name = "Jesús"
edad = 12
puntuacion = 4
aprobado = false

//“Crea 4 constantes que almacenen tipos de valores distintos. Por ejemplo, una variable que almacene una String, Int, Double y Bool.”

let name2 = "Yago"
let edad2 = 23
let puntuacion2 = 9.66
let aprobado2 = true

//“Crea la constante myName y asígnale el valor "SwiftBeta", a continuación modifica su valor. ¿Qué ocurre?”

let myName = "SwiftBeta" //--> No se puede cmabiar el valor a las cosntantes

//“Crea una variable llamada numberOne con un valor de 2 y crea otra variable llamada numberTwo con una valor de 3. Luego crea otra variable que se llame result con el resultado de la suma de numberOne y numberTwo. ¿Qué resultado obtienes al compilar?”

var numberOne = 2
var numberTwo = 3

var result = numberOne + numberTwo

//“Crea un typealias llamado Text de tipo String y úsalo para asignar el valor "Aprendiendo Swift con SwiftBeta" en una variable.”

typealias Text = String

var frase: Text = "Aprendiendo Swift con SwiftBeta"

//“Crea una tupla con 3 tipos diferentes y asígnaselo a una constante. A continuación muestra por consola los valores de tu tupla (puedes usar cualquiera de las dos formas que hemos visto en el capítulo).”


let tupla = ("SwiftBeta.com", 10 , true)

//“Crea dentro de una tupla otra tupla. ¿Es posible? ¿Compila el Playground?”

let tuplaDentroTupla = (tupla)

print(tuplaDentroTupla, "Aprende", "Swift", 10)

//“Al crear la siguiente tupla, ¿cómo puedes extraer el valor de swiftbeta.com?”

print(tuplaDentroTupla.0)

