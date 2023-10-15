//
//  ContentView.swift
//  ExOne
//
//  Created by Vitaliy on 2023-10-01.
//

import SwiftUI

struct Fruit: Identifiable {
    let id: Int
    let name: String
}
struct ContentView : View {
    var fruits = [
        Fruit(id: 0, name: "Apelsin"),
        Fruit(id: 1, name: "Banan"),
        Fruit(id: 2, name: "Citron"),
    ]
    var body: some View {
        NavigationView {
            List(fruits) { fruit in
                HStack {
                    NavigationLink(destination: FruitView(data: fruit.name)) {
                        Text(fruit.name)
                    }
                }
            }
        }
    }
}

struct FruitView: View {
    var data: String
    
    var body: some View {
        Text(data)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
