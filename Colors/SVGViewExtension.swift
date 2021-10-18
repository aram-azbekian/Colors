//
//  SVGViewExtension.swift
//  Colors
//
//  Created by Арам on 01.10.2021.
//

import UIKit
import Macaw

extension SVGView {
    func registerForSelection() {
        self.node.nodesBy(predicate: { $0.visible && !$0.tag.isEmpty  }).forEach { node in
            node.onTap { event in
                let nodeShape = node as! Shape
                let fillColor = nodeShape.fill != Color.blue ? Color.blue : Color.rgb(r: 204, g: 204, b: 204)
                nodeShape.fillVar.animate(to: fillColor, during: 0.3)
            }
        }
    }
}
