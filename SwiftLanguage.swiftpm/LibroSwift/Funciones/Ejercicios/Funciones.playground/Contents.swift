import UIKit

//Crea una función que tenga 2 parámetros de entrada de tipo String. Dentro de la función usa print para mostrar el valor de los parámetros de entrada y finalmente llama a la función.

func dosentradas(param1: String, param2: String){
    print(param1 + " " + param2)
}

dosentradas(param1: "Hola", param2: "Yago")

//Crea una función que retorne un tipo String

func returnString() -> String {
    return "Hola"
}

let saludo = returnString()
print(saludo)

//Crear una función que acepte dos parámetros de tipo Int y haga el cálculo de multiplicar. La función debe retornar el resultado.

func dosInt(param1: Int, param2: Int){
    print(param1 * param2)
}

dosInt(param1: 3, param2: 5)

//Crea una función que retorne una tupla con los tipos String, Bool, Int

func returntypes() -> (String, Bool, Int) {
    let name = "Yago"
    let listo = true
    let edad = 23
    
    return (name, listo, edad)
}

let devuelveTupla = returntypes()

print(devuelveTupla)

//Crea una función que acepte 2 parámetros de entrada y que el segundo tenga un valor por defecto. Dentro de la función usa print para mostrar el valor de cada parámetro de entrada.

func defaultValue(name: String, sexo: String = "Hombre") {
    print("\(name), \(sexo)" )
}

//Llama a la función dando un valor solo al primer parámetro
defaultValue(name: "Yago")
//Llama a la función dando un valor a los 2 parámetros de entrada
defaultValue(name: "Ana", sexo: "Mujer") //Aunque tenga un valor por defecto, este se puede modificar

//Crea una función que acepte una colección como parámetro de entrada. En el scope de esta función itera sobre la colección y muestra los valores por consola.

func entryColeccion(palabras:[String]){
    for palabra in palabras {
        print(palabra)
    }
}

entryColeccion(palabras: ["Sopa", "Casa", "Abecedario"])

//Crea una función que acepte 2 parámetros que se puedan modificar dentro del scope de una función. Modifica sus valores dentro de la función y comprueba que ha funcionado.

var counter = 0
var username = "SwiftBeta"

func updateProperties(counter: inout Int, username: inout String){
    counter = 1000
    username = "Yago Ares"
}

updateProperties(counter: &counter, username: &username)
print(counter)
print(username)

//Crea una función que valide que un número sea mayor que otro. Si el valor del primer parámetro es más grande que el segundo retorna true y si no retorna false. Llama a tu función para comprobar que funciona correctamente.

func numberBigger(numb1:Int, numb2:Int) -> Bool{
    if numb1 > numb2 {
        return true
    } else {
        return false
    }
}

let isNumberbigger = numberBigger(numb1: 5, numb2: 3)

print(isNumberbigger)
print("______")

//Acaba de completar la siguiente función. Dentro de la función validateUser hay otra función llamada isValid. El ejercicio consiste en acabar de implementar la función isValid, esta función debe retornar un tipo Bool, si el value es mayor que 5 retornamos true y si no el valor es false.

func validateUser(name: String) -> Bool {
    var fullName = name + " " + "Youtube"
    return isValid(value: fullName)
    
    func isValid(value: String) -> Bool {
        value.count > 5
    }
}

//En este caso siempre va a devolver true a no ser que cambie el valor de 'fullname'
validateUser(name: "Swift")

//Llama a las dos funciones getEmail y getPassword y pásaselos a la función login

func getEmail() -> String {
    "qwerty@qwerty.com"
}

func getPassword() -> String {
    "123456789"
}

func login(withEmail email: String, withPassword password: String) {
    print(email)
    print(password)
}

//Resultado
login(withEmail: getEmail(), withPassword: getPassword())
