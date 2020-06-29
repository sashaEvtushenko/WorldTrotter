//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Sasha Evtushenko on 6/3/20.
//  Copyright © 2020 Sasha Evtushenko. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController {
    
    var fahrenheitTempLabel: UILabel!
    var secondLabel: UILabel!
    var thirdLabel: UILabel!
    var celsiusLabel: UILabel!
    var bottomLabel: UILabel!
    
    override func loadView() {
        super.loadView()
        // Setting up Fahrenheit label
        fahrenheitTempLabel = UILabel()
        fahrenheitTempLabel.text = "212"
        fahrenheitTempLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(fahrenheitTempLabel)
        fahrenheitTempLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        fahrenheitTempLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        // Setting up middle labels
        secondLabel = UILabel()
        secondLabel.text = "degrees in Fahrenheit"
        secondLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(secondLabel)
        secondLabel.topAnchor.constraint(equalTo: fahrenheitTempLabel.safeAreaLayoutGuide.bottomAnchor, constant: 8).isActive = true
        secondLabel.safeAreaLayoutGuide.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        thirdLabel = UILabel()
        thirdLabel.text = "is really"
        thirdLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(thirdLabel)
        thirdLabel.safeAreaLayoutGuide.topAnchor.constraint(equalTo: secondLabel.safeAreaLayoutGuide.bottomAnchor, constant: 8).isActive = true
        thirdLabel.safeAreaLayoutGuide.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        // Setting up Celsius label
        celsiusLabel = UILabel()
        celsiusLabel.text = "100"
        celsiusLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(celsiusLabel)
        celsiusLabel.safeAreaLayoutGuide.topAnchor.constraint(equalTo: thirdLabel.safeAreaLayoutGuide.bottomAnchor, constant: 8).isActive = true
        celsiusLabel.safeAreaLayoutGuide.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
        
        // Setting up bottom label
        bottomLabel = UILabel()
        bottomLabel.text = "degrees Celsius"
        bottomLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bottomLabel)
        bottomLabel.safeAreaLayoutGuide.topAnchor.constraint(equalTo: celsiusLabel.safeAreaLayoutGuide.bottomAnchor, constant: 8).isActive = true
        bottomLabel.safeAreaLayoutGuide.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor).isActive = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("ConversionViewController loaded.")
    }

}

