func soma(n1: Int, n2: Int) {
    var resultado = n1 + n2
    print("Soma: \(resultado)")
}

soma(n1: 2, n2: 4)

func soma2(_ n1: Int, _ n2: Int) {
    var resultado = n1 + n2
    print("Soma2: \(resultado)")
}

soma2(2, 5)

func soma3(valor1 n1: Int, valor2 n2: Int) {
    var resultado = n1 + n2
    print("Soma3: \(resultado)")
}

soma3(valor1: 10, valor2: 2)

func adicao(n1: Int, n2: Int) -> Int {
    var resultado = n1 + n2
    return resultado
}

var resultado = adicao(n1: 10, n2: 22)
print(resultado)

func verificar_adulto(_ idade: Int) -> Bool {
    return idade >= 18
}

print(verificar_adulto(17))
print(verificar_adulto(22))