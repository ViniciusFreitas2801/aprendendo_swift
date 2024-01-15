//Duvidas: 
//1 - Init - Pra que serve?
//2 - .self - Quando se deve usar?
//3 - 

class ContaBancaria {
    var saldo: Double
    var nome: String
    
    func depositar(_ valor: Double) {
        saldo += valor
    }

    func sacar(_ valor: Double) {
        saldo -= valor
    }

    init(nome: String) {
        saldo = 0.0
        self.nome = nome
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