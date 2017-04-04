//
//  ViewController.swift
//  CoreSwiftLib
//
//  Created by ekachai limpisoot on 3/29/17.
//  Copyright © 2017 ekachai limpisoot. All rights reserved.
//

import UIKit
import CoreSwiftLib
class ViewController: UIViewController {
    
    let testSwift:TestSwift = TestSwift()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        testSwift.ttt()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

