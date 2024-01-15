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
        super.depositar(200)
    }
}

var contaPoupanca = ContaPoupanca(nome: "Vinicius")
contaPoupanca.depositar(100)
print("Saldo conta poupanca R$\(contaPoupanca.saldo)")

class ContaCorrente: ContaBancaria {
    var possuiCartao: Bool

    func solicitarCartao() {
        possuiCartao = true
        print("Cartao solicitado com sucesso!")
    }

    init(nome: String, possuiCartao: Bool) {
        self.possuiCartao = possuiCartao
        super.init(nome: nome)
    }
}

var contaCorrente = ContaCorrente(nome: "Sofia", possuiCartao: false)
contaCorrente.depositar(800)
print("Saldo conta corrente R$\(contaCorrente.saldo)")

contaCorrente.solicitarCartao()
contaPoupanca.solicitarEmprestimo(5000)
print("Saldo conta poupanca R$\(contaPoupanca.saldo)")