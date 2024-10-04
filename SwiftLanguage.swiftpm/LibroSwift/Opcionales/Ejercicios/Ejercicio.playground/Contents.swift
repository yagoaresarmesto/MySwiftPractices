import UIKit

//1. Crea un opcional de tipo Bool y asigna un valor. Hay varias maneras de hacerlo (crea tantas opciones como se te ocurran).

var miBoleano: Bool? = true
var isProUser = Optional(true)
var isLogged: Bool? = false

//2. A continuación extraemos el valor de un opcional almacenado en una variable.
 
var myName: String? = "SwiftBeta"

// Modo seguro
if let name = myName {
    print("Valor de \(name)")
}

//Modo no seguro

print(myName!)
 
// 3. ¿Qué valor hay almacenado en la segunda variable?

//El valor que hay almacenado en la segunda variable es SwiftBeta. Aquí estamos utilizando el operador ?? para comprobar si el valor de myName es nil. En este caso es nil y por lo tanto se asigna a la variable myYoutubeChannel el valor de SwiftBeta.

var username: String? = nil
var myYoutubeChannel = myName ?? "SwiftBeta"

//4. ¿Es posible crear una variable de la siguiente manera? ¿Puedes extraer su valor?

var myMessage: String?? = "Suscríbete a SwiftBeta"
//Es posible pero estamos creando un optional dentro de un optional
//Al realizar el siguiente print, obtenemos por consola Optional(Optional("Suscríbete a SwiftBeta"))
print(myMessage)


if let message = myMessage {
    print(message)
    if let messageClean = message{
        print(messageClean)
    }
}

//Incluso con force unwrap
print(myMessage!!)



//5. ¿Es posible crear una variable de la siguiente manera? ¿Puedes extraer su valor?
var myBlogMessage: String???? = "Suscríbete a SwiftBeta"

//Claro, igual que el anterior

//Voy direcnto con un force unwrap
print(myBlogMessage!!!!)

//6. ¿Qué ocurre al intentar extraer el valor de la siguiente variable con Force Unwrap?

var myName2: String? = nil

//Pues salta error, ya que no tiene valor por defecto

//7. Transforma la siguiente String a Int, ¿Cuál es el resultado?

var laptopModel = "M1X"

var laptopModelInt = Int(laptopModel)

//Pues no va a poder, esa cadena no se puede representar como Int, por eso su valor es Nil

print(laptopModelInt)

//8. Transforma la siguiente String a Int, ¿Cuál es el resultado?

var numberOfSuscribers = "2500"

var numberOfSubsInt = Int(numberOfSuscribers)

//Aquí podemos sin problema, pero va a devolver en Optional(2500)
print(numberOfSubsInt)

