//
//  InfoViewController.swift
//  LoginFlow
//
//  Created by MyeongJin on 2021/02/24.
//

import UIKit

class InfoViewController: UIViewController {

    // MARK: - Properties
    var loginInfo: LoginInfo?

    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    // MARK: - Method
    override func viewDidLoad() {
        super.viewDidLoad()

        print("InfoViewController 객체의 뷰가 메모리에 로드됨")
        // Do any additional setup after loading the view.
        
        self.navigationItem.title = "로그인 정보"
        self.emailLabel.text = "Email : \(self.loginInfo!.email)"
        self.passwordLabel.text = "Password : \(self.loginInfo!.password)"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        print("infoViewController 객체의 뷰가 나타날 예정")
        
        self.navigationController?.setNavigationBarHidden(false, animated: true)
        
        guard let info = self.loginInfo else {
            return
        }
        
        print(info)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("InfoViewController Instance did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("InfoViewController Instance will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        print("InfoViewController Instance did disappear")
    }
}
