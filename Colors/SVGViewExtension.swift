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
                if nodeShape.fill == Color.white {
                    nodeShape.fill = Color.blue
                } else {
                    nodeShape.fill = Color.white
                }
            }
        }
    }
}
