import UIKit

//A lo largo del libro hemos visto que podemos crear tipos en Swift a partir de Class y Struct pero no es la única manera, también podemos crear tipos con Enum.

//Los Enum definen un tipo común para un grupo de valores relacionados y permite trabajar con estos valores de una manera segura dentro de tu código.

// Sintaxis de un Enum

//podemos definir diferentes estados que queremos usar dentro de nuestro nuevo tipo. Estos diferentes valores los añadimos como cases dentro del Enum.

enum MessageStatus {
    case sent
    case received
    case read
}

//Instancia de un Enum

let messageStatus = MessageStatus.sent

//Otra manera de crear una instancia de un Enum es la siguiente:

let botStatus: MessageStatus = .received

//Al crear una instancia de una Class o Struct usábamos su inicializador, pero en este caso no hemos necesitado crear ningún inicializador en nuestro Enum. Directamente podemos asignar el case de un Enum a una constante o variable.

//Pero, ¿podemos crear inicializadores dentro de un Enum? La respuesta es que sí, podemos crear un inicializador y dentro de él asignar un valor inicial de nuestro Enum, vamos a crear un inicializador de nuestro Enum MessageStatus:

enum MessageStatus2 {
    case sent
    case received
    case read
    
    init(isMessageSent: Bool){
        if isMessageSent {
            self = .sent
        }
        self =  .received
    }
}


let status = MessageStatus2(isMessageSent: true)
print(status)

//Matching de un Enum con un Switch

//Al usar Enum es muy común usar switch, de esta manera podemos separar la lógica que queremos implementar según el valor del Enum, es decir, vamos a usar el mismo Enum que hemos creado en la sección anterior llamado MessageStatus y vamos a realizar una lógica diferente por cada case.

let messageStatus3 = MessageStatus.sent

switch messageStatus {
case .sent:
    print("Message sent")
case .received:
    print("Message Received")
case .read:
    print("Message Read")
}

// RESULTADO 👇
// Message Sent

//En ocasiones, podemos agrupar cases para que realicen una misma acción, es decir, podríamos agrupar el case de received y read en uno:

switch messageStatus {
case .sent:
    print("Message sent")
case .received, .read:
    print("Message Received or Read")
}

//También podemos usar la keyword break para indicar que al entrar dentro de un case no queremos ejecutar ningún tipo de lógica. Es decir, vamos a modificar el case del sent y vamos a sustituir el print por un break:

switch messageStatus {
case .sent:
    break
case .received, .read:
    print("Message Received or Read")
}

//En esta ocasión no estamos realizando ningún tipo de lógica dentro del case sent. Se ejecuta el case sent pero al ejecutar el break salimos de su scope continuando así con la ejecución de nuestro código.

//Ahora vamos a ver un ejemplo práctico de cómo podemos ejecutar código si nuestro Enum messageStatus tiene el valor de sent usando un if:

if messageStatus == .sent {
    print("Message sent (If Statement)")
}

// RESULTADO 👇
// Message Sent (If Statement)

//Este caso es menos restrictivo, ya que no añadimos todos los posibles valores de nuestro Enum. Esta flexibilidad puede estar bien, pero hay que tener en cuenta esta limitación al usar if ya que podríamos olvidarnos de añadir lógica dentro de nuestra aplicación.
//Al usar un switch podemos forzar la implementación por cada case de nuestro Enum.

//Enums y default case

//En la sección anterior hemos mostrado que al usar un switch tenemos que añadir todos los cases de nuestro Enum pero esto no es del todo cierto. Podemos usar un case que es el de por defecto llamado default,
//dentro de este case se ejecuta la lógica de los cases que no hemos añadido dentro de nuestro Enum, es decir, podríamos hacer lo siguiente:


enum MessageStatus3 {
    case sent
    case received
    case read
}

let messageStatus4 = MessageStatus.sent

switch messageStatus4 {
case .received:
    print("Messge Received")
default:
    print("Other value")
}

