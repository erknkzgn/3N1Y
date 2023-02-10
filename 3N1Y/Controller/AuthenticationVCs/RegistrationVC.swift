//
//  RegistrationVC.swift
//  CustomTabbarProgramatical
//
//  Created by Erkan Kızgın on 3.02.2023.
//

import UIKit

class RegistrationVC: UIViewController {
    
    let image: UIImageView = {
        let img = UIImageView()
        img.image = .add
        return img
    }()
    let name: UITextField = CustomTextField(placeholder: "Name")
    let surname: UITextField = CustomTextField(placeholder: "Surname")
    let email: UITextField = CustomTextField(placeholder: "E-Mail")
    let username: UITextField = CustomTextField(placeholder: "Username")
    let password: UITextField = CustomTextField(placeholder: "Password")
    let btnRegister: UIButton = {
        let btn = UIButton()
        btn.setHeight(50)
        btn.backgroundColor = .blue
        btn.setTitle("Register", for: .normal)
        btn.titleLabel?.textColor = .white
        btn.layer.cornerRadius = 10
        return btn
    }()
    let alreadyHaveAccount: UIButton = {
        let btn = UIButton()
        btn.attributedTitle(firstPart: "Already have an  account?", secondPart: "Login.")
        return btn
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        configureUI()
    }
    
    func configureUI(){
        configureGradientLayer()
        
        let safeArea = view.safeAreaLayoutGuide
        let paddingTop = view.safeAreaLayoutGuide.layoutFrame.size.height / 6
        
        view.addSubview(image)
        image.anchor(top: safeArea.topAnchor, left: safeArea.leftAnchor, right: safeArea.rightAnchor, paddingTop: 20, paddingLeft: 50, paddingRight: -50,width: 50,height: 100)
        view.addSubview(name)
        name.anchor(top: safeArea.topAnchor, left: safeArea.leftAnchor, right: safeArea.rightAnchor, paddingTop: paddingTop, paddingLeft: 12, paddingRight: -12)
        view.addSubview(surname)
        surname.anchor(top: name.bottomAnchor, left: name.leftAnchor, right: name.rightAnchor, paddingTop: 10)
        view.addSubview(email)
        email.anchor(top: surname.bottomAnchor, left: surname.leftAnchor, right: surname.rightAnchor, paddingTop: 10)
        view.addSubview(username)
        username.anchor(top: email.bottomAnchor, left: email.leftAnchor, right: email.rightAnchor, paddingTop: 10)
        view.addSubview(password)
        password.anchor(top: username.bottomAnchor, left: username.leftAnchor, right: username.rightAnchor, paddingTop: 10)
        view.addSubview(btnRegister)
        btnRegister.anchor(top: password.bottomAnchor, left: password.leftAnchor, right: password.rightAnchor, paddingTop: 10)
        view.addSubview(alreadyHaveAccount)
        alreadyHaveAccount.anchor(bottom: safeArea.bottomAnchor, left: safeArea.leftAnchor, right: safeArea.rightAnchor, paddingBottom: -5, paddingLeft: 12, paddingRight: -12)
        alreadyHaveAccount.addTarget(self, action: #selector(handeAlreadyHaveAnAccount), for: .touchUpInside)
    }
    
    @objc func handeAlreadyHaveAnAccount(){
        navigationController?.popViewController(animated: true)
    }


}
