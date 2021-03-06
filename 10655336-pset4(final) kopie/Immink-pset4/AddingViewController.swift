//
//  AddingViewController.swift
//  Immink-pset4
//
//  Created by Emma Immink on 13-05-16.
//  Copyright © 2016 Emma Immink. All rights reserved.
//

import UIKit
import SQLite

class AddingViewController: UIViewController {
    
    // make addingfield
    @IBOutlet weak var addingField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // if buttons is clicked add to database
    @IBAction func AddToDatabase(sender: AnyObject) {
        print("Button clicked")
        if (TodoManager.sharedInstance.todolist.contains(addingField.text!)) {
            print("this list already exists")
        }
        else{
            TodoManager.sharedInstance.SaveToDatabase(addingField.text!)
            addingField.text = ""
            TodoManager.sharedInstance.ReadTable()
        }
        print(TodoManager.sharedInstance.todolist)
        print(TodoManager.sharedInstance.todolist.count)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