//Al compilar este código en nuestro Playground, ¿qué crees que se va a mostrar por consola? El resultado que aparece es Other Value ya que dentro de nuestro switch se ha ejecutado el código de default. Usar default es útil si no queremos controlar todos los cases de nuestro Enum.

//Métodos y propiedades dentro de un Enum

//Al crear un Enum podemos crear métodos de instancia, métodos de tipo y propiedades computadas.

//Ahora vamos a crear un Enum y dentro de él vamos a crear una propiedad computada, y un método de instancia y tipo:


enum CompassPoint {
    case north
    case south
    case east
    case west
    
    
    //De propiedad
    var owner: String {"Yago Ares"}
    
    //Método de instancia
    func printValue() -> String {
        return "Value: Método de instancia"
    }
    
    //Método de tipo
    static func printMessage() -> String {
        return "Message: Método de tipo"
    }
}

let compassPoint: CompassPoint = .north
compassPoint.owner
compassPoint.printValue()

// RESULTADO 👇
// SwiftBeta
// Value: Método de Instancia

//Tmabien podemos llamar al método de tipo que para este no creamos instancia

CompassPoint.printMessage()

// RESULTADO 👇
// Message: Método de tipo

//Un Enum es una manera diferente de crear tipos. Es importante entender bien la diferencias para saber cuándo escoger un Enum, Class o Struct.

//Vamos a seguir aprendiendo sobre los Enum, un concepto importante es que son value type como las Struct.


//Enums son Value Types

//Hablamos de Class y Struct, explicamos en detalle las diferencias entre reference type y value type. Vamos a volver a explicar qué significa que un tipo sea Value Type, pero esta vez usando un Enum como ejemplo.

//Una vez tenemos el Enum vamos a crear una instancia:

enum Move {
    case top
    case right
    case bottom
    case left
}

// creamos un instancia:

var firstMove = Move.top

// Y otras 2 y le asignamos el valor de firstMove

var secondMove = firstMove
var thirdMode = firstMove

// RESULTADO 👇:
// top
// top
// top

//Si ahora cambiamos el valor de la varible secondMove, vamos a ver que ocurre

secondMove = .right

print(firstMove)
print(secondMove)
print(thirdMode)

//Al asignar un nuevo valor a la variable secondMove, el cambio solo afecta a esa variable. Esto ocurre porque cuando hemos asignado el valor de firstMove a la variable secondMove se ha creado una copia. Y por lo tanto un cambio en una de las variables no afecta a las demás.

//Las Class son reference type, y las Struct y Enum son value type. Es importante conocer bien cómo funcionan y saber sus pros y contras, ya que depende del contexto te decantaras por crear una u otra.

//Iterar sobre todos los cases de un Enum

//En Swift 5.2 lanzaron un protocolo para poder extender la funcionalidad de los Enum. En el capítulo 13 explicaremos en detalle los protocolos, pero para que te hagas un idea, un protocolo añade una funcionalidad extra a un tipo.

//Podemos conformar protocolos en los tipos que creamos en Swift, en el siguiente ejemplo vamos a crear un Enum y vamos a conformar el protocolo CaseIterable. Este protocolo nos añade una funcionalidad extra en los Enum para poder iterar por todos sus cases, y esta funcionalidad forma parte de la Librería Standard de Swift, es un protocolo ya creado por Apple que podemos usar libremente en nuestros Enum, puedes ver más información en la documentación de Apple.

//Imagina que tenemos el siguiente Enum:

