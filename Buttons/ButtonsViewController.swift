//
//  ButtonsViewController.swift
//  Buttons
//
//  Created by Лаванда on 05.05.2023.
//

import UIKit

class ButtonsViewController: UIViewController {
    
    private lazy var buttonOne = CustomButtom(title: "First Button")
    private lazy var buttonTwo = CustomButtom(title: "Second Medium Button")
    private lazy var buttonThree: CustomButtom = {
        let button = CustomButtom(title: "Third")
        button.addTarget(self, action: #selector(thitrButtonPresserd), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addViews()
        setConstrains()
    }

    private func addViews() {
        view.addSubview(buttonOne)
        view.addSubview(buttonTwo)
        view.addSubview(buttonThree)
    }

    private func setConstrains() {
        buttonOne.translatesAutoresizingMaskIntoConstraints = false
        buttonTwo.translatesAutoresizingMaskIntoConstraints = false
        buttonThree.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            buttonOne.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonOne.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            buttonTwo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonTwo.topAnchor.constraint(equalTo: buttonOne.bottomAnchor, constant: 20),
            buttonThree.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonThree.topAnchor.constraint(equalTo: buttonTwo.bottomAnchor, constant: 20)
        ])
    }
    
    @objc private func thitrButtonPresserd() {
        let thirdVC = ThirdViewController()
        present(thirdVC, animated: true)
    }
}

