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
