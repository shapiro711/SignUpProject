//
//  SignUpViewController.swift
//  LoginProject
//
//  Created by Kim Do hyung on 2021/07/21.
//

import UIKit

class SignUpViewController: UIViewController {
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var idTextFiled: UITextField!
    @IBOutlet weak var passwordTextFiled: UITextField!
    @IBOutlet weak var checkPasswordTextFiled: UITextField!
    @IBOutlet weak var introduceTextView: UITextView!
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gestureRecognizer = UITapGestureRecognizer.init(target: self, action: #selector(tabprofileImageView(gestureRecognizer:)))
        self.profileImageView.addGestureRecognizer(gestureRecognizer)
        
        self.imagePicker.sourceType = .photoLibrary
        self.imagePicker.allowsEditing = true
        self.imagePicker.delegate = self
    }
    
    @objc func tabprofileImageView(gestureRecognizer: UIGestureRecognizer) {
        print("탭됨여")
    }
    
    @IBAction func touchUpCancelButton(_ sender: Any) {
    }
    
    @IBAction func touchUpNextButton(_ sender: Any) {
    }
}

extension SignUpViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        var newImage: UIImage? = nil // update 할 이미지
        
        if let possibleImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
            newImage = possibleImage // 수정된 이미지가 있을 경우
        } else if let possibleImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            newImage = possibleImage // 원본 이미지가 있을 경우
        }
        
        self.profileImageView.image = newImage // 받아온 이미지를 update
        picker.dismiss(animated: true, completion: nil) // picker를 닫아줌
    }
}
