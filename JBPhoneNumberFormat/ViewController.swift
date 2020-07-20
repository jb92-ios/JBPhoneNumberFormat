//
//  ViewController.swift
//  JBPhoneNumberFormat
//
//  Created by Jeongbae Kong on 2020/07/17.
//  Copyright © 2020 Jeongbae Kong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  @IBOutlet weak var textField: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    //    textField.text = "01012341234".toPhoneNumber()
    
    textField.delegate = self
    
  }
}

extension ViewController {
  
  @objc func textFieldEditChange(_ textField: UITextField) {
    
    
  }
}

extension ViewController: UITextFieldDelegate {
  
  func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
    
    let allowedCharacters = CharacterSet.alphanumerics
    let characterSet = CharacterSet(charactersIn: string)
    return allowedCharacters.isSuperset(of: characterSet)
    
  }
}
