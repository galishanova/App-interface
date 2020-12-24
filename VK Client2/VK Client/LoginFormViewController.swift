//
//  LoginFormViewController.swift
//  VK Client
//
//  Created by Regina Galishanova on 19.12.2020.
//

import UIKit

class LoginFormViewController: UIViewController {

    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(didTapOnScroll))
        scrollView?.addGestureRecognizer(tapGesture)
        scrollView.isUserInteractionEnabled = true
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let result = checkUserData()
        if !result {
            showErrorAlert()
        }
        return result
    }
    func checkUserData() -> Bool {
        return loginTextField.text! == "admin" && passwordTextField.text! == "123"
    }
        
    func showErrorAlert() {
        let alert = UIAlertController(title: "Error", message: "Incorrect login or password data", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @objc func keyboardWillShow(notification: Notification) {
        guard let kbSize = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
        let insets = UIEdgeInsets(top: 0, left: 0, bottom: kbSize.size.height, right: 0)
        scrollView.contentInset = insets
    }
    @objc func keyboardWillHide(notification: Notification) {
        let insets = UIEdgeInsets.zero
        scrollView.contentInset = insets
    }
    @objc func didTapOnScroll() {
        self.scrollView?.endEditing(true)
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
    }
    
}
