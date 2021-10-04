//
//  SVGViewExtension.swift
//  Colors
//
//  Created by Арам on 01.10.2021.
//

import UIKit
import Macaw

extension SVGView {
//    func registerForSelection(nodeTag : String) {
//        self.node.nodeBy(tag: nodeTag)?.onTap { (touch) in
//            let nodeShape = self.node.nodeBy(tag: nodeTag) as! Shape
//            nodeShape.fill = Color.blue
//        }
//    }
    
    func registerForSelection() {
        self.node.nodesBy(predicate: { $0.visible && !$0.tag.isEmpty  }).forEach { node in
            node.onTap { event in
                let nodeShape = node as! Shape
                nodeShape.fill = Color.blue
            }
        }
    }
}
