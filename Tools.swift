//
//  Tools.swift
//  NotesApp WatchKit Extension
//
//  Created by Egna Lizeth Polo Rubiano on 9/1/22.
//

import Foundation
import SwiftUI

class Tools{
    let key: String = "NotesApp"
    
    static let shared = Tools()
    
    private init(){}
    
    
    func save(array: [Note]){
        let data = array.map{try? JSONEncoder().encode($0)}
        UserDefaults.standard.setValue(data, forKey: key)
    }
    
    func load() -> [Note]{
        
        guard let saveData = UserDefaults.standard.array(forKey: key) as? [Data] else{
            return []
        }
        return saveData.map {try! JSONDecoder().decode(Note.self, from: $0)}
        }
    
    
 }

