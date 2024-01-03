func estados(_ estados: [String : String]) {
    for i in dic_estados.values {
        if i.count >= 8 {
            print(i)
        }
    }
}

var dic_estados = [
    "AC": "Acre",
    "AL": "Alagoas",
    "AP": "Amapa",
    "AM": "Amazonas",
    "BH": "Bahia",
    "CE": "Ceara",
    "ES": "Esperito Santos",
    "GO": "Goias",
    "MA": "Maranhao",
    "MT": "Mato Grosso",
    "MS": "Mato Grosso do Sul",
    "MG": "Minas Gerais",
    "PA": "Para",
    "PB": "Paraiba",
    "PR": "Parana",
    "PE": "Pernambuco",
    "PI": "Piaui",
    "RJ": "Rio de Janeiro",
    "RN": "Rio Grande do Norte",
    "RS": "Rio Grande do Sul",
    "RO": "Rondonia",
    "RR": "Roraima",
    "SC": "Santa Catarina",
    "SP": "Sao Paulo",
    "SE": "Sergipe",
    "TO": "Tocantins"
]

estados(dic_estados)