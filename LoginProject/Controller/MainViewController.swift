//
//  MainViewController.swift
//  LoginProject
//
//  Created by Kim Do hyung on 2021/07/21.
//

import UIKit

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func touchUpSignUpButton(_ sender: UIButton) {
        let signUpStoryBoard = UIStoryboard.init(name: "SignUp", bundle: nil)
        let signUpViewController = signUpStoryBoard.instantiateViewController(withIdentifier: "SignUpViewController")
        signUpViewController.modalPresentationStyle = .fullScreen
        self.present(signUpViewController, animated: true, completion: nil)
    }
}
