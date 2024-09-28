import UIKit
//Swift puede determinar qué tipo de datos contiene una constante o variable en función de lo que le asignamos. Sin embargo, a veces no queremos asignar un valor de inmediato o queremos anular la elección de tipo de Swift, y ahí es donde entran en juego las anotaciones de tipo.

//Hasta ahora hemos estado creando constantes y variables como esta:

let surname = "Lasso"
var score = 0

//Las anotaciones de tipo nos permiten ser explícitos acerca de qué tipos de datos queremos y se ven así:

let surName: String = "Lasoo"
var score2: Int = 0

//Estamos siendo explícitos surname debe ser una cadena y score un enteo

//Por ejemplo, tal vez score es un decimal porque el usuario puede obtener la mitad de puntos, por lo que escribirás esto:

var score3: Double = 0 //Sin el :Double swift pensaría que es un entero, pero de esta forma le decimos que se decimal

//String contine texto

let playeName: String = "Roy"

//Int con números enteros

var luckyNumber: Int = 13

//Double contiene decimales

let pi: Double = 3.141

//Bool es verdadero o falso

var isAuthenticated: Bool = true

//Array contiene muchos valores diferentes, todos en el orden que los agregas. Debe ser especializado, por [String]

var albums: [String] = ["Red", "Fearless"]

//En los diccionarios muchos valores diferentes, tu decides como se debe acceder a los datos

var user: [String: String] = ["id": "@twostraws"]

//Set contiene muchos valores diferentes, pero los almacena en un orden optimizado par acomprobar que contiene. Debe ser especializado. Por ejemplo, esto crea un array de cadenas:

var books : Set<String> = Set(["The Bluest Eye", "Foundation", "Girl Woman", "Other"])

//Conocer todos estos tipos es importante en los casos en los que no se desean proporcionar valores iniciales. Por ejemplo, esto crea un array de cadenas:

var soda: [String] = ["Coke", "Pepsi", "Irn-Bru"]

//En ese caso, no es necesario indicar el tipo, ya que Swift puede ver que estás asignando una matriz de cadenas. Sin embargo, si quisieras crear un array de cadenas vacía , necesitarías saber el tipo:

var teams: [String] = [String]()

//Algunas personas prefieren usar la anotación de tipo y luego asignarle una matriz vacía de esta manera:

var cities: [String] = []

//Prefiero usar la inferencia de tipos tanto como sea posible, así que escribiría esto:

var clues = [String]()


//Además de todo eso, existen las enumeraciones . Las enumeraciones son un poco diferentes de las demás porque nos permiten crear nuevos tipos propios, como una enumeración que contenga los días de la semana, una enumeración que contenga el tema de la interfaz de usuario que desea el usuario o incluso una enumeración que contenga la pantalla que se muestra actualmente en nuestra aplicación.

//Los valores de una enumeración tienen el mismo tipo que la enumeración misma, por lo que podríamos escribir algo como esto:

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light

//Ahora bien, es muy probable que te preguntes cuándo deberías usar anotaciones de tipo, por lo que podría serte útil saber que prefiero usar la inferencia de tipo tanto como sea posible, lo que significa que asigno un valor a una constante o variable y Swift elige el tipo correcto automáticamente. A veces, esto significa usar algo como var score = 0.0para que obtenga un Double.

//La excepción más común a esto es con las constantes para las que aún no tengo un valor. Verás, Swift es muy inteligente: puedes crear una constante que aún no tenga un valor, proporcionar ese valor más adelante y Swift se asegurará de que no la usemos accidentalmente hasta que haya un valor presente. También se asegurará de que solo establezcas el valor una vez, de modo que permanezca constante.

//Por ejemplo:

let username: String
// lots of complex logic
username = "@twostraws"
// lots more complex logic
print(username)

