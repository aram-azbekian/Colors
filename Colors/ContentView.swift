//
//  ContentView.swift
//  Colors
//
//  Created by Арам on 20.09.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentScale: CGFloat = 0.0
    @State var finalScale: CGFloat = 1.0
    @State var offset: CGSize = .zero
    @State var position: CGSize = .zero
    
    var body: some View {
        MacawSVGView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
