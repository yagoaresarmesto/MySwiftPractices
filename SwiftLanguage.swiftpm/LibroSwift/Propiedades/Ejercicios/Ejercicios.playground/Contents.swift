import UIKit

//Crea una Struct llamada User
// - Añade algunas propiedades de instancia
// - Añade algunas propiedades de tipo
// - Crea una instancia y muestra el valor de las propiedades de instancia y tipo
// - Modifica el valor de las propiedades de instancia y tipo

struct Empleado {
    
    //Propiedad de instancia
    
    var nombre: String
    var edad: Int
    var primerEmpleo: Bool
    
    //Propiedades de tipo
    
    @MainActor static var role = "iOS developer" //Pongo Main actor porque me lo exige swiftUI
    @MainActor static var numeroDeApps = 3
}

var empleado = Empleado(nombre: "Yago", edad: 23, primerEmpleo: true)

//Propiedad de instancia

empleado.nombre
empleado.edad
empleado.primerEmpleo

//Propiedades de tipo

Empleado.role
Empleado.numeroDeApps

//Y modificamos
empleado.nombre = "Jesús"
empleado.edad = 25
empleado.primerEmpleo = false

Empleado.role = "Android developer"
Empleado.numeroDeApps = 5

//Crea una Class llamada App
// - Añade algunas propiedades de instancia
// - Añade algunas propiedades de tipo
// - Crea una instancia y muestra el valor de las propiedades de instancia y tipo
// - Modifica el valor de las propiedades de instancia y tipo

class App {
    var nombre: String
    var leguaje: String
    var tiempoDesarrolloDias: Int
    
    @MainActor static var categoria = "Mates"
    
    init(nombre: String, leguaje: String, tiempoDesarrolloDias: Int) {
        self.nombre = nombre
        self.leguaje = leguaje
        self.tiempoDesarrolloDias = tiempoDesarrolloDias
    }
}

//Creamos la instancia

var app = App(nombre: "Calucladora", leguaje: "Swift", tiempoDesarrolloDias: 2)

app.nombre
app.leguaje
app.tiempoDesarrolloDias

App.categoria

app.nombre = "Contador de pasos"
app.leguaje = "Java"
app.tiempoDesarrolloDias = 6

App.categoria = "Fitness"

//Crea una Struct con una propiedades computada llamada multiplyByTwo que se encargue de retornar el doble cada vez que se asigne un Int.
//Crea una instancia de la Struct
//Llama al get y set de la propiedad computada para ver que obtenemos el resultado esperado.


struct Calculator {
    var initialValue: Int
    
    var multiplyByTwo: Int {
        get {
            initialValue
        }
        
        set{
            initialValue = newValue * 2
        }
    }
}

var calculator = Calculator(initialValue: 2)

calculator.multiplyByTwo = 4

calculator.multiplyByTwo


//Crea una Struct llamada Chat con una propiedad llamada messages de tipo [String] que use property observers
// - Dentro de los property observers añade un print
// - Crea la instancia de la Struct
// - Modifica el valor de las propiedades para ver si se muestra el print por consola


struct Chat {
    var messages: [String] = [] {
        
        willSet {
            print("Messages will change \(newValue)")
        }
        didSet {
            print("Messages did change")
        }
    }
}

var chat = Chat()

chat.messages.append("Hola, bienvendio!")
chat.messages.append("toma un regalo")
chat.messages.append("te gustará mucho")

//Crea un property wrapper que creas que puede ser útil y así puedas reutilizar en otras propiedades. Por ejemplo, un property wrapper que valide una propiedad, si un text.count > 10 sea correcto su valor, y sino que sea un error.

@propertyWrapper
struct PropertyValidation {
    private var name: String
    
    init() {
        self.name = ""
    }
    
    var wrappedValue: String {
        get {name}
        set {
            if newValue.count > 10{
                self.name = newValue
                print("Valid")
            } else {
                print("Error")
            }
        }
    }
}

struct Client {
    @PropertyValidation var email: String
    @PropertyValidation var promoCode: String
    
}

var client = Client()
client.email = "asdad@gmail.com"
client.promoCode = "12345466788"
