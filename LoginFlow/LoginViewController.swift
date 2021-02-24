//
//  LoginViewController.swift
//  LoginFlow
//
//  Created by MyeongJin on 2021/02/24.
//

import UIKit

class LoginViewController: UIViewController {

    // MARK: - Properties
    @IBOutlet weak var emailField:UITextField!
    @IBOutlet weak var passwordField:UITextField!
    @IBOutlet weak var LoginButton: UIButton!
    
    // MARK: - Methods
    // MARK: IBActions
    @IBAction func touchUpLoginButton(_ sender: UIButton) {
        
        guard let email: String = self.emailField.text, email.isEmpty == false else {
            self.showAlet(message: "이메일을 입력 해주세요.", control: self.emailField)
            return
        }
        
        guard let password: String = self.passwordField.text,
              password.isEmpty == false else {
            self.showAlet(message: "패스워드를 입력 해주세요", control: self.passwordField)
            return
        }
        
        self.performSegue(withIdentifier: "ShowInfo", sender: sender)
        
    }
    
    @IBAction func emailValueChanged(_ sender: UITextField) {
        guard emailField.text?.isEmpty == false, let passwordCount = self.passwordField.text?.count, passwordCount >= 8 else {
            LoginButton.isEnabled = false
            return
        }
        LoginButton.isEnabled = true
    }
    @IBAction func passwordValueChanged(_ sender: UITextField) {
        
        guard let passwordCount = sender.text?.count,emailField.text?.isEmpty == false, passwordCount >= 8 else {
            LoginButton.isEnabled = false
            return
        }
        LoginButton.isEnabled = true
    }
    // MARK?: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationItem.title = "로그인"
        
        print("View of LoginViewController Insctance did load on memory")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        
        print("View of LoginViewController Instance will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("View of LoginViewController Instance did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("View of LoginViewController Instance will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("View of LoginViewController Instance did disappear")
    }
    
    // MARK: Privates
    private func showAlet(message: String, control toBeFirstResponder: UIControl? ) {
        
        let alert: UIAlertController = UIAlertController(title: "알림", message: message, preferredStyle: .alert)
        
        let okAction: UIAlertAction = UIAlertAction(title: "입력하기",
                                                    style: UIAlertAction.Style.default) { [weak toBeFirstResponder] (action: UIAlertAction) in
            toBeFirstResponder?.becomeFirstResponder()

        }
        
        let cancelAction: UIAlertAction = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        
        self.present(alert, animated:  true) {
            print("얼럿 화면에 보여짐")
        }
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        guard let email: String = self.emailField.text, let password: String = self.passwordField.text else {
            return
        }
        
        guard let id: String = segue.identifier else { return }
        
        guard  let infoViewController = segue.destination as? InfoViewController else {
            return
        }
        
        infoViewController.loginInfo = LoginInfo(email: email, password: password)
    }
    

}