enum Week {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

//Podemos conformar el protocolo CaseIterable y así extender la funcionalidad del Enum. Para conformar un protocolo debemos añadir : después del nombre de nuestro tipo y a continuación añadir el nombre del protocolo:

enum Week2: CaseIterable {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

//Al añadir el protocolo CaseIterable, automáticamente ya hemos vitaminado nuestro Enum con nueva funcionalidad, podemos acceder a la propiedad allCases para iterar y mostrar todos los cases de nuestro Enum de la siguiente manera:

Week2.allCases.forEach{ print ($0)}

// RESULTADO 👇
/*
 monday
 tuesday
 wednesday
 thursday
 friday
 saturday
 */

let numberofDays = Week2.allCases.count
print("Week days \(numberofDays) ")

// RESULTADO 👇
// Week days: 7

//Conformar protocolos también lo podemos hacer usando Class y Struct, y lo vamos a ver, esto solo ha sido una pequeña introducción.

//Associated Values en Swift

//Al crear un Enum muchas veces nos resultará útil que los cases tengan parámetros de entrada, es decir, que puedan recibir un valor. Estos valores se llaman Associated Values, pero, ¿cómo los podemos usar? Es muy parecido a pasar parámetros a una función, vamos a verlo en detalle.

//A continuación vamos a crear un Enum que represente el campo de un formulario y este mismo campo puede representar diferentes formatos: nombre, calle, número de teléfono y tarjeta de crédito.

enum Field {
    case name(String)
    case street(String)
    case phone(number: String)
    case creditCart(digits: String, cvv: Int)
}

//En este caso hemos creado varios cases en nuestro Enum y cada uno de ellos acepta un associated value.

//Si queremos crear una instancia de este Enum y usar en un switch podemos hacer lo siguiente:


let creditCardField = Field.creditCart(digits: "1234 5678 9102", cvv: 722)

switch creditCardField {
case .creditCart(digits: let digits, cvv: _):
    print("Credit Card: \(digits)")
default:
    print("Do nothing")
}

// RESULTADO 👇
// Credit Card: 1234 5678 9012

//Dentro del case creditCard podemos acceder a los associated values (muy parecido a recibir valores como parámetros de entrada en una función).

//Un detalle importante es que los valores que podemos pasar al case de un Enum pueden tener un nombre. En el caso de phone y creditCard hemos creado nombres para que sea más comprensible nuestro código.


//Raw Values en Swift

//En la anterior sección hemos visto que podemos pasar valores a los cases de un Enum usando associated values, pero en ocasiones podemos simplificarlos y podemos dar un valor directamente al case de nuestro Enum.

//Estos valores por defecto los llamamos raw value y para poder hacerlo todos los cases del Enum deben ser del mismo tipo. En este caso debemos añadir el tipo justo a continuación del nombre de nuestro Enum, vamos a ver un ejemplo:

enum Parameter: String {
    case query = "El libro de Swift"
    case limit = "50"
    case author = "SwiftBeta"
}

//Ahora para extraer y poder usar el valor de cada case, podemos crear una instancia y acceder al raw value de la siguiente manera:

let parameter = Parameter.query.rawValue
let limit = Parameter.limit.rawValue
let author = Parameter.author.rawValue

print(parameter)
print(limit)
print(author)

//Hemos creado un Enum y en cada case le hemos asignado un valor. En este caso ha sido de tipo String (todos los cases deben tener el mismo tipo).

//Es importante especificar el tipo de los raw value de nuestro Enum, si no lo hacemos obtenemos el siguiente error

/*
 enum Parameter {
 case query = "El Libro de Swift"
 case limit = "50"
 case author = "SwiftBeta"
 }
 */

// RESULTADO 👇
// Error: Enum case cannot have a raw value if the enum does not have a raw type


//Ahora vamos a ver otro Enum pero esta vez tiene como raw value de tipo Int

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, uranus, neptune
}

//En el Enum Planet indicamos que mercury tiene el valor de 1 y automáticamente por cada case que va a continuación su valor se incrementará en 1. Esto significa que venus tendrá un raw value de 2, earth tendrá un raw value de 3, etc. pero para asegurarnos vamos comprobarlo con el siguiente código:

let mercury = Planet.mercury.rawValue
let earth = Planet.earth.rawValue
let neptune = Planet.neptune.rawValue

// RESULTADO 👇
// 1
// 3
// 8
