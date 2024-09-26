import UIKit

//1. Variables

//Esto es una variable, su valor puede variar a medida que se ejecuta el programa
var greeting = "Hello, playground"

//Le he cambiado de nombre a la variable
greeting = "Yago"

print(greeting)

//Ahora pasa a ser Jesús
greeting = "Jesús"

print(greeting)

//2. Constantes
//Si no se desea nunca cambiar el valor, se debe usar una constante

let name = "Pablo"
//name = "Yago" ---> No puedo cambiar el valor

print(name)

//3. Strings

let actor = "Denzel Washington"

//Puedes incluso usar emojis u otros caracteres
let filename = "paris.jpg"
let result = "⭐️ You win! ⭐️"

//Incluso comillas dentro de una cadena, poniendo la barra invertida
let quote = "Then he tapped a sign saying \"Believe\" and walked away."

//Puedes incluso crear cadenas de múltiples líneas de esta forma

let movie = """
A day in
the life of an
Apple engineer
"""

//Leer la longintud de una cadena con .count

print(actor.count)

//No nesariamente necesitas imprimir la longitud de una cadena directamente, le puedes asignar una constante

let namelenght = actor.count
print(namelenght)

//Otra funcionalidad útil es por ejemplo uppercased(), devuelve la misma cadena, pero cada una de sus letras en mayúscula

print(result.uppercased())

//La última funcionalidad útil para cadenas es hasPrefix, nos permite saber si una cadena comienza con algunas letras de nuestra elección

print(movie.hasPrefix("A day")) //--> Esto devuelve true or false, en este caso true

//También tenemos hasSuffix, verfica si una cadena termina con algún texto

print(filename.hasSuffix(".jpg"))

//4. Enteros
//Pueden almacenar número muy grandes, pero también muy pequeños

let score = 10

let reallyBig = 10000000 //Díficil de leer no?

let reallyBig2 = 100_000_000 // A swift no le impotan los guiones bajos

//Por supuesto puede crear número a partir de otros números enteros utilizando operadores

let lowerScore = score - 2
let higherScore = score + 10
let doubledScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2
print(score)

//En lugar de crear nuevas cosntantes cada vez, Swift puede alguna propiedad especial que ajuestan un entero de algunamanera y asigan el resultado nuevamente al número original

//Por ejemplo

var counter = 10
counter = counter + 5
//Puedes escribir este operador abreviado, agrega directamente al entero en cuestión

counter += 5 //Hace lo mismo, pero menos escritura
print(counter)

//Al igual que las cadenas los números enteros tienen alguna funciones útiles asociadas. pOr ejemplo, puedes llamar a ismUltiple(of:) a un número entero para everiguar si es un múltiplo de otro número entero

//Podríamos preguntar si 120 es múltiplo de tres de la siguiente manera:
let number = 120
print(number.isMultiple(of: 3)) //Devuelve true or false. En este caso es true

//5. Decimales

let decimalnumber = 0.1 + 0.2

print(decimalnumber)

//No puede sumar un entero con un decimal

let a  = 1

let b = 2.0

// let c = a + b ---> Dará error

//Si quieres que esto suceda lo que puede hacer es pasar el entero a double

let c  = Double(a) + b

//o también pasar el double a entero
let d = a + Int(b)

print(c)
print(d)

//Por tanto elige sabiamente que tipo de datos quieres manejar

//Siempre tiene que contener el mismo tipo de datos

var name1 = "Nicolas Cage"
name1 = "John travolta" //Esto es correcto


var name2 = "Nicolas Cage"
//name2 = 57 --> esto no es correcto

//Finalmente los número decimales tiene el mismo rango de operadores y operadores de asinganción que los números enteros:
var rating = 5.0
rating *= 2

