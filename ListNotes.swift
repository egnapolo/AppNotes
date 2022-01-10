//
//  ListNotes.swift
//  NotesApp WatchKit Extension
//
//  Created by Egna Lizeth Polo Rubiano on 3/1/22.
//

import SwiftUI

struct ListNotes: View {
    
  @State private var notes = [Note]()
    
    var body: some View {
        VStack {
            List{
                ForEach(0..<notes.count, id: \.self){ i in
                    NavigationLink(
                        
                        destination: DetailNote(note: notes[i]),
                        label: {
                        Text(notes[i].title)
                    })
                }.onDelete(perform: delete)
            }
        }.onAppear(perform: {
           
            notes = Tools.shared.load()
        })
    }
    
    func delete(offset: IndexSet){
        withAnimation {
            notes.remove(atOffsets: offset)
        }
        Tools.shared.save(array: notes)
    }
}

struct ListNotes_Previews: PreviewProvider {
    static var previews: some View {
        ListNotes()
    }
}
