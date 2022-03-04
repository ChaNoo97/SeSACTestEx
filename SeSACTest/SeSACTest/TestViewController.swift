//
//  TestViewController.swift
//  SeSACTest
//
//  Created by Hoo's MacBookPro on 2022/03/02.
//

import UIKit

//id. @ 6자리 이상
//pw. 6자리 이상 10자리 미만
//check. pw와 같은지

class TestViewController: UIViewController {
	
	let validator = Validator()
	var user = User(email: "", password: "", check: "")

	@IBOutlet weak var idTextField: UITextField!
	@IBOutlet weak var passwordTextField: UITextField!
	@IBOutlet weak var checkTextField: UITextField!
	
	override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
	@IBAction func buttonClicked(_ sender: Any) {
		
		user = User(email: idTextField.text!, password: passwordTextField.text!, check: checkTextField.text!)
		
		if validator.isValidId(id: user.email) && validator.isValidPassword(password: user.password) && validator.isEqualPassword(password: user.password, check: user.check) {
			print("성공")
		} else {
			print("실패")
		}
		
	}
	
	
}
