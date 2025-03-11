//
//  ContentView.swift
//  IdadeCanina
//
//  Created by COTEMIG on 11/03/25.
//

import SwiftUI

struct ContentView: View {
    @State private var idadehumana: String = ""
    @State private var armresult: String = ""
    func calcular(){
        if $idadehumana > 0
        $armresult = $idadehumana * 7;
    }
    
    
    var body: some View {
              
        VStack{
            Image("cachorro1")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                
            Text("Calculadora de idade canina")
            
            TextField(
                   "Digite a idade humana",
                   text: $idadehumana
               )
            Button(action: calcular){
            Text("Calcular")
            .padding()
            .frame(width: 150)
            .background(Color.blue)
            )
            }
            Text("A idade do seu cao é de"+ $armresult + "anos!")
            
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
