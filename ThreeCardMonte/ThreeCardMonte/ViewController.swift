//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // outlets Buttons
    
    @IBOutlet weak var Card0: UIButton!
    
    @IBOutlet weak var Card1: UIButton!
    
    @IBOutlet weak var Card2: UIButton!
    
    var myCards:[UIImage] = []
    
    override func viewDidLoad() {
    super.viewDidLoad()
   
        myCards = []
  }


}


