import UIKit


//Crea un closure que acepte 2 parámetros de entrada de tipo Int y retorne la suma.

let suma = { (parameter1: Int, parameter2: Int) -> Int in
    return parameter1 + parameter2
}

suma(5,5)

//Crea un closure que acepte 2 parámetros de entrada de tipo String y los printe por consola.

let imprimirConsola = { (parameter1: String, parameter2: String) -> Void in
    print("Primer Valor: \(parameter1)")
    print("Segundo Valor: \(parameter2)")
}

imprimirConsola("Hola", "Yago")

//Dado el siguiente Array:

var frameworks = ["SwiftUI", "Combine", "UIKit", "Foundation"]

//Usa un método llamado contains para saber si el Array contiene "SwiftUI". El método contains lo podemos usar en un Array, es como sorted(by:).

let containsSwiftUI = frameworks.contains { $0 == "SwiftUI" }

print(containsSwiftUI)

//Sustituye el código que has añadido en el closure del ejercicio 3 por una función. Es decir, crea una función y pásasela como parámetro a la función contains.

func isEqualToSwiftUI(value: String) -> Bool {
    value == "SwiftUI"
}

let isSwiftUI = frameworks.contains(where: isEqualToSwiftUI)

print(isSwiftUI)

//Crea una función que tenga un trailing closure


func trailingClosure(withName name: String , closure: () -> Void) {
    print("Name: \(name)")
    closure()
}


trailingClosure(withName: "Yago") {
    print("Completed")
}

//Crea una función que acepte 3 parámetros de entrada, el primero que sea un Bool y los otros 2 que sean closures. Si el valor del Bool es true ejecutamos un closure llamado onSuccess y si el valor del Bool es false llamamos al otro closure llamado onError. Dentro de cada closure añade un print con un mensaje diferente.

func httpResponse (status: Bool, onSuccess: () -> Void, onError: () -> Void ){
    if status == true {
        onSuccess()
    }else {
        onError()
    }
}

httpResponse(status: true,
             onSuccess: {
    print("On Success")
}, onError: {
    print("Show Error")
}
)

//Como lo han resuleto en el libro:
func httpResponse2 (status: Bool, onSucces: () -> Void, onError: () -> Void){
    guard status else { // Si la condición status es false, inmediatamente ejecuta la closure onError y sale de la función, evitando un bloque de código adicional. Es un patrón común en Swift para evitar anidación de código:
        return onError()
    }
    onSucces()
}

httpResponse2(status: false,
              onSucces: {
    print("On Success")
}, onError: {
    print("Show Error")
})

//Crea una función que retorne otra función que haga la suma de 2 parámetros. Llama a la función y obtén el cálculo de sumar los 2 números.

func returnFunc() -> (Int, Int) -> Int {
    
    func suma(a: Int, b: Int) -> Int {
        return a + b
    }
   
    return suma
}

returnFunc()(5, 4)

 //¿Podemos crear la siguiente función o tenemos un error del compilador? En caso de ser posible, ¿cómo la llamaría para obtener la suma de 2 números?

func math() -> (Int, Int) -> Int {
    return { a, b in
        a + b
    }
}

//Es correcta.

//La función del ejercicio anterior es correcta, llámala correctamente para que haga la suma de 3 y 5 (el resultado debe ser 8)

math()(3, 5)

//Dado el siguiente código, cambia la firma del método log(message:) para evitar usar log { "User Created" }, evitar usar las llaves ¿se te ocurre alguna manera?

var isProductionTarget: Bool = true

@MainActor func log(message: @autoclosure () -> String) {
    if isProductionTarget {
        return print(message())
    }
}

//log { "User Created" } -> Sin autoclousure

//con autoclosure

log(message: "User Created")
