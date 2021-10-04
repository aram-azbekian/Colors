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
                if nodeShape.fill != Color.blue {
                    nodeShape.fill = Color.blue
                } else {
                    nodeShape.fill = Color.rgb(r: 204, g: 204, b: 204)
                }
            }
        }
    }
}
