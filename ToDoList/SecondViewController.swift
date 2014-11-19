//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Julia Taitz on 11/18/14.
//  Copyright (c) 2014 Julia Taitz. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var txtTask: UITextField!
    @IBOutlet var txtDesc: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonAddTask_Click(sender: UIButton){
        println("The Button was clicked.")
    }
    
    //Touch Functions
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    //UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true
    }

}

