//
//  Extensions.swift
//  CustomTabbarProgramatical
//
//  Created by Erkan Kızgın on 17.11.2022.
//

import Foundation
import UIKit

extension UIViewController{
    func configureGradientLayer(){
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.systemRed.cgColor, UIColor.systemBlue.cgColor]
        gradientLayer.locations = [0.0,1.0]
        view.layer.insertSublayer(gradientLayer, at: 0)
        gradientLayer.frame = view.frame
    }
}

extension UIButton{
    func attributedTitle(firstPart: String, secondPart: String){
        let atts: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor(white: 1, alpha: 0.87), .font: UIFont.systemFont(ofSize: 14)]
        let attributedTitle = NSMutableAttributedString(string: "\(firstPart) ", attributes: atts)
        let boldAtts: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor(white: 1, alpha: 0.87), .font: UIFont.systemFont(ofSize: 14)]
        attributedTitle.append(NSAttributedString(string: "\(secondPart) ", attributes: boldAtts))
        
        setAttributedTitle(attributedTitle, for: .normal)
    }
}

extension UIView {    
    func anchor(    top: NSLayoutYAxisAnchor? = nil,
                  bottom: NSLayoutYAxisAnchor? = nil,
                  left: NSLayoutXAxisAnchor? = nil,
                  right: NSLayoutXAxisAnchor? = nil,
                  paddingTop: CGFloat = 0,
                  paddingBottom: CGFloat = 0,
                  paddingLeft: CGFloat = 0,
                  paddingRight: CGFloat = 0,
                  width: CGFloat? = nil,
                  height: CGFloat? = nil){
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
        }
        
        if let right = right {
            rightAnchor.constraint(equalTo: right, constant: paddingRight).isActive = true
        }
        
        if let left = left {
            leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        
        if let width = width {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if let height = height {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
    
    func center(inview view: UIView, yConstant: CGFloat = 0){
        translatesAutoresizingMaskIntoConstraints = false
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: yConstant).isActive = true
    }
    
    func centerX(inView view: UIView, topAnchor: NSLayoutYAxisAnchor?, paddingTop: CGFloat = 0 ) {
        
        translatesAutoresizingMaskIntoConstraints = false
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        if let topAnchor = topAnchor {
            centerYAnchor.constraint(equalTo: topAnchor, constant: paddingTop).isActive = true
        }
    }
    
    func centerY(inView view: UIView, leftAnchor: NSLayoutXAxisAnchor?, paddingLeft: CGFloat = 0, constant: CGFloat = 0) {
        translatesAutoresizingMaskIntoConstraints = false
        centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: constant).isActive = true
        
        if let leftAnchor = leftAnchor {
            anchor(left: leftAnchor, paddingLeft: paddingLeft)
        }
    }
    
    func setDimensions(height: CGFloat, width: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: height).isActive = true
        widthAnchor.constraint(equalToConstant: width).isActive = true
    }
    
    func setHeight(_ height: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: height).isActive = true
    }
    
    func setWidth(_ width: CGFloat) {
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalToConstant: width).isActive = true
    }
    
    func fillSuperview() {
        translatesAutoresizingMaskIntoConstraints = false
        guard let view = superview else { return }
        anchor(top: view.topAnchor, bottom: view.bottomAnchor, left: view.leftAnchor,
                right: view.rightAnchor)
    }
}
