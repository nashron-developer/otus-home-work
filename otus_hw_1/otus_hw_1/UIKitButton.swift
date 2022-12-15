//
//  UIKitButton.swift
//  otus_hw_1
//
//  Created by Aleksey Nikolaenko on 14.12.2022.
//

import SwiftUI

extension UIImage {
    static func from(color: UIColor, size: CGSize = CGSize(width: 1, height: 1)) -> UIImage {
        let format = UIGraphicsImageRendererFormat()
        format.scale = 1
        return UIGraphicsImageRenderer(size: size, format: format).image { context in
            color.setFill()
            context.fill(CGRect(origin: .zero, size: size))
        }
    }
}

struct UIKitButton: UIViewRepresentable {
   
    class Object: NSObject {
        
        var handler: (() -> ())?
        
        @objc func action() {
            handler?()
        }
        
    }
    
    @State var title: String
    @State var handler: (() -> ())?
    
    private let object = Object()
    
    func makeUIView(context: Context) -> UIButton {
        let view = UIButton()
        view.setTitleColor(.white, for: .normal)
        view.setAttributedTitle(getAttributedString(with: title), for: .normal)
        view.setBackgroundImage(UIImage.from(color: .systemOrange), for: .normal)
        view.layer.cornerRadius = 12
        view.clipsToBounds = true
        view.addTarget(object, action: #selector(object.action), for: .touchUpInside)
        object.handler = handler
        return view
    }
    
    func updateUIView(_ uiView: UIButton, context: Context) {
        uiView.setAttributedTitle(getAttributedString(with: title), for: .normal)
        object.handler = handler
    }
    
    private func getAttributedString(with string: String) -> NSAttributedString {
        NSAttributedString(
            string: string,
            attributes: [.font: UIFont.systemFont(ofSize: 20, weight: .medium)]
        )
    }
}

struct UIKitButton_Previews: PreviewProvider {
    static var previews: some View {
        UIKitButton(title: "UIKit Button")
            .frame(width: 250, height: 50)
    }
}
