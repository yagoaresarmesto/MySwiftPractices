import UIKit

//Crea un Enum con los días de la semana y asigna a una constante una instancia con el valor de friday
enum DiasSemana {
    case lunes
    case martes
    case miercoles
    case jueves
    case viernes
    case sabado
    case domingo
}

let diasSemana = DiasSemana.viernes

//Dentro del siguiente Enum Move crea un inicializador. Este inicializador tiene un parámetro de entrada que es de tipo String. Si el parámetro de entrada es igual al textotop crea una instancia con el valor top y si recibes cualquier otro valor como parámetro de entrada, asigna el valor right

//Como lo hice:

enum Move {
    case top
    case bottom
    case right
    case left
    
    init(text: String){
        if text == "top"{
            self = .top
        }
        self = .right
    }
}

let topDirection = Move.init(text: "top")
let otherDirecction = Move.init(text: "Yago Ares")

//Como lo hizo:

enum Move2 {
    case top
    case bottom
    case right
    case left
    
    init(value: String) { //Aqui uso un guard
        guard value == "top" else {
            self = .right
            return
        }
        self = .top
    }
}

//Y lo declaro de otra forma, pero en esencia es lo mismo

let topDirection2: Move2 = .init(value: "top")
let otherDirection2: Move2 = .init(value: "swiftbeta")

//Dentro del siguiente Enum :

enum Device {
    case iPhone
    case iPad
    case laptop
    case appleWatch
}

//Implementa:

//Una propiedad que retorne una String con el valor de "Aprende Swift"
//Un método de tipo que retorne la String, "El Libro de Swift"
//Crea una instancia del Enum y llama a la propiedad y método de tipo.

enum Device2 {
    case iPhone
    case iPad
    case laptop
    case appleWatch
    
    var property: String {"Aprende Swift"}
    
    static func type () -> String {
        return "El libro de Swift"
    }
    
}

let device = Device2.iPhone
device.property

Device2.type()

//Con el siguiente Enum crea un switch para ejecutar un camino por cada case. Dentro de cada case muestra un mensaje diferente por consola:

enum Shape {
    case square
    case rectangle
    case circle
}

let shape = Shape.square

switch shape {
case .square:
    print("Esto es un cuadrado")
    
case .rectangle:
    print("Esto es un rectángulo")
    
case .circle:
    print("Esto es un círculo")
}

//El siguiente Enum queremos controlar solo el case red, para los demás casos queremos ejecutar el mismo código. ¿Cómo podemos hacerlo para evitar escribir mucho código?

enum Color {
    case red
    case green
    case blue
    case yellow
}

//Fácil...

let color = Color.green

switch color {
case .red:
    print("Esto es el color rojo que tanto te gusta")
default:
    print("No es el color que buscas")
}

//¿Cómo puedes iterar todos los cases del siguiente Enum?
enum Sport {
    case football
    case baskeball
    case tenis
    case formula1
}

//Con un caseIterable
enum Sport2: CaseIterable {
    case football
    case baskeball
    case tenis
    case formula1
}

Sport2.allCases.forEach {(print($0))}

//Crea una Enum llamado Form con 2 cases que tengan associated types:
//El primer case llamado email
//El segundo case llamado password
//Instancia el Enum y usa un switch para extraer el valor del associated type

enum Form {
    case email(String)
    case password(String)
}

let emailType = Form.email("pepito1234@gmail.com")

switch emailType {
case .email(let userEmail):
    print(userEmail)
case .password(let password):
    print(password)
}


//Transforma el siguiente Enum para que pueda usar raw values de tipo String
enum Film {
    case adventure
    case comedy
    case action
}

enum Film2: String {
    case pelicula1 = "Blanca nieves"
    case pelicula2 = "Srek 2"
    case pelicula3 = "Misión imposible"
}

let peliculaA = Film2.pelicula1.rawValue
let peliculaB = Film2.pelicula2.rawValue

print(peliculaA)
