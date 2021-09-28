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
            Image("witch123")
                .resizable()
                .scaledToFit()
                .frame(width: UIScreen.main.bounds.width)
                .offset(x: offset.width + position.width, y: offset.height + position.height)
                .scaleEffect(finalScale + currentScale)
                .gesture(
                    MagnificationGesture()
                        .onChanged { gesture in
                            currentScale = gesture - 1
                        }
                        .onEnded { gesture in
                            finalScale += currentScale
                            currentScale = 0.0
                        }
                )
                .simultaneousGesture(
                    DragGesture()
                        .onChanged { gesture in
                            offset.width = gesture.translation.width / finalScale
                            offset.height = gesture.translation.height / finalScale
                        }
                        .onEnded { gesture in
                            position.width += gesture.translation.width / finalScale
                            position.height += gesture.translation.height / finalScale
                            offset = .zero
                        }
                )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
