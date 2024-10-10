import UIKit

//1. Propiedades de Instancia

//A continuación, vamos a crear la misma Struct que vimos en el capítulo anterior y vamos a entrar en detalle sobre las propiedades en Swift, vamos a crear una Struct llamada User, añadimos propoiedades y creamos instancia:

struct User {
    var name: String
    var city: String
}


var user = User(name: "Yago", city: "Lugo")

//Una vez creada la instancia, podemos acceder a sus propiedades:

print(user.name)
print(user.city)

//También podemos modificar el valor que contienen las propiedades:
user.name = "Aprende Swift"
user.city = "Madrid"

print(user.name)
print(user.city)

// RESULTADO 👇
// Aprende Swift
// Madrid

//Este tipo de propiedades se llaman propiedades de instancia, ya que son propiedades que pertenecen la instancia de un tipo, es decir, para poder acceder a ellas primero debemos crear una instancia del tipo. En este caso hemos creado una instancia de User para poder acceder a la propiedad name y a la propiedad city.

//Pero esto es solo un tipo de propiedad en Swift veamos otros tipos

//Prodiedades de Tipo

//Las propiedades de tipo son propiedades que no necesitan crear una instancia para poder acceder a su valor. Se crean exactamente igual que las propiedades de instancia, la única diferencia es añadir la keyword static antes de declarar la propiedad, es decir, el siguiente código muestra cómo crear una propiedad de instancia llamada name y a continuación creamos una propiedad de tipo llamada city:

struct User2 {
    var name: String
    @MainActor static var city: String = "Barcelona"
}

var user2 = User2(name: "Yago")
print(user2.name)



// Acceso sin necesidad de una instancia
print(User2.city)  // Esto funcionará

//En este caso, para acceder a la propiedad name debemos crear una instancia de User, pero para acceder a la propiedad city tan solo tenemos que poner el nombre del tipo seguido de la propiedad. Es decir:

//Ahora, imagina que queremos modificar el valor de la propiedad de tipo, podemos hacer lo siguiente:

User2.city = "Madrid"
print(User2.city)

//Propiedades Computadas (Computed Properties)

//Las propiedades de instancia y las propiedades de tipo almacenan valores. Pero hay un tipo de propiedad que no almacena valores sino que se calcula cada vez que llamamos a la propiedad, para utilizar estas propiedades usamos un getter y un setter. El getter se llama cuando queremos obtener el valor de la propiedad computada, y el setter se llama cuando asignamos un nuevo valor.

//Vamos a ver un ejemplo muy sencillo de una Struct llamada Square que tiene una propiedad computada para calcular su área:

struct Square {
    var side: Double
    
    // Propiedad computada para calcular el área
    var area: Double {
        get {
            return side * side
        }
        set(newArea) {
            side = sqrt(newArea)
        }
    }
}

//La sintaxis que hemos usado para crear nuestra propiedad computada es bastante curiosa. Dentro de la propiedad hemos usado get y set para añadir la lógica de nuestra propiedad:

//- Una lógica se ejecuta al llamar a la propiedad area (dentro del get)
//- Otra lógica diferente se ejecuta cuando asignamos un nuevo valor a la propiedad area.

//Vamos a verlo más en detalle. En el scope del get hemos calculado el área a partir de la propiedad side, y en el set hemos recibido un valor para calcular su raíz cuadrada y guardarlo en la propiedad side.

//A continuación creamos una instancia de Square y llamamos a la propiedad area:

var square = Square(side: 20)

print(square.area)

// Asignamos un nuevo valor a la propiedad computada area para que ejecute el código del set
square.area = 200

print(square.area)
print(square.side)


// RESULTADO 👇
// 200.00000000000003
// 14.142135623730951

//Al asignar un nuevo valor en la propiedad computada area el valor de la propiedad side también se ha modificado

//como detalle curioso el parámetro newArea que hemos recibido en el set lo podríamos omitir y usar directamente newValue, vamos a verlo más claro en el siguiente código:
/*
set {
    side = sqrt(newValue)
}
*/

//4. Property Observers

//Ahora vamos a ver otro tipo de propiedad llamada property observers. Esta propiedad es muy útil para saber cuándo asignamos un nuevo valor a una propiedad. Es decir, imagina que quieres ser notificado cada vez que el valor de una propiedad se modifica, puedes saberlo usando los observadores de propiedad.

//Para recibir esta notificación utilizamos willSet y didSet al crear nuestra propiedad, vamos a verlo en un ejemplo:

struct Database {
    var name: String {
        willSet(newName){
            print("Will update name \(newName)")
        }
        
        didSet {
            print("Changed name \(name)")
        }
    }
    
}

//La Struct Database tiene una propiedad llamada name y dentro de la propiedad estamos usando willSet y didSet, pero, ¿en qué se diferencian?

//- willSet se llamará un instante antes de asignarse un valor nuevo a una propiedad. Fíjate que recibimos el nuevo valor como parámetro, en el código anterior aparece como newName.
//- didSet se llamará justo después de asignar un nuevo valor a una propiedad.

var database = Database(name: "Users")
database.name = "Students"

// RESULTADO 👇
// Will update name Students
// Changed name Students

//Es muy útil saber cuándo una propiedad va a ser modificada o cuándo ha sido modificada para lanzar lógica dentro de tu aplicación (por ejemplo para refrescar la información que estás mostrando en una vista).


