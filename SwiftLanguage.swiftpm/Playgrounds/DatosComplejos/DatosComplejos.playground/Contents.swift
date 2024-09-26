import UIKit

//Es muy común tener una gran cantidad de datos en un solo lugar, ya sean los días de la semana, una lista de estudiantes en una clase, la población de una ciudad durante los últimos 100 años o caluqiera de innumerables otros ejemplo

//1. Arrays

//Los arrays soun su propio tipo de datos al igual que String, Int y Double, pero en lugar  de conetener una cadena, pueden contener cero cadenas, 2 cadenas, 3, cincuenta y así infinitamente

//Ejemplo sencillo de creación de matrices:

var beatles = ["John", "Paul", "George", "Ringo"] //de strings
let numbers = [4, 8, 15, 16, 23, 42] // de enteros
var temperatures = [25.3, 43.1, 12,7] // de doubles

//Podriamos ller algunos valores de nuestros arryas de esta manera:

print(beatles[0]) //Imprime la posicion 1, es decir John
print(numbers[1]) //Imprime la segunda posicion, es decir 8
print(temperatures[2]) //Imprime la tercera posición es decir 12.7

//Si su matriz es varaible, se puede modificar después de cerrralra, por ejemplo se puede usar append() para agregar nuevos elementos

beatles.append("Allen") //No hay nada que te impida agregar elementos más de una vez
print(beatles)

//Sin embargo Swift sí observa si el tipo de dato que quieres agreagar y se asegura de que tu array solo contenga un tipo de dato a la vez.

// temperatures.append("Chriss") --> Esto no está permitido

//Esto también aplica a la lectura de datos de un arrays, Swift sabe que beatles contiene cadenas. Swift no permite mezclar dos tipos diferentes, por tanto:

let fisrtBeatle = beatles[0]
let firstNumber = numbers [0]

// let notAllowed = firstNumber + firstNumber --> No esta permitido

//Puedes ver esto con más claridad cuando quieres empezar con una matriz vacía y agregarle elementos uno por uno. Esto se hace con una sintaxis muy precisa:

var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(85)

print(scores[1])

//Ya hemos cubiero las últimas cuatro líneas, pero la priemra línea muestra cómo tenemos un tipo de matriz especializada: no se trata de un array cualquiera, sino un array que contiene números enteros, y también nos impide agregar enteros a una matriz de cadenas

var albums = Array<String>()
albums.append("Red")
albums.append("Folkore")

//Los arrays son tan comunes en Swift que existe una forma especial de crearlos: en lugar de escribir Array<String>, puedes escribir [String]. Por lo tanto, este tipo de código es exactamente el mismo que antes:

var albums1 = [String]() //Esto es exactamente lo mismo que lo de antes
albums1.append("Fearless")

//La seguridad de tipos de Swift significa que siempre debe saber qué tipo de datos almacena una matriz. Eso puede significar ser explícito al decir albumsque es un Array<String>, pero si proporciona algunos valores iniciales, Swift puede averiguarlo por sí mismo:

var albums2 = ["Folklore"]
albums2.append("Fearless")
albums2.append("Red")

// Quiero mencionar algunas funciones útiles que vienen con las matrices.
//Puedes usar .count para leer cúantos elementos hay en una matriz, tal como hiciste con las cadenas

print(albums.count)

//En segundo lugar, puedes eliminar elementos de una matriz utilizando remove(at:)para eliminar un elemento en un índice específico o removeAll()para eliminar todo:
 var characters = ["Lana", "Pam" , "Ray", "Sterling"]
print(characters.count) //Imprimirá 4

characters.remove(at: 2) //Imprimirá 3
print(characters.count)

characters.removeAll() //Imprimirá 0
print(characters.count)

//En tercer lugar, puedes comprobar si una matriz contiene un elemento particular utilizando contains(), de la siguiente manera:

let bondMovies = ["London", "Tokyo", "Rome", "Budapest"]
print(bondMovies.contains("Frozen")) //Devuelve true o false, en este caso false

//En cuarto lugar, puedes ordenar una matriz usando sorted(), de la siguiente manera:

let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted()) //Estod devuelve la matriz con sus elementos en orden ascendente, lo que significa alfabéticamente para cadenas pero númericamente para números: la matriz original permanece sin cambios

//Finalmente, puedes invertir una matriz llamándola reversed()
let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)
