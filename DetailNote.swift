//
//  DetailNote.swift
//  NotesApp WatchKit Extension
//
//  Created by Egna Lizeth Polo Rubiano on 5/1/22.
//

import SwiftUI

struct DetailNote: View {
    // propiedad encargada de recibir la informacion de la lista
    let note: Note
    
    var body: some View {
        VStack {
            Text(note.title)
            Spacer()
            Text(note.creationDate)
        }
    }
}

struct DetailNote_Previews: PreviewProvider {
    static var previews: some View {
        DetailNote(note: Note(title: "Hola Nota de Egna"))
    }
}
