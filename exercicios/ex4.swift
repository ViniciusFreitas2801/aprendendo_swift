let frase = "Qual o valor de 8x2?"
let resposta = 16
let resposta_usuario = 16
var pontuacao = 10

if resposta == resposta_usuario {
    pontuacao += 1
}

else {
    pontuacao -= 1
}

print("\(frase)")
print("Resposta: \(resposta)")
print("Sua resposta: \(resposta_usuario)")
print("Pontuacao final: \(pontuacao)")