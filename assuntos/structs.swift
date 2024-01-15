//Duvidas: 
//1 - mutating - Pra que serve exatamente, e quando nao precisa
//ser usada?

struct ContaBancaria {
    var saldo: Double = 0.0
    var nome: String
    
    mutating func depositar(_ valor: Double) {
        saldo += valor
    }

    mutating func sacar(_ valor: Double) {
        saldo -= valor
    }
}

var contaVinicius = ContaBancaria(nome: "Vinicius")
print("Conta de: \(contaVinicius.nome)")
print("Saldo inicial R$\(contaVinicius.saldo)")
contaVinicius.depositar(200.00)
print("Saldo pos deposito R$\(contaVinicius.saldo)")
contaVinicius.sacar(50)
print("Saldo pos saque R$\(contaVinicius.saldo)")

print(" ")

var contaSofia = ContaBancaria(nome: "Sofia")
print("Conta de: \(contaSofia.nome)")
print("Saldo inicial R$\(contaSofia.saldo)")
contaSofia.depositar(400.00)
print("Saldo pos deposito R$\(contaSofia.saldo)")
contaSofia.sacar(50)
print("Saldo pos saque R$\(contaSofia.saldo)")