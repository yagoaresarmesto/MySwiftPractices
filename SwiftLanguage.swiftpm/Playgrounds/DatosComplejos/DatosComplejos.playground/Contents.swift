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

//2. Diccionarios

//Has visto cómo las matrices son una excelente manera de almacenar datos que tienen un orden particular, como los días de la semana o las temperaturas de una ciudad. Pero muy a menudo acceder a los datos por su posición en la matriz puede ser molesto o incluso peligroso.

//Por ejemplo, aquí hay una matriz que contiene los detalles de un empleado:

var employee = ["Taylor Swift", "Singer", "Nashville"]

print("Name: \(employee[0])")
print("Job title: \(employee[1])")
print("Location: \(employee[2])")

//Pero eso tiene un par de problemas. En primer lugar, no se puede estar realmente seguro de que esa employee[2]sea su ubicación; tal vez esa sea su contraseña. En segundo lugar, no hay garantía de que el elemento 2 esté allí, en particular porque convertimos la matriz en una variable. Este tipo de código causaría serios problemas:

print("Name: \(employee[0])")
employee.remove(at: 1)
print("Job title: \(employee[1])")
//print("Location: \(employee[2])")

//Eso ahora imprime Nashville como el título del puesto, lo cual es incorrecto y provocará que nuestro código se bloquee cuando lea employee[2], lo cual es simplemente malo .

//Swift tiene una solución para ambos problemas, llamada diccionarios . Los diccionarios no almacenan elementos según su posición como lo hacen las matrices, sino que nos permiten decidir dónde se deben almacenar los elementos.

let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]

//Como puedes ver, ahora estamos siendo muy claros: el nombre es Taylor Swift, el trabajo es Singer y la ubicación es Nashvill

//Para leer datos de un diccionario simplemente se utiliza las mismas claves que se utilizó para crearlo
print(employee2["name"])
print(employee2["job"])
print(employee2["location"])

//Si intentas hacer eso en un área de juegos, verás que Xcode muestra varias advertencias como “Expresión implícitamente forzada de 'Cadena?' a 'Cualquiera'”. Peor aún, si miras la salida de tu área de juegos, verás que imprime Optional("Taylor Swift")en lugar de simplemente Taylor Swift: ¿qué pasa?

//Todo esto es código Swift válido, pero estamos intentando leer claves de diccionario que no tienen un valor asociado a ellas.

//Los opcionales son un tema bastante complejo que cubriremos en detalle más adelante, pero por ahora le mostraré un enfoque más simple: al leer un diccionario, puede proporcionar un valor predeterminado para usar si la clave no existe.

//De esta forma
print(employee2["name", default: "Unknown"])

//Se pueden utilizar otros tipos de datos para cualquiera de ellos. Por ejemplo, podríamos hacer un seguimiento de los estudiantes que se han graduado de la escuela utilizando cadenas para los nombres y valores booleanos para su estado de graduación:

let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false,
]

//O podríamos hacer un seguimiento de los años en que se celebraron los Juegos Olímpicos junto con sus ubicaciones:

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]

print(olympics[2012, default: "Unknown"])

//También puedes crear un diccionario vacío usando cualquier tipo explícito que quieras almacenar y luego configurar las claves una por una:

var heights = [String: Int]() //Observe cómo debemos escribir [String: Int]
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

//Como cada elemento del diccionario debe existir en una clave específica, los diccionarios no permiten que existan claves duplicadas. En cambio, si establece un valor para una clave que ya existe, Swift sobrescribirá el valor anterior.

var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"

archEnemies["Batman"] = "Penguin"

//Finalmente, al igual que las matrices y otros tipos de datos que hemos visto hasta ahora, los diccionarios vienen con algunas funciones útiles que querrás usar en el futuro, count y removeAll()ambas existen para los diccionarios y funcionan igual que para os arrays.


//Sets
//Existe una tercera forma muy común de agrupar datos, llamada conjunto . Son similares a los arrays, excepto que no puedes agregar elementos duplicados y no almacenan sus elementos en un orden particular.

//La creacions es simple:
let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])

//Recuerde que el set eliminará de forma automatica los valores duplicados y no recuerda el orden exacto que se uso en el array

print(people)

//La segunda diferencia importante al agregar elementos a un conjunto se puede ver cuando se agregan elementos individualmente. Aquí está el código:

var people = Set<String>()

people.insert("Denzel Washington")
people.insert("Tom Cruise")
people.insert("Nicolas Cage")
people.insert("Samuel Jackson")

//Enums

//Una enumeración (abreviatura de enumeration ) es un conjunto de valores con nombre que podemos crear y usar en nuestro código. No tienen ningún significado especial para Swift, pero son más eficientes y seguras, por lo que las usará mucho en su código.

//Para demostrar el problema, supongamos que queremos escribir un código que permita al usuario seleccionar un día de la semana. Por ejemplo:

var selected = "Monday"

selected = "Tuesday"

selected = "January"

selected = "Friday " //--> Escribimos un espacio al final, que a ojos de swift es diferente

//El uso de cadenas para este tipo de cosas requiere una programación muy cuidadosa, pero también es bastante ineficiente: ¿realmente necesitamos almacenar todas las letras de “viernes” para seguir un solo día?

//Aquí es donde entran en juego las enumeraciones: nos permiten definir un nuevo tipo de datos con un puñado de valores específicos que puede tener. Piensa en un booleano, que solo puede tener verdadero o falso; no puedes configurarlo como "tal vez" o "probablemente", porque ese no está en el rango de valores que entiende. Las enumeraciones son lo mismo: podemos enumerar por adelantado el rango de valores que puede tener, y Swift se asegurará de que nunca cometas un error al usarlas.

//Entonces, podríamos reescribir nuestros días de la semana en una nueva enumeración como esta:

enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

//Esto es una enumaración Weekday y proporciona 5 casos para manejar los 5 días de la semana
//Para usaralas simplemente

var day = Weekday.monday
day = Weekday.tuesday
day = Week.friday

print(day)

//Con ese cambio, no puedes usar accidentalmente "viernes" con un espacio adicional ni poner el nombre de un mes en su lugar; siempre debes elegir uno de los días posibles que aparecen en la enumeración. Incluso verás que Swift ofrece todas las opciones posibles cuando hayas escrito Weekday., porque sabe que vas a seleccionar uno de los casos.

//Swift hace dos cosas que hacen que las enumeraciones sean un poco más fáciles de usar. Primero, cuando tienes muchos casos en una enumeración, puedes escribir caseuna sola vez y luego separar cada caso con una coma:

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

//puedes omitir el nombre de la enumeración después de la primera asignación, de esta manera:

var day = Weekday.monday
day = .thursday //Ya sabe que hace referencia a weekday
