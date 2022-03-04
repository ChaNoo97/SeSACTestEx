//
//  ViewController.swift
//  SeSACTest
//
//  Created by Hoo's MacBookPro on 2022/02/28.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var firstTextField: UITextField!
	@IBOutlet weak var resultLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
	}
	
	func calculateTextFieldTextCount() -> Int {
		return firstTextField.text?.count ?? 0
	}
	@IBAction func firstButtonClicked(_ sender: Any) {
		resultLabel.text = firstTextField.text
	}

}

