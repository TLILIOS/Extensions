//
//  ViewController.swift
//  Extensions
//
//  Created by HTLILI on 28/05/2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textUserName: UITextField!
    @IBOutlet weak var btnSubmit: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnSubmit.setTitle("Submit".localized(), for: .normal)
        btnSubmit.setTitleColor(UIColor.mainColor, for: .normal)
    }
    @IBAction func submitPressed(_ sender: UIButton) {
        let userName: String = textUserName.text!
        print("UserName: \(userName.trim())")
    }
    

}

extension String {
    func trim() -> String  {
       return self.replacingOccurrences(of: " ", with: "_")
    }
    func localized() -> String {
        return NSLocalizedString(self, comment: "")
    }
}
extension UIColor {
   static var mainColor: UIColor {
        return UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    }
   static func primaryColor() -> UIColor {
        return UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    }
}
extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}
