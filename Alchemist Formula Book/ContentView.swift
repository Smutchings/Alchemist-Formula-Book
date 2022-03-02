//
//  ContentView.swift
//  Alchemist Formula Book
//
//  Created by Sam Hutchings on 02/03/2022.
//

import SwiftUI

struct ContentView: View {
  
  struct Bomb: Decodable {
    let Name: String
    let Source: String
    let Rarity: String
    let Traits: String
    let Category: String
    let Subcategory: String
    let Level: Int
    let Price: String
    let Bulk: String
    let Spoilers: String?
  }
  
  let bombs: [Bomb] = Bundle.main.decode([Bomb].self, from: "bombs.json")
  
  var body: some View {
    
    List {
        ForEach(bombs, id: \.self.Name) { bomb in
          HStack {
            Text("\(bomb.Name)")
              .padding()
            Spacer()
            Text("\(bomb.Level)")
              .padding()
          }
      }
    }
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
