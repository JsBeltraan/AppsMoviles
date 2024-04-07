var aux: String = ""
var opcionIngresada: String = aux
var saldoTotal: Double = 0

func retiro() {
  if saldoTotal == 0 {
    print ("No cuentas con saldo para realizar un retiro")

    print("\n¿Deseas realizar otra operación? S/N")
    aux = readLine()!
    opcionIngresada = aux

    if opcionIngresada == "N" || opcionIngresada == "n" {
      opcionIngresada = "4"
    }
  } else {
  print ("\nIngresa la cantidad a retirar")

    aux = readLine()!
    opcionIngresada = aux

    let cantidadRetiro = Double(opcionIngresada)!

    if cantidadRetiro > saldoTotal {
      print ("Lo siento, la cantidad a retirar excede el límite de saldo disponible")
      
      print("\n¿Desea retirar una cantidad menor? S/N")
      aux = readLine()!
      opcionIngresada = aux

      if opcionIngresada == "N" || opcionIngresada == "n" {
        opcionIngresada = "4"
      } else {
        print("Ingresa la cantidad a retirar")
        aux = readLine()!
        opcionIngresada = aux
        
        let cantidadRetiro = Double(opcionIngresada) ?? 0.0

        if cantidadRetiro <= saldoTotal {
        saldoTotal = saldoTotal - cantidadRetiro
        print("Tome su dinero, su saldo actual es: \(saldoTotal)")
        print("\n")

        }
      }
      
    } else {
      saldoTotal = saldoTotal - cantidadRetiro
      print("Tome su dinero, su saldo actual es: \(saldoTotal)")
      print("\n")
    }
  }
}


func deposito() {
  
    print("Ingresa el monto a depositar: ")
  
  aux = readLine()!
  opcionIngresada = aux
  // Crear una var double para poder sumarla al saldo total
  let cantidadDepositada = Double(opcionIngresada)!
  saldoTotal = saldoTotal + cantidadDepositada
  print("\n")
  print("Abono exitoso por $ \(cantidadDepositada)")
  print("\n")
  print("Tu saldo actual es de $ \(saldoTotal)")
  print("\n")
}

// Menu Interactivo
while opcionIngresada != "4" {
  print("*******Bienvenido a Banco*******")
  print("\n")
  print("1. Deposito")
  print("2. Retiro")
  print("3. Consultar Saldo")
  print("4. Salir")
  print("\n")

  print("Elige el numero de la opcion: ")

  aux = readLine()!
  opcionIngresada = aux

  switch opcionIngresada {
    case "1":
    deposito()
    print("\n")
    print("¿Deseas realizar otro deposito? (S/N)")
          aux = readLine()!
          opcionIngresada = aux
          switch opcionIngresada {
            case "S", "s", "SI", "si", "Si", "sI":
            deposito()

            case "N", "n", "NO", "no", "No", "nO":
            print("¿Deseas realizar alguna otra operacion? (S/N)")
            aux = readLine()!
            opcionIngresada = aux

            default:
            print("Opcion no valida")
          }
    
    case "2":
    retiro()
    
    print("¿Desea realizar otro retiro? S/N")
    aux = readLine()!
    opcionIngresada = aux

    switch opcionIngresada {
      case "S", "s", "SI", "si", "Si", "sI":
      retiro()
      case "N", "n", "NO", "no", "No", "nO":
      print("¿Deseas realizar alguna otra operacion? (S/N)")

      aux = readLine()!
      opcionIngresada = aux

      if opcionIngresada == "N" || opcionIngresada == "n" {
        opcionIngresada = "4"
      }

      default:
      print("Opcion no valida")
      
    }

    case "3":
    print("Su saldo actual es de: \(saldoTotal)")
    print("\n")

    print("¿Deseas realizar alguna otra operacion? (S/N)")

    aux = readLine()!
    opcionIngresada = aux

    if opcionIngresada == "N" || opcionIngresada == "n" {
      opcionIngresada = "4"
    }
    
    case "4":
    print("Gracias por usar nuestro servicio ¡Hasta pronto!")

    default:
    print("Opcion no valida")
  }// FIN SWITCH
}// FIN WHILE