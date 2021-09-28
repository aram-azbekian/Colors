//
//  PDFImage.swift
//  Colors
//
//  Created by Арам on 22.09.2021.
//

import PDFKit
import SwiftUI

struct PDFImageView: UIViewRepresentable {
    
    let image: UIImage
    
    init(name: String) {
        self.image = UIImage(imageLiteralResourceName: name)
    }
    
    func makeUIView(context _: UIViewRepresentableContext<PDFImageView>) -> PDFView {
        // Create a `PDFView` and set its `PDFDocument`.
        let pdfView = PDFView()
        pdfView.backgroundColor = UIColor.systemBackground
        
        if let pdfPage = PDFPage(image: image) {
            let pdfDoc = PDFDocument()
            pdfDoc.insert(pdfPage, at: 0)
            
            pdfView.autoScales = true
            pdfView.displayMode = .singlePageContinuous
            pdfView.displayDirection = .vertical
            
            pdfView.document = pdfDoc
        }
        return pdfView
    }
    
    func updateUIView(_ pdfView: UIViewType, context _: UIViewRepresentableContext<PDFImageView>) {
        if let pdfPage = PDFPage(image: image) {
            let pdfDoc = PDFDocument()
            pdfDoc.insert(pdfPage, at: 0)
            
            pdfView.autoScales = true
            pdfView.displayMode = .singlePageContinuous
            pdfView.displayDirection = .vertical
            
            pdfView.document = pdfDoc
        }
    }
}
