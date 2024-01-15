struct Restaurante {
    var nome: String
    var tipoDeComida: String
    var numeroDePedidos: Int = 0

    mutating func recebePedido() {
        self.numeroDePedidos += 1
    }

    mutating func calculaTotalPedidos() -> Double {
        return Double(self.numeroDePedidos) * 35.0
    }
}

var restaurante = Restaurante(nome: "Dobradinha", tipoDeComida: "Churrasco")
restaurante.recebePedido()
restaurante.recebePedido()
print(restaurante.calculaTotalPedidos())