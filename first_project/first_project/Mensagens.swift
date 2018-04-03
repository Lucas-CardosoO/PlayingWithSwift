//
//  Mensagens.swift
//  first_project
//
//  Created by Turma Tarde on 03/04/18.
//  Copyright © 2018 Turma Tarde. All rights reserved.
//

import Foundation

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
