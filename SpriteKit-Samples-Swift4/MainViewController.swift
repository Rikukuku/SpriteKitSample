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
        self.selectNumber = 14
        self.performSegue(withIdentifier: "goObjects", sender: nil)
    }
    @IBAction func Action15(_ sender: Any) {
        self.selectNumber = 15
        self.performSegue(withIdentifier: "goObjects", sender: nil)
    }
    @IBAction func Action16(_ sender: Any) {
        self.selectNumber = 16
        self.performSegue(withIdentifier: "goObjects", sender: nil)
    }
    @IBAction func Action17(_ sender: Any) {
        self.selectNumber = 17
        self.performSegue(withIdentifier: "goObjects", sender: nil)
    }
    @IBAction func Action18(_ sender: Any) {
        self.selectNumber = 18
        self.performSegue(withIdentifier: "goObjects", sender: nil)
    }
    @IBAction func Action19(_ sender: Any) {
        self.selectNumber = 19
        self.performSegue(withIdentifier: "goObjects", sender: nil)
    }
    @IBAction func Action21(_ sender: Any) {
        self.selectNumber = 21
        self.performSegue(withIdentifier: "goObjects", sender: nil)
    }
    @IBAction func Action22(_ sender: Any) {
        self.selectNumber = 22
        self.performSegue(withIdentifier: "goObjects", sender: nil)
    }
    @IBAction func Action23(_ sender: Any) {
        self.selectNumber = 23
        self.performSegue(withIdentifier: "goObjects", sender: nil)
    }
    @IBAction func Action24(_ sender: Any) {
        self.selectNumber = 24
        self.performSegue(withIdentifier: "goObjects", sender: nil)
    }
    @IBAction func Action25(_ sender: Any) {
        self.selectNumber = 25
        self.performSegue(withIdentifier: "goObjects", sender: nil)
    }
    @IBAction func Action26(_ sender: Any) {
        self.selectNumber = 26
        self.performSegue(withIdentifier: "goObjects", sender: nil)
    }
    @IBAction func Action27(_ sender: Any) {
        self.selectNumber = 27
        self.performSegue(withIdentifier: "goObjects", sender: nil)
    }
    @IBAction func Action28(_ sender: Any) {
        self.selectNumber = 28
        self.performSegue(withIdentifier: "goObjects", sender: nil)
    }
    @IBAction func Action31(_ sender: Any) {
        self.selectNumber = 31
        self.performSegue(withIdentifier: "goObjects", sender: nil)
    }
    @IBAction func Action32(_ sender: Any) {
        self.selectNumber = 32
        self.performSegue(withIdentifier: "goObjects", sender: nil)
    }
    @IBAction func Action33(_ sender: Any) {
        self.selectNumber = 33
        self.performSegue(withIdentifier: "goObjects", sender: nil)
    }
    @IBAction func Action34(_ sender: Any) {
        self.selectNumber = 34
        self.performSegue(withIdentifier: "goObjects", sender: nil)
    }
    @IBAction func Action35(_ sender: Any) {
        self.selectNumber = 35
        self.performSegue(withIdentifier: "goObjects", sender: nil)
    }
    @IBAction func Action36(_ sender: Any) {
        self.selectNumber = 36
        self.performSegue(withIdentifier: "goObjects", sender: nil)
    }
    @IBAction func Action37(_ sender: Any) {
        self.selectNumber = 37
        self.performSegue(withIdentifier: "goObjects", sender: nil)
    }
    @IBAction func Action38(_ sender: Any) {
        self.selectNumber = 38
        self.performSegue(withIdentifier: "goObjects", sender: nil)
    }
    @IBAction func Action39(_ sender: Any) {
        self.selectNumber = 39
        self.performSegue(withIdentifier: "goObjects", sender: nil)
    }
    @IBAction func Action310(_ sender: Any) {
        self.selectNumber = 310
        self.performSegue(withIdentifier: "goObjects", sender: nil)
    }
    @IBAction func Action311(_ sender: Any) {
        self.selectNumber = 311
        self.performSegue(withIdentifier: "goObjects", sender: nil)
    }
    @IBAction func Action312(_ sender: Any) {
        self.selectNumber = 312
        self.performSegue(withIdentifier: "goObjects", sender: nil)
    }
    @IBAction func Action313(_ sender: Any) {
        self.selectNumber = 313
        self.performSegue(withIdentifier: "goObjects", sender: nil)
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
