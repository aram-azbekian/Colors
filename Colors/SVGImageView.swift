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
    init(_ name: String) {
        self.svgName = name
    }
    
    func makeUIView(context: Context) -> SVGView {
        let node = try! SVGParser.parse(resource: svgName)
        let svgView = SVGView(node: node, frame: CGRect(origin: CGPoint.zero, size: UIScreen.main.bounds.size))
        svgView.backgroundColor = UIColor.white
        svgView.contentMode = .scaleAspectFit
        svgView.layer.borderWidth = 1.0
        svgView.layer.borderColor = UIColor.white.cgColor
        svgView.zoom.enable()
        
        return svgView
    }
    
    func updateUIView(_ uiView: SVGView, context: Context) {
        uiView.registerForSelection()
    }
    
}
