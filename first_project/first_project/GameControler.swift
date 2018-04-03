//
//  GameControler.swift
//  first_project
//
//  Created by Turma Tarde on 4/2/18.
//  Copyright © 2018 Turma Tarde. All rights reserved.
//
import UIKit
import Foundation

class GameController{
   
    var pontos:Int
    var msgs: Mensagens
    var perguntas:[Pergunta]
    var currentQuestion: Int

    
    init(){
        let pergunta1 = Pergunta(pergunta: "Qual a capital de Malta?", resposta: "valeta")
        let pergunta2 = Pergunta(pergunta: "Em que ano foi lançado o álbum \"Is this it\" da banda The Strokes?", resposta: "2001")
        let pergunta3 = Pergunta(pergunta: "Como é chamada a Mona Lisa em italiano?",resposta: "la gioconda")
        let pergunta4 = Pergunta(pergunta: "Em que província italiana está localizada a cidade de Florença?", resposta: "toscana")
        let pergunta5 = Pergunta(pergunta: "Em que cidade italiana Nietzsche sofreu um colapso mental?", resposta: "turim")
        let pergunta6 = Pergunta(pergunta: "Qual o nome do cavalo de Alexandre O Grande?", resposta: "bucefalo")
        let pergunta7 = Pergunta(pergunta: "Qual foi o primeiro campeão da Copa do Mundo de Futebol?", resposta: "uruguai")
        
        self.perguntas = [pergunta1, pergunta2, pergunta3, pergunta4, pergunta5, pergunta6, pergunta7]
        
        let acerto = ["Acertou Mizeravi"]
        let erros = ["ERRRROU (voz de Faustão)", "Errou, me deixou triste", "Que burro, dá zero pra ele (voz de Chaves)", "Gezuz, essa foi longe", "Melhor desistir e procurar no google migo", "Triste fim", "Por quê tu ainda tenta?"]
        self.msgs = Mensagens(erros: erros, acertos: acerto)
        
        self.pontos = 0
        self.currentQuestion = 0
        
        
    }
    
    func getQuestion() -> String{
        if(currentQuestion < perguntas.count){
            return perguntas[currentQuestion].pergunta
        } else {
            return "Fim do Jogo"
        }
    }
    
    func tryAnswer(guess:String) -> Bool{
        let acertou = perguntas[currentQuestion].tryAnswer(guess: guess)
        
        if acertou{
            pontos += 1
            currentQuestion += 1
            return acertou
        }
        
        return acertou
    }
    
    func getAcerto() -> String {
        return msgs.getAcerto()
    }
    
    func getErro() -> String{
        return msgs.getErro()
    }
}

