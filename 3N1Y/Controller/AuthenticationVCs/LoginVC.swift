//
//  LoginVC.swift
//  CustomTabbarProgramatical
//
//  Created by Erkan Kızgın on 31.01.2023.
//

import UIKit

class LoginVC: UIViewController {
    
    var userNameTf: UITextField = CustomTextField(placeholder: "Username")
    var passwordTf = CustomTextField(placeholder: "Password")
    let loginBtn: UIButton = {
        var button = UIButton()
        button.setHeight(50)
        button.backgroundColor = .blue.withAlphaComponent(0.7)
        button.setTitle("Log In", for: .normal)
        button.titleLabel?.textColor = .white
        button.layer.cornerRadius = 10
       return button
    }()
    
    let lblTitle : UILabel = {
       let lbl = UILabel()
        lbl.textAlignment = .center
        lbl.text = "3N"
        lbl.textColor = .white
        lbl.setHeight(50)
        lbl.font = lbl.font.withSize(40)
        return lbl
    }()
    
    let btnRegister : UIButton = {
        let btn = UIButton()
        btn.attributedTitle(firstPart: "Don't have an account?", secondPart: "Sign Up")
        return btn
        
    }()
    let btnContinue : UIButton = {
        let btn = UIButton()
        btn.attributedTitle(firstPart: "Continue Without Register", secondPart: "")
        return btn
        
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        configure()
    }
    
   
    
    func configure(){
        configureGradientLayer()
        
        let paddingTop = view.safeAreaLayoutGuide.layoutFrame.size.height / 4
        let topAnchor = view.safeAreaLayoutGuide.topAnchor
        let rightAnchor = view.safeAreaLayoutGuide.rightAnchor
        let leftAnchor = view.safeAreaLayoutGuide.leftAnchor
        
        view.addSubview(lblTitle)
        
        lblTitle.anchor(top: topAnchor, left: leftAnchor, right: rightAnchor, paddingTop: 50)
        
        view.addSubview(userNameTf)
        userNameTf.anchor(top: topAnchor,  left: leftAnchor, right: rightAnchor, paddingTop: paddingTop, paddingLeft: 12, paddingRight: -12)
        view.addSubview(passwordTf)
        passwordTf.anchor(top: userNameTf.bottomAnchor, left: userNameTf.leftAnchor, right: userNameTf.rightAnchor, paddingTop: 20)
        view.addSubview(loginBtn)
        loginBtn.anchor(top: passwordTf.bottomAnchor,  left: passwordTf.leftAnchor, right: passwordTf.rightAnchor, paddingTop: 20)
        view.addSubview(btnContinue)
        btnContinue.anchor(top: loginBtn.bottomAnchor, left: loginBtn.leftAnchor, right: loginBtn.rightAnchor, paddingTop: 20)
        view.addSubview(btnRegister)
        btnRegister.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor, left: leftAnchor, right: rightAnchor, paddingBottom: -5, paddingLeft: 12, paddingRight: -12)
        btnContinue.addTarget(self, action: #selector(handleContinue), for: .touchUpInside)
        btnRegister.addTarget(self, action: #selector(handleRegister), for: .touchUpInside)
        
    }
    
    @objc func handleContinue(){
        navigationController?.pushViewController(CustomTabBarController(), animated: true)
    }
    
    @objc func handleRegister(){
        navigationController?.pushViewController(RegistrationVC(), animated: false)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
