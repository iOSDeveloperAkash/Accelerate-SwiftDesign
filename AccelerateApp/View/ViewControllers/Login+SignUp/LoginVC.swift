//
//  LoginViewController.swift
//  AccelerateApp
//
//  Created by Akash on 01/05/20.
//  Copyright © 2020 Akash. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.register(UINib(nibName: String(describing: SignUpLogoAnimationCell.self), bundle: nil), forCellReuseIdentifier: String(describing: SignUpLogoAnimationCell.self))
        tableView.register(UINib(nibName: String(describing: TextFieldCell.self), bundle: nil), forCellReuseIdentifier: String(describing: TextFieldCell.self))
        tableView.register(UINib(nibName: String(describing:CommonSubmitButton.self), bundle: nil), forCellReuseIdentifier: String(describing: CommonSubmitButton.self))
    }
    
    
}

extension LoginViewController:UITableViewDelegate,UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
            let firstCell = tableView.dequeueReusableCell(withIdentifier: String(describing: SignUpLogoAnimationCell.self), for: indexPath)
            return firstCell
        }else if indexPath.row == 1{
            let textfieldCell = tableView.dequeueReusableCell(withIdentifier: String(describing: TextFieldCell.self), for: indexPath) as! TextFieldCell
            textfieldCell.forgotPasswordBtn.isHidden = true
            textfieldCell.forgotPasswordBtnHeight.constant = 0
            return textfieldCell
        }else if indexPath.row == 2{
            let textfieldCell = tableView.dequeueReusableCell(withIdentifier: String(describing: TextFieldCell.self), for: indexPath) as! TextFieldCell
            textfieldCell.commonTextField.placeholder = "Password"
            textfieldCell.forgotPasswordBtnHeight.constant = 30
            textfieldCell.forgotPasswordBtn.isHidden = false
            return textfieldCell
        }else if indexPath.row == 3{
            let signIn = tableView.dequeueReusableCell(withIdentifier: String(describing: CommonSubmitButton.self), for: indexPath) as! CommonSubmitButton
            signIn.submitBtn.setTitle(String(describing: "Sign In"), for: .normal)
            signIn.submitBtn.tag = 0
            signIn.submitBtn.addTarget(self, action: #selector(navigationToController(sender:)), for: .touchUpInside)
            return signIn
        }else {
            let signUp = tableView.dequeueReusableCell(withIdentifier: String(describing: CommonSubmitButton.self), for: indexPath) as! CommonSubmitButton
            signUp.submitBtn.setTitle(String(describing: "Sign Up"), for: .normal)
            signUp.submitBtn.tag = 1
            signUp.submitBtn.addTarget(self, action: #selector(navigationToController(sender:)), for: .touchUpInside)
            return signUp
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 300
        }else if indexPath.row == 1{
            return 75
        }else if indexPath.row == 2 {
            return 100
        }else if indexPath.row == 3{
            return 85
        }else{
            return 85
        }
    }
    
    @objc func navigationToController(sender:UIButton){
        switch sender.tag {
        case 0:
           let storyboard = UIStoryboard(name: "Main", bundle: nil)
           if let walkthroughViewController = storyboard.instantiateViewController(withIdentifier: "CustomTabbar") as? CustomTabbar {
            walkthroughViewController.selectedIndex = 2
            self.navigationController?.pushViewController(walkthroughViewController, animated: true)
            }
                    
        case 1:
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            if let walkthroughViewController = storyboard.instantiateViewController(withIdentifier: "SignUpVC") as? SignUpVC {
                self.navigationController?.pushViewController(walkthroughViewController, animated: true)
            }
            
        default:
            print("not found")
        }
    }
}

