//
//  SVGImageView.swift
//  Colors
//
//  Created by Арам on 30.09.2021.
//

import SwiftUI
import Macaw

private var pathArray = [String]()

struct SVGImageView: UIViewRepresentable {
    let svgName: String
    let size: CGSize
    
    func makeUIView(context: Context) -> SVGView {
        let node = try! SVGParser.parse(resource: svgName)
        let svgView = SVGView(node: node, frame: CGRect(origin: CGPoint.zero, size: size))
        svgView.backgroundColor = UIColor.white
        svgView.contentMode = .scaleAspectFit
        svgView.layer.borderWidth = 1.0
        svgView.layer.borderColor = UIColor.black.cgColor
        svgView.zoom.enable()
        
        return svgView
    }
    
    func updateUIView(_ uiView: SVGView, context: Context) {
        uiView.registerForSelection()
    }
    
}

struct MacawSVGView: View {
    var body: some View {
        GeometryReader { (geometry: GeometryProxy) in
            SVGImageView(svgName: "russiaLow", size: geometry.size)
                .frame(width: geometry.size.width, height: geometry.size.height)
                .border(Color.red)
        }
    }
}
