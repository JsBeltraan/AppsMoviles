var aux: String = ""
var opcionIngresada: String = aux
var saldoTotal: Double = 0

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
  print("2. Consultar Saldo")
  print("3. Retiro")
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

    case "4":
    print("Gracias por usar nuestro servicio ¡Hasta pronto!")

    default:
    print("Opcion no valida")
  }// FIN SWITCH
}// FIN WHILE