//
// ViewController.swift
// Spring by LendingTree
// 
// Created by Chevireddy, Sraavan on 08/02/24
// Copyright  LendingTree, USA © All rights reserved 
// 

import UIKit

class ViewController: UIViewController {

    var vc: UIViewController = ViewControllerTwo()
    var vc2: UIViewController = ViewControllerThree()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func btn(_ sender: Any) {
        self.navigationController?.setViewControllers([self, vc], animated: false)
        self.navigationController?.pushViewController(vc2, animated: true)
    }
}


class ViewControllerTwo: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Two"
        view.backgroundColor = .red
        
        let button = UIButton(type: .system)
        button.setTitle("Hello!", for: .normal)
        button.frame = CGRect(origin: view.center, size: CGSize(width: 100, height: 100))
        button.addTarget(self, action: #selector(push), for: .touchUpInside)
        
        view.addSubview(button)
    }
    
    @objc private func push() {
        let vc2 = ViewControllerThree()
        self.navigationController?.pushViewController(vc2, animated: true)
    }
}

class ViewControllerThree: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Three"
        view.backgroundColor = .yellow
    }
    
}





