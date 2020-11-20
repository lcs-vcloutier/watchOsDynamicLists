//
//  ContentView.swift
//  watchOsDynamicLists WatchKit Extension
//
//  Created by Cloutier, Vincent on 2020-11-20.
//

import SwiftUI
struct person {
    <#fields#>
}
struct ContentView: View {
    //variable that is selected person
   // @State var selectedPerson
    var body: some View {
        //actual list
        List {
            ForEach(0..<5) { _ in
                Text("aaa")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
