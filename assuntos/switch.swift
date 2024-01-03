var numero = 20

switch numero {
    case 1...10: print("Numero entre 1 e 10")
    case 11...20: print("Numero entre 11 e 20")
    default: print("Numero nao encontrado")
    
}

var opcao = 2

switch opcao {
    case 1: print("Faca isso")
    case 2: print("Faca aquilo")
    case 3: print("Tanana")
    default: print("Opcao invalida")
}

var nome: String = "Vinicius"

switch nome {
    case "Vinicius": print("Meu nome")
    default: print("Nao eh meu nome")
}

switch numero {
    case let x where x % 2 == 0: print("Numero par")
    default: print("Numero \(x) eh impar")
}

var numero2 = 24

switch numero2 {
    case _ where numero2 % 2 == 0: print("Numero par")
    default: print("Numero eh impar")
}

var numeroAleatorio = Int.random(in: 0...100)
print(numeroAleatorio)