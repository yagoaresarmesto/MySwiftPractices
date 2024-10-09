import UIKit

//En Swift podemos crear nuestros propios tipos usando Class o Struct. Dentro de la Librería Standard de Swift ya tenemos varios tipos que hemos visto y usado en los anteriores capítulos, como por ejemplo el tipo Array, Dictionary, String, Int, etc estos son solo algunos.

//Dentro de una Class o Struct podemos crear:
// - Propiedades
// - Métodos

//Creamos nuestro primer tipo

//Al crear un tipo, ya sea Class o Struct, creamos una abstracción para poder trabajar en nuestro código, por ejemplo, voy a crear una Struct para crear un tipo User que tenga una serie de propiedades y métodos:

struct User {
    let name: String
    let city: String
    
    func createUser() {
        print("Create User")
    }
    
    func removeUser(){
        print("Remove User")
    }
}

//Acabamos de crear nuestro primer tipo, hemos creado una Struct que encapsula los datos que debe almacenar un User (propiedades) y ciertas operaciones que puedo hacer con esos datos (métodos para crear o borrar un User). Hemos encapsulado la lógica en un tipo, igual que podemos usar Int y String ahora podemos usar nuestro nuevo tipo User. Para ello tenemos que crear una instancia, que lo veremos más tarde

//Analogía entre Class y Struct

//Aunque una Class y Struct se usan con propósitos diferentes, las dos tienen cosas en común, en las dos podemos:

/*
 - Crear propiedades para almacenar valores
 - Crear métodos para crear lógica
 - Crear subscripts para poder acceder a sus valores usando la sintaxis de los subscripts
 - Crear inicializadores para dar un estado inicial a nuestro tipo
 - Conformar protocolos para añadir más funcionalidad
 - Crear extensiones para añadir más funcionalidad
 
 //Pero la Class tiene funcionalidad adicional que no encontramos en la Struct:
 
 - Podemos usar herencia solo en Class
 - Podemos deinicializar una Class para liberar recursos
 - Podemos tener la misma referencia de la instancia de una Class en varias partes de nuestro código (la Class es reference type y Struct es value type)
 */

//Sintaxis al crear una Class y Struct

class MyClass {
    //Class implementation
}

struct MyStruct {
    //Struct implementation
}

//A continuación vamos a crear una instancia de una Class y Struct:

let myClass = MyClass()

let myStruct = MyStruct()

//Inicializadores Memerwise en Structs

//En el siguiente código vamos a crear una Class y Struct con propiedades y vamos a aprender a cómo instanciarlas, primero nos vamos a centrar en Class:

class Database {
    var name:String
    
    init(name:String) {
        self.name = name
    }
}

//Para poder instanciar la Class que acabamos de crear llamada Database, necesitamos darle un valor por defecto a la propiedad name. Para hacerlo usamos el inicializador, nuestro inicializador acepta un parámetro de entrada que se acaba asignando a la propiedad name. Para crear una instancia de Database creamos el siguiente código:

var database = Database(name: "Chat")

//Podríamos printar el valor de name accediendo a la propiedad name de la instancia database:

print(database.name)

// RESULTADO 👇
// Chat

//Si te estás preguntando por qué no hemos inicializado la Class Database abriendo y cerrando paréntesis, puedes probarlo:

// -> let database = Database()

// Resultado 👇:
// Error: Missing argument for parameter 'name' in call

//¿Qué ocurre? Recibimos un error de compilación. El compilador nos indica que debemos usar el init(name:). Como te indicaba más arriba, al crear una instancia de un tipo hay una norma y es que todas sus propiedades tienen que tener un valor inicial, y en este caso si usáramos el inicializador Database() no se cumpliría (por lo tanto el compilador nos da un error).

//Ahora vamos a ver el mismo ejemplo creando un tipo con una Struct.

struct Coworker {
    var name: String
}

//Al usar una Struct nos ahorramos escribir el inicializador, es lo que se conocer como memberwise init. Al usar Struct no necesitamos crear el inicializador. Podríamos crear una instancia de la Struct Coworker con la siguiente línea de código:

let coworker = Coworker(name: "iOS Developer")

print(coworker.name)

// RESULTADO 👇
// iOS Developer

//Reference Type

//Al inicio del capítulo explicaba que las Class son reference type, esto significa que si creo una instancia de una Class y asigno la instancia a diferentes variables al modificar una propiedad en una variable el cambio se ve reflejado en todas las demás. Vamos a verlo por código usando la misma Class que hemos creado antes:

class Database2 {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

var chatDatabase = Database2(name: "Chat")

//Ahora creamos 2 variables más y asignamos el valor de chatDatabase:

var appDatabase = chatDatabase
var remoteDatabase = chatDatabase

print(chatDatabase.name)
print(appDatabase.name)
print(remoteDatabase.name)

// Resultado 👇:
// Chat
// Chat
// Chat

//Si ahora cambiamos el valor de la propiedad name de la variable remoteDatabase, vamos a ver qué ocurre:

remoteDatabase.name = "SwiftBeta"

print(chatDatabase.name)
print(appDatabase.name)
print(remoteDatabase.name)

// Resultado 👇:
// 💻 SwiftBetaDatabase
// 💻 SwiftBetaDatabase
// 💻 SwiftBetaDatabase

//Al hacer un cambio en la propiedad name de la variable remoteDatabase el cambio afecta a todas las demás variables que tienen una referencia a la instancia de Database.

//Struct Value Type

//Las Struct son value type, esto significa que si creo una instancia de un tipo que es Struct y lo asigno a diferentes variables se crea una copia por cada vez que lo asigno. Vamos a verlo por código:

struct Coworker2 {
    var name: String
}


var timCook = Coworker2(name: "TimCook")

var boss = timCook
var friend = timCook

print(timCook.name)
print(boss.name)
print(friend.name)

//Si ahora cambiamos el valor de la propiedad name de la variable friend y asignamos el valor de "SwiftBeta" vamos a ver qué ocurre en las demás variables:

friend.name = "SwiftBeta"

print(timCook.name)
print(boss.name)
print(friend.name)

// Resultado 👇:
// Tim Cook
// Tim Cook
// SwiftBeta

//Al hacer un cambio en la propiedad name de la variable friendName el cambio solo afecta a la propiedad de la variable que estamos modificando, en este caso friend. Esto ocurre porque cuando hemos asignado el valor de timCook a la variable friend se ha creado una copia.

//¿Cuándo usar Class o Struct?

//- Usa Struct por defecto
//- Usa Struct para representar todo tipo de datos simples: modelos, datamodels, etc.
//- Usa Class para representar datos más complejos que pueden ser compartidos y modificados por diferentes partes de tu código.

/*
 - Usa Class cuando tengas que controlar la identidad de los datos que estas modelando
 - Usa Class si necesitas modificar la misma referencia en memoria durante la ejecución de tu app.
 - Usa Class cuando necesites interoperabilidad con Objective-C */
