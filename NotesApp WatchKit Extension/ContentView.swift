//
//  ContentView.swift
//  NotesApp WatchKit Extension
//
//  Created by Egna Lizeth Polo Rubiano on 3/1/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Notas")
            Spacer()
            NavigationLink("Agregar Notas",destination: AddNote())
            NavigationLink("Listar Notas", destination: ListNotes())
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
