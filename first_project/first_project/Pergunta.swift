//
//  Pergunta.swift
//  first_project
//
//  Created by Turma Tarde on 03/04/18.
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
        if guess.lowercased() == resposta{
            return true
        }
        return false
    }
}
