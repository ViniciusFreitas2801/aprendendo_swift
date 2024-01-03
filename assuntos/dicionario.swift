//Nao pode ser duplicado. ex: "nivi": 90... ocasionara um erro!
var pontuacao = [
    "nivi": 20,
    "sopa de sopa": 30, 
    "aspas": 100
]

var dicionario_vazio: [String: Int] = [:]
dicionario_vazio.reserveCapacity(10) //Reserva o numero de espacos

print(pontuacao["nivi"]) //Retorna opcional
print(pontuacao["less"]) //Retorna nulo
pontuacao.isEmpty //Retorna falso
pontuacao.count //Retorna num de elementos
pontuacao["Tuyz"] = 80 //Adiciona no final
pontuacao["nivi"] = 88 //Atualiza valor das chaves, e vai pro fim
pontuacao.updateValue(90, forKey: "Cauazin") //''
pontuacao.updateValue(82, forKey: "sopa de sopa") //''
pontuacao["aspas"] = nil //Remove chaves e valor
pontuacao.removeValue(forKey: "nivi") //''
//Esse ultimo metodo retorna o valor removido

for (nome, pontos) in pontuacao {
    print("\(nome) tem \(pontos) pontos")
}

//Percorre apenas as chaves
for nomes in pontuacao.keys {
    print(nomes)
}

for pontos in pontuacao.values {
    print(pontos)
}