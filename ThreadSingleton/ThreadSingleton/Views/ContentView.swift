//
//  ContentView.swift
//  ThreadSingleton
//
//  Created by Thongchai Subsaidee on 2/8/2564 BE.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var defaultDictVM = DefaultDictViewModel()
    
    var body: some View {
        Text("Hello, world!")
            .padding()
            .onAppear{
                defaultDictVM.setDict2()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
