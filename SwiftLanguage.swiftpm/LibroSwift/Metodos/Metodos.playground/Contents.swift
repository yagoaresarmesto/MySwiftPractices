import UIKit

//MÉTODOS EN SWIFT
//Los métodos en Swift son exactamente igual que las funciones. La única diferencia es que los métodos están asociados a un tipo, es decir, los creamos dentro de un tipo (dentro de una Class o Struct).

//Métodos de Instancia

//Los métodos de instancia son métodos que creamos dentro de un tipo, por ejemplo dentro de una Struct o Class.

class Game {
    var score = 0
    
    func increaseScore() {
        score += 1
    }
    
    func reset(){
        score = 0
    }
}

//En el anterior ejemplo hemos creado una Class con 2 métodos. Estos 2 métodos son métodos de instancia, por lo tanto primero tenemos que crear una instancia de Game para poder acceder a sus métodos.

let game = Game()
game.increaseScore()
game.increaseScore()

print(game.score)

//Al crear la instancia de nuestra Class Game, hemos podido llamar a sus métodos. En este caso hemos llamado al método increaseScore que se encarga de incrementar el valor de la propiedad score.

// Modificar value types con Métodos de Instancia

//Anteriormente no entramos en detalle en que las propiedades de una Struct (value types) no pueden modificarse dentro de los métodos de su instancia, ¿esto qué significa? vamos a intentar modificar el valor de una propiedad de una Struct dentro de un método:

//Al crear la Struct User obtendremos el siguiente error
/*
struct User {
    var name = String
    
    func update(name: String) {
        self.name = name
    }
    
}
*/

// RESULTADO 👇
// Error: Cannot assign to property: 'self' is immutable


//Para poder modificar el valor de la propiedad name desde el método de la Struct, tenemos que añadir la keyword mutating al inicio del método, es decir:

struct User {
    var name: String
    mutating func update(name: String) {
        self.name = name
    }
}

//Al añadir mutating el error de compilación desaparece y podemos modificar el valor de la propiedad name. Vamos a crear una instancia de User y vamos a llamar al método update(name: String) para ver que funciona perfectamente:

var user = User(name: "Yago Ares")
user.update(name: "Jesús Ares")
print(user.name)

//¿Qué es self?

//¿qué es self y por qué la usamos? Al crear una instancia de un tipo podemos acceder a la propiedad implícita llamada self. Usamos esta propiedad self para referirnos a la instancia actual y así poder llamar a las propiedades y métodos que tenemos dentro del tipo.

//Por ejemplo, la clase Game que hemos visto en la sección anterior, podríamos usar self para llamar a las propiedades y sus método

class Game1 {
    var score = 0
    
    func increaseScore(){
        self.score += 1
        self.printScore()
    }
    
    func reset(){
        self.score = 0
    }
    
    func printScore(){
        print("Score Incremented! \(score)")
    }
}

//En este caso, dentro del método increaseScore podemos acceder a la propiedad score y también al método increaseScore usando self. Al añadir self Swift asume que nos estamos refiriendo a algún método o propiedad del tipo Game. En este caso, podríamos omitir el uso de self y nuestro código compilaría sin problemas.


//Vamos a ver un ejemplo que puede aclarar el uso de self. Ahora imagina que tenemos dos tipos llamados Chat y Logger, y los dos tienen el mismo método printMessage:

class Chat {
    var logger = Logger()
    
    func messageReceived(){
        self.printMessage()
        logger.printMessage()
    }
    
    func printMessage() {
        print("[CHAT] Message Received")
    }
}



class Logger {
    func printMessage(){
        print("[LOGGER] Message received")
    }
}

let chat = Chat()
chat.messageReceived()

//Hay dos clases, una llamada Logger y la otra Chat. Dentro de Chat tenemos una propiedad de tipo Logger. Lo que quiero destacar es que dentro del método messageReceived, estamos llamando al método printMessage del tipo Chat y del tipo Logger. Para llamar al método que tenemos dentro de Chat usamos self mientras que en el de la instancia de Logger usamos logger.

//Hay developers que prefieren usar self y hay otros que lo omiten siempre que pueden. En mi caso soy de los segundos, ya que en muchas ocasiones añadir self es redundante.

//Métodos de tipo en Swift

//Los métodos de tipo son métodos que podemos llamar directamente desde nuestra Class o Struct sin crear la instancia de nuestro tipo. Para diferenciar un método de instancia de un método de tipo, usamos la keyword static.

class Car {
    var passengers = 0
    
    static func startEngine() {
        print("Start engine")
    }
    
    func addPassenger(){
        passengers += 1
    }
    
    func stopEngine(){
        passengers = 0
    }
}

//Para usar el método de tipo startEngine() podemos llamar a la función directamente desde el tipo (y no de la instancia), es decir:

Car.startEngine()
