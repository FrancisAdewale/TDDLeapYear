//
//  ViewController.swift
//  TDDLeapYear
//
//  Created by Francis Adewale on 03/05/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var userInput = Int()
    
        let setUpUserInput : UITextField = {
        
        let input = UITextField()
        input.translatesAutoresizingMaskIntoConstraints = false
        input.clipsToBounds = true
        input.layer.cornerRadius = 5.0
        input.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        input.layer.borderWidth = 3.0
        input.backgroundColor = .white
//        input.addTarget(self, action: #selector(submittedLeapYear), for: .touchUpInside)
        
        return input
        
        
    }()
    
     let setUpButton: UIButton = {
        
        let btn = UIButton()
        btn.clipsToBounds = true
        btn.layer.cornerRadius = 5.0
        btn.setTitle("Check", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.addTarget(self, action: #selector(submittedLeapYear), for: .touchUpInside)

        return btn
        
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
        view.addSubview(setUpUserInput)
        view.addSubview(setUpButton)
        setUpUserInput.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30).isActive = true
        setUpUserInput.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30).isActive = true
        setUpUserInput.heightAnchor.constraint(equalToConstant: 30).isActive = true
        setUpUserInput.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        setUpButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        setUpButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        setUpButton.heightAnchor.constraint(equalToConstant: 25).isActive = true
        setUpButton.centerYAnchor.constraint(equalTo: setUpUserInput.bottomAnchor, constant: 30).isActive = true
    }
    
    
    @objc func submittedLeapYear() {
        
        userInput = Int(setUpUserInput.text!)!
        
        
    }

}

