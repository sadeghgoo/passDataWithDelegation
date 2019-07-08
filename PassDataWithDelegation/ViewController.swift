//
//  ViewController.swift
//  PassDataWithDelegation
//
//  Created by sadegh on 7/8/19.
//  Copyright © 2019 sadegh. All rights reserved.
//

import UIKit


class ViewController: UIViewController,PassTxtFieldData {
    
    func pass(str: String) {
        labeel.text = str
    }

    @IBOutlet weak var labeel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func getType(_ sender: Any) {
        performSegue(withIdentifier: "second", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "second"{
            let secondVC = segue.destination as! SecondViewController
            secondVC.delegate = self
            print("delegate is selfed")
            
        }
    }
    
   
}

