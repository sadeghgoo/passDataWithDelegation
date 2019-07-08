//
//  SecondViewController.swift
//  PassDataWithDelegation
//
//  Created by sadegh on 7/8/19.
//  Copyright © 2019 sadegh. All rights reserved.
//

import UIKit

protocol PassTxtFieldData {
    func pass(str:String)
}
class SecondViewController: UIViewController{
    

    
    @IBOutlet weak var textfield: UITextField!
    var delegate:PassTxtFieldData?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func passD(_ sender: Any) {
        
        delegate?.pass(str: textfield.text ?? "" )
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
   
}
