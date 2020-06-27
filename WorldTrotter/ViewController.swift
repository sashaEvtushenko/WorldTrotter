//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Sasha Evtushenko on 6/3/20.
//  Copyright © 2020 Sasha Evtushenko. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController {
    
    let gradientLayer = CAGradientLayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.blue.cgColor,
                                UIColor.red.cgColor]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    override func viewWillLayoutSubviews() {
        gradientLayer.frame = view.bounds
    }
}

