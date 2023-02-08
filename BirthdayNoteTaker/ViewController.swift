//
//  ViewController.swift
//  BirthdayNoteTaker
//
//  Created by Mertcan Ünek on 8.02.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthdayTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthdayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        // We're attempting to retrieve the user default information that was saved when the application was launched.
        
        let storedName = UserDefaults.standard.object(forKey: "name")
        let storedBirthday = UserDefaults.standard.object(forKey: "birthday")
        
        
        // Casting - as? vs as!
        if let newName = storedName as? String {
            
            nameLabel.text = newName
        }
        
        if let newBirthday = storedBirthday as? String{
            
            birthdayLabel.text = newBirthday
        }
        
    }


    @IBAction func saveClicked(_ sender: Any) {
        
        
        // save data
        UserDefaults.standard.set(nameTextField.text!, forKey: "name")
        UserDefaults.standard.set(birthdayTextField.text!, forKey: "birthday")
        
        
        
        nameLabel.text = "Name: \(nameTextField.text!)"
        birthdayLabel.text = "Birthday: \(birthdayTextField.text!)"
        
        
    }
}

