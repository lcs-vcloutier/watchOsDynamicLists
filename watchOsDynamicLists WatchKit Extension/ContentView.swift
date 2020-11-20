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
    @State var people: [Person] = [
        Person(name: "Chris", age: 5),
        Person(name: "Alfred", age: 7),
        Person(name: "Bruce", age: 9),
        Person(name: "Wayne", age: 36)
    ]
    
    //variable that is selected person optional of struct
    @State var selectedPerson: String?
    
    var body: some View {
        //actual list of people
        List {
            ForEach(people, id: \.id) { loopPerson in
                VStack(alignment: .leading) {
                    //logic for selected person just compare the string instead of creating actual equatable values
                    Button(action: {
                        if self.selectedPerson == loopPerson.id.uuidString {
                            self.selectedPerson = nil
                        } else {
                            self.selectedPerson = loopPerson.id.uuidString
                        }
                    }) {
                        Text(loopPerson.name)
                    }
                    //show age on select
                    if self.selectedPerson == loopPerson.id.uuidString {
                        Text("Age: \(loopPerson.age)")
                    }
                }.padding()
                //change color on select
                .listRowPlatterColor(selectedPerson == loopPerson.id.uuidString ? Color.init(white: 0.3) : Color.init(white: 0.1))
                .animation(.easeInOut(duration: 0.2))
            }
        }
    }
    //delete the list item func
    func delete(at offsets: IndexSet) {
        print(offsets)
        people.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
