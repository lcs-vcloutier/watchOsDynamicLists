//
//  ContentView.swift
//  watchOsDynamicLists WatchKit Extension
//
//  Created by Cloutier, Vincent on 2020-11-20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
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
