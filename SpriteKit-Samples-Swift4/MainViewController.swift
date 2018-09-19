//
//  MainViewController.swift
//  SpriteKit-Samples-Swift4
//
//  Created by Nakahara Riku on 2018/09/19.
//  Copyright © 2018年 Nakahara Riku. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var selectNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Action11(_ sender: Any) {
        self.selectNumber = 11
        self.performSegue(withIdentifier: "goObjects", sender: nil)
    }
    @IBAction func Action12(_ sender: Any) {
        self.selectNumber = 12
        self.performSegue(withIdentifier: "goObjects", sender: nil)
    }
    @IBAction func Action13(_ sender: Any) {
        self.selectNumber = 13
        self.performSegue(withIdentifier: "goObjects", sender: nil)
    }
    @IBAction func Action14(_ sender: Any) {
    }
    @IBAction func Action15(_ sender: Any) {
    }
    @IBAction func Action16(_ sender: Any) {
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goObjects" {
            let SpriteKitObjectsViewController = segue.destination as! SpriteKitObjectsViewController
            SpriteKitObjectsViewController.selectNumber = self.selectNumber
        } else {
        print("fatal error")
        }
    }
    
    

}
