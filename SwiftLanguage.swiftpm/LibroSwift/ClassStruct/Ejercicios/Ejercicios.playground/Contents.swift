import UIKit


//Crea una Struct llamada Developer con:
// - Tres propiedades: name, role, age (añade los tipos de las propiedades que creas: String, Int, etc)
// - Un método para mostrar todos los valores de sus propiedades por consola
// - Crea una instancia y llama a todas sus propiedades y método.

struct Developer {
    var name: String
    var role: String
    var age: Int
    
    
    func showValues(){
        print("Hola mi nombre es \(name), soy \(role) y tengo \(age) años")
    }
}

let developer = Developer(name: "Yago", role: "QA", age: 23)

print(developer.name)
print(developer.role)
print(developer.age)

developer.showValues()

//Crea una Class llamada Bot con:
// - Tres propiedades: conversationId, name, text (añade los tipos de las propiedades que creas: String, Int, etc)
// - Un método para mostrar todos los valores de sus propiedades por consola
// - Crea una instancia y llama a todas sus propiedades y método

class Bot {
    var conversationId: Int
    var name: String
    var text: String
    
    init(conversationId: Int, name: String, text: String){
        self.conversationId = conversationId
        self.name = name
        self.text = text
    }
    func showValues() {
        print("Id: \(conversationId), Usuario: \(name), Mensaje: \(text)")
    }
}

let bot = Bot(conversationId: 1, name: "BOT1", text: "Acueráte de que tienes un mensaje sin leer.")

print(bot.conversationId)
print(bot.name)
print(bot.text)

print(bot.showValues())

//Dime al menos 3 diferencias de una Class y Struct.

//Tienen cosas en común pero las clases puedes hacer:

/*
 - Podemos usar herencia solo en Class
 - Podemos deinicializar una Class para liberar recursos
 - Podemos tener la misma referencia de la instancia de una Class en varias partes de nuestro código (la Class es reference type y Struct es value type)
 */

//Crea una Class y explica paso a paso por qué es reference type

//Creo una clase

class Persona {
    var nombre : String
    var edad: Int
    
    init(nombre: String, edad: Int){
        self.nombre = nombre
        self.edad = edad
    }
}

//Creo una instancia de Persona y le asigno una variable:

var persona1 = Persona(nombre: "Yago", edad: 23)

//lo asingo a otra variable

var persona2 = persona1

var persona3 = persona1

//Si hago una modificación en alguna de estas 3 variables se refleja en las otras variables, por ejemplo:

persona3.edad = 25

print(persona1.edad)
print(persona2.edad)
print(persona3.edad)

//Crea una Struct y explica paso a paso por qué es value type

struct Persona1 {
    var nombre: String
    var edad: Int
}

//Creo una isntancia del struct
var persona4 = Persona1(nombre: "Jesús", edad: 15)

//Le asigno otra variable

var persona5 = persona4
var persona6 = persona4

//Y modifico una de ellas

persona5.nombre = "Yago Ares"

//Al ser value type sólo modifica la que previamente modifiqué

print(persona4.nombre)
print(persona5.nombre)
print(persona6.nombre)

//¿Es posible crear una Struct dentro de una Class? y al revés, ¿Es posible crear una Class dentro de una Struct?

//Claro, siempre teniendo en cuenta que las diferencia entre una clase y una Struct

class Game {
    let playerA: String
    let playerB: String
    let score: Score
    
    struct Score {
        var points: Int
    }
    
    init(playerA: String,
         playerB: String,
         score: Score) {
        self.playerA = playerA
        self.playerB = playerB
        self.score = score
    }
    
    func start() {
        print("Start Game with players \(playerA) & \(playerB)")
    }
}

let game = Game(playerA: "Yago", playerB: "Jesús", score: .init(points: 0))

game.start()
