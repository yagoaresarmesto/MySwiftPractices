import UIKit

//1. Crea una Struct llamada Calculator
// - Añade un método de instancia que acepte 2 parámetros Int y retorne su suma.
// - Añade un segundo método que acepte 2 parámetros de tipo Int y retorne su multiplicación.
// - Crea una instancia de Calculator y llama a los método que has creado. Guarda el resultado en una constante.

struct Calculator {
    func suma(numero1: Int, numero2: Int) -> Int{
      numero1 + numero2
    }
    
    func multiplicacion(numero1: Int, numero2: Int) -> Int{
     numero1 * numero2
    }
}

let calculator = Calculator()

print(calculator.multiplicacion(numero1: 3, numero2: 4))
print(calculator.suma(numero1: 3, numero2: 4))


/* Crea una Class llamada TODO, dentro de esta Class vamos a añadir tareas a una propiedad (“salir a correr”, “comprar fruta”, etc).
 Añade una propiedad de tipo Array de String llamada tasks
 Crea un método para añadir tareas a la propiedad tasks
 Crea otro método para borrar todas las tareas de la propiedad tasks.
 Crea un último método para mostrar todas las tareas de la propiedad tasks
 Crea una instancia y añade 3 tareas que debas hacer en los próximos días, muéstralas por consola usando print y luego elimina todas las tareas de la propiedad tasks */

class ToDo {
    var tasks: [String] = []
    
    func añadirTasks(tarea: String) -> [String]{
        tasks.append(tarea)
        return tasks
    }
    
    func borrarTasks(){
        tasks.removeAll()
    }
    
    func printTasks(){
        print(tasks)
    }
}

let tareas = ToDo()

tareas.añadirTasks(tarea: "Comer")
tareas.añadirTasks(tarea: "Dormir")
tareas.añadirTasks(tarea: "Correr")
tareas.printTasks()
tareas.borrarTasks()
tareas.printTasks()

//Crea una Struct llamada Bot con métodos de tipo.
//1. Crea un método de tipo, que printe por mensaje "Bienvenido a SwiftBeta!"
//2. Crea un método de tipo que acepte 2 parámetros de entrada y retorne el resultado de la suma.

struct Bot {
    static func hello(){
        print("Bienvenido a SwiftBeta!")
    }
    
    static func add(a: Int, b: Int) -> Int {
        a + b
    }
}

Bot.hello()
Bot.add(a: 2, b: 4)
