struct Articulo {
  let nombre: String
  let precio: Double
  let stock: Double
}

var articulos = [
  Articulo(nombre: "Zapatos", precio: 599.99, stock: 10),
  Articulo(nombre: "Pantalon", precio: 399.99, stock: 25),
  Articulo(nombre: "Playera Polo", precio: 259.49, stock: 50),
  Articulo(nombre: "Gorras", precio: 129.00, stock: 30)
]


var aux: String = ""
var opcioningresada: String = aux
var cuenta: Double = 0

while opcioningresada != "2" {
  print("****** BIENVENIDOS A MARKET STORE ******")
  print("****** ARTICULOS ******")
  
  print("--------------------------")

  print("Opcion 1")
  print("Articulo: \(articulos[0].nombre)")
  print("Precio: $\(articulos[0].precio)")
  print("Stock: \(Int(articulos[0].stock))")

  print("--------------------------")

  print("Opcion 2")
  print("Articulo: \(articulos[1].nombre)")
  print("Precio: $\(articulos[1].precio)")
  print("Stock: \(Int(articulos[1].stock))")

  print("--------------------------")
  
  print("Opcion 3")
  print("Articulo: \(articulos[2].nombre)")
  print("Precio: $\(articulos[2].precio)")
  print("Stock: \(Int(articulos[2].stock))")

  print("--------------------------")
  
  print("Opcion 4")
  print("Articulo: \(articulos[3].nombre)")
  print("Precio: $\(articulos[3].precio)")
  print("Stock: \(Int(articulos[3].stock))")

  print("--------------------------")
  

  print("1.- COMPRAR ARTICULOS")
  print("2.- SALIR")

  aux = readLine()!
  opcioningresada = aux

  switch opcioningresada{
    case "1":
    print("\n")
    print("Ingresa el numero de articulo a comprar: ")

    aux = readLine()!
    opcioningresada = aux

    switch opcioningresada {
      case "1":
      print("\n")
      print("Ingresa la cantidad de zapatos a comprar: ")
            aux = readLine()!
            opcioningresada = aux
      
      let cantidadIngresada = Double(opcioningresada) ?? 0
      if cantidadIngresada <= articulos[0].stock {
        cuenta = Double(cantidadIngresada * articulos[0].precio)
        print("\n")
        print("Usted ha comprado \(Int(cantidadIngresada)) zapatos por un total de $\(cuenta)")
        print("\n")
        print("Total a Pagar: $\(cuenta)")
        print("\n")
        print("GRACIAS POR SU COMPRA")
        print("\n")
        
      } else {
        print("\n")
        print("No hay suficiente stock, lo sentimos")
        print("\n")
      }

      
      case "2":
      print("\n")
      print("Ingresa la cantidad de Pantalones a comprar: ")
            aux = readLine()!
            opcioningresada = aux

      let cantidadIngresada = Double(opcioningresada) ?? 0
      if cantidadIngresada <= articulos[1].stock {
        cuenta = Double(cantidadIngresada * articulos[1].precio)
        print("\n")
        print("Usted ha comprado \(Int(cantidadIngresada)) Pantalones por un total de $\(cuenta)")
        print("\n")
        print("Total a Pagar: $\(cuenta)")
        print("\n")
        print("GRACIAS POR SU COMPRA")
        print("\n")

      } else {
        print("\n")
        print("No hay suficiente stock, lo sentimos")
        print("\n")
      }
      
      case "3":
      print("\n")
      print("Ingresa la cantidad de Playeras Polo a comprar: ")
            aux = readLine()!
            opcioningresada = aux

      let cantidadIngresada = Double(opcioningresada) ?? 0
      if cantidadIngresada <= articulos[2].stock {
        cuenta = Double(cantidadIngresada * articulos[2].precio)
        print("\n")
        print("Usted ha comprado \(Int(cantidadIngresada)) Playeras Polo por un total de $\(cuenta)")
        print("\n")
        print("Total a Pagar: $\(cuenta)")
        print("\n")
        print("GRACIAS POR SU COMPRA")
        print("\n")

      } else {
        print("\n")
        print("No hay suficiente stock, lo sentimos")
        print("\n")
      }

      
      
      case "4":
      print("\n")
      print("Ingresa la cantidad de Gorras a comprar: ")
            aux = readLine()!
            opcioningresada = aux

      let cantidadIngresada = Double(opcioningresada) ?? 0
      if cantidadIngresada <= articulos[3].stock {
        cuenta = Double(cantidadIngresada * articulos[3].precio)
        print("\n")
        print("Usted ha comprado \(Int(cantidadIngresada)) Gorras por un total de $\(cuenta)")
        print("\n")
        print("Total a Pagar: $\(cuenta)")
        print("\n")
        print("GRACIAS POR SU COMPRA")
        print("\n")

      } else {
        print("\n")
        print("No hay suficiente stock, lo sentimos")
        print("\n")
      }


      default: 
      print("Opcion no valida")
    }

    case "2":
    print("Gracias por su compra, hasta pronto")

    default:
    print("Opcion no valida")
  }
  
}