//
//  GameControler.swift
//  first_project
//
//  Created by Turma Tarde on 4/2/18.
//  Copyright © 2018 Turma Tarde. All rights reserved.
//

import Foundation

class Pergunta {
    var pergunta:String
    var resposta:String
    var peso:Int
    
    init(pergunta:String, resposta:String){
        self.pergunta = pergunta
        self.resposta = resposta
        self.peso = 1
    }
    
    func tryAnswer(guess:String) -> Bool{
        if guess == resposta{
            return true
        }
        return false
    }
}

class Mensagens{
    var erros:[String]
    var acertos:[String]
    var indiceErro:Int
    var indiceAcerto:Int
    
    init(erros:[String], acertos:[String]){
        self.erros = erros
        self.acertos = acertos
        self.indiceErro = 0
        self.indiceAcerto = 0
    }
    
    func getErro() -> String{
        var resposta = ""
        
        if(erros.count == 0){
            resposta = ""
        } else if indiceErro < erros.count{
            resposta = erros[indiceErro]
            self.indiceErro += 1
        } else {
            self.indiceErro = 0
            resposta = self.getErro()
        }
        
        return resposta
    }
    
    func getAcerto() -> String{
        var resposta = ""
        
        if(acertos.count == 0){
            resposta = ""
        } else if indiceAcerto < acertos.count{
            resposta = acertos[indiceAcerto]
            self.indiceAcerto += 1
        } else {
            self.indiceAcerto = 0
            resposta = self.getAcerto()
        }
        
        return resposta
    }
    
}

let pergunta1 = Pergunta(pergunta: "Qual a capital de Malta?", resposta: "valeta")
let pergunta2 = Pergunta(pergunta: "Em que ano foi lançado o álbum \"Is this it\" da banda The Strokes?", resposta: "2001")
let pergunta3 = Pergunta(pergunta: "Como é chamada a Mona Lisa em italiano?",resposta: "la gioconda")
let pergunta4 = Pergunta(pergunta: "Em que província italiana está localizada a cidade de Florença?", resposta: "toscana")
let pergunta5 = Pergunta(pergunta: "Em que cidade italiana Nietzsche sofreu um colapso mental?", resposta: "turim")
let pergunta6 = Pergunta(pergunta: "Qual o nome do cavalo de Alexandre O Grande?", resposta: "bucefalo")
let pergunta7 = Pergunta(pergunta: "Qual foi o primeiro campeão da Copa do Mundo de Futebol?", resposta: "uruguai")

let perguntas = [pergunta1, pergunta2, pergunta3, pergunta4, pergunta5, pergunta6, pergunta7]

let acerto = ["Acertou Mizeravi"]
let erros = ["ERRRROU (voz de Faustão)", "Errou, me deixou triste", "Que burro, dá zero pra ele (voz de Chaves)", "Gezuz, essa foi longe", "Melhor desistir e procurar no google migo", "Triste fim", "Por quê tu ainda tenta?"]

var msg = Mensagens(erros: erros, acertos: acerto)

var pontos = 0

for pergunta in perguntas{
    print("Você possui \(pontos) pontos")
    
    print(pergunta.pergunta)
    
    let input = readLine()
    
    if let resposta = input{
        if resposta.lowercased() == pergunta.resposta{
            print(msg.getAcerto())
            pontos += 1
        } else {
            print(msg.getErro())
        }
    }
    
}

if(pontos == perguntas.count){
    print("Parabéns você foi ok")
} else {
    print("Você só fez \(pontos)!! NOOOB")
}

