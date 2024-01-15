//Obs: Heranca so esta presente em classes, struct nao possui
//Classe pai: ContaBancaria
//Classes filhas: ContaPoupanca, ContaCorrente

class ContaBancaria {
    var saldo: Double = 0.0
    var nome: String

    func sacar(_ valor: Double) {
        saldo -= valor
    }

    func depositar(_ valor: Double) {
        saldo += valor
    }   

    init(nome: String) {
        self.nome = nome
    }
}

class ContaPoupanca: ContaBancaria {
    func solicitarEmprestimo(_ valor: Double) {
        print("Emprestimo solitado de R$\(valor)")
    }
}

var contaPoupanca = ContaPoupanca(nome: "Vinicius")
contaPoupanca.depositar(100)
print("Saldo conta poupanca R$\(contaPoupanca.saldo)")

class ContaCorrente: ContaBancaria {
    var possuiCartao = false
    func solicitarCartao() {
        possuiCartao = true
        print("Cartao solicitado com sucesso!")
    }
}

var contaCorrente = ContaCorrente(nome: "Sofia")
contaCorrente.depositar(800)
print("Saldo conta corrente R$\(contaCorrente.saldo)")

contaCorrente.solicitarCartao()
contaPoupanca.solicitarEmprestimo(5000)