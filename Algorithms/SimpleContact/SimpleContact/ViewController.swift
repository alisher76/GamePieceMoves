//
//  ViewController.swift
//  SimpleContact
//
//  Created by Alisher Abdukarimov on 4/25/17.
//  Copyright © 2017 MrAliGorithm. All rights reserved.
//

import UIKit

class Person  {
    var name: String
    var age: Int
    var password: String
    
    init(name: String, age: Int, password: String) {
        self.name = name
        self.age = age
        self.password = password
    }
    
}


class ViewController: UIViewController {
    
    @IBOutlet weak var fullnameLabel: UILabel!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var ageTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    var person: Person? = nil
    
    @IBAction func validateAndStoreInfo() {
        if let name = nameTextField.text,
        let ageString = ageTextField.text,
        let age = Int(ageString),
        let password = passwordTextField.text,
        name.isEmpty == false,
        password.isEmpty == false {
        
            
            
        let newPerson = Person(name: name, age: age, password: password)
            print("person.name: \(newPerson.name)")
            print("person.age: \(newPerson.age)")
            print("person.person: \(newPerson.password)")
            person = newPerson
            fullnameLabel.text = newPerson.name
            self.view.reloadInputViews()
        }else{
        fullnameLabel.text = "Invalid Input"
        }
        
    }

}


extension ViewController : UITextFieldDelegate{
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        return (textField.text?.isEmpty ?? true) == false
    }
}





