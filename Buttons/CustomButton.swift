//
//  CustomButton.swift
//  Buttons
//
//  Created by Лаванда on 05.05.2023.
//

import UIKit

class CustomButtom: UIButton {
    
    init(title: String) {
        super.init(frame: .zero)
        self.configuration = .filled()
        self.configuration?.title = title
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        
        self.configuration?.image = UIImage(systemName: "arrow.right.circle.fill")
        self.configuration?.imagePlacement = .trailing
        self.configuration?.imagePadding = 8
        self.configuration?.contentInsets.top = 10
        self.configuration?.contentInsets.bottom = 10
        self.configuration?.contentInsets.trailing = 14
        self.configuration?.contentInsets.leading = 14
        self.addTarget(self, action: #selector(buttonPressed), for: [.touchDown, .touchDragInside] )
        self.addTarget(self, action: #selector(buttonReleased), for: [.touchUpInside, .touchUpOutside, .touchDragExit, .touchCancel])
    }
        @objc func buttonPressed() {
            UIView.animate(withDuration: 0.2, delay: 0, options: UIView.AnimationOptions.allowUserInteraction) {
                self.transform = CGAffineTransform(scaleX: 0.8, y: 0.8)
            }
        }

        @objc func buttonReleased() {
            UIView.animate(withDuration: 0.2, delay: 0, options: UIView.AnimationOptions.allowUserInteraction) {
                self.isEnabled = true
                self.transform = CGAffineTransform.identity
            }
        }
}
