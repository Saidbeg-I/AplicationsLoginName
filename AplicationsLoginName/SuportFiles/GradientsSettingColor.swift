//
//  GradientsSettingColor.swift
//  AplicationsLoginName
//
//  Created by 1 on 13.02.2023.
//

import Foundation
import UIKit

class GradientView:  UIView {
    
    private let gradientLayer = CAGradientLayer()
    
    @IBInspectable private var startColor: UIColor? {
        didSet {
            setUpGradientColors()
        }
    }
    
    @IBInspectable private var endColor: UIColor? {
        didSet {
            setUpGradientColors()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUpGradient()
    }
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
    }
    //MARK: - Privat func setting UIColor
    private func setUpGradient() {
        self.layer.addSublayer(gradientLayer)
        setUpGradientColors()
    }
    private func setUpGradientColors(){
        if let startColor = startColor , let endColor = endColor {
        gradientLayer.colors = [startColor.cgColor, endColor.cgColor]
        }
    }
}

