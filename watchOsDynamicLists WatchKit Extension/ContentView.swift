//
//  ContentView.swift
//  watchOsDynamicLists WatchKit Extension
//
//  Created by Cloutier, Vincent on 2020-11-20.
//

import SwiftUI
struct Person: Identifiable {
    var id = UUID()
    var name: String
    var age: Int
}
struct ContentView: View {
    
    //people array of Person structs
    var people: [Person] = [
        Person(name: "Chris", age: 5),
        Person(name: "Alfred", age: 7),
        Person(name: "Bruce", age: 9),
        Person(name: "Wayne", age: 36)
    ]
    
    //variable that is selected person optional of struct
    @State var selectedPerson: Person?
    
    var body: some View {
        //actual list
        List {
            ForEach(people, id: \.id) { loopPerson in
                VStack {
                    Button(action: {
                        if self.selectedPerson == loopPerson {
                            self.selectedPerson = nil
                        } else {
                            self.selectedPerson = loopPerson
                        }
                    }) {
                        Text(loopPerson.name)
                    }
                    if selectedPerson == loopPerson {
                        Text(loopPerson.age)
                    }
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
