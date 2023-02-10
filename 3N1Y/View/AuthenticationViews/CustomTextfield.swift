//
//  CustomView.swift
//  CustomTabbarProgramatical
//
//  Created by Erkan Kızgın on 31.01.2023.
//

import UIKit

class CustomTextField: UITextField {

    init(placeholder: String) {
        super.init(frame: .zero)
        let spacer = UIView()
        spacer.setDimensions(height: 50, width: 12)
        leftView = spacer
        leftViewMode = .always
        setHeight(50)
        borderStyle = .none
        textColor = .white
        layer.cornerRadius = 1
        backgroundColor = .purple.withAlphaComponent(0.5)
        attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [.foregroundColor: UIColor(white: 1, alpha: 0.7)])
        layer.cornerRadius = 10
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
