//
//  SignUpVC.swift
//  AccelerateApp
//
//  Created by Akash on 02/05/20.
//  Copyright © 2020 Akash. All rights reserved.
//

import UIKit

class SignUpVC: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        tableView.register(UINib(nibName: String(describing: SignUpLogoAnimationCell.self), bundle: nil), forCellReuseIdentifier: String(describing: SignUpLogoAnimationCell.self))
        tableView.register(UINib(nibName: String(describing: TextFieldCell.self), bundle: nil), forCellReuseIdentifier: String(describing: TextFieldCell.self))
        tableView.register(UINib(nibName: String(describing:CommonSubmitButton.self), bundle: nil), forCellReuseIdentifier: String(describing: CommonSubmitButton.self))
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    
    @IBAction func backButton(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}

extension SignUpVC:UITableViewDelegate,UITableViewDataSource{
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
            textfieldCell.forgotPasswordBtnHeight.constant = 0
            textfieldCell.forgotPasswordBtn.isHidden = true
            return textfieldCell
        }else if indexPath.row == 3{
            let textfieldCell = tableView.dequeueReusableCell(withIdentifier: String(describing: TextFieldCell.self), for: indexPath) as! TextFieldCell
            textfieldCell.commonTextField.placeholder = "Re-enter Password"
            textfieldCell.forgotPasswordBtnHeight.constant = 0
            textfieldCell.forgotPasswordBtn.isHidden = true
            return textfieldCell
        }
        else{
            let signUp = tableView.dequeueReusableCell(withIdentifier: String(describing: CommonSubmitButton.self), for: indexPath) as! CommonSubmitButton
            signUp.submitBtn.setTitle(String(describing: "Sign Up"), for: .normal)
            return signUp
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0{
            return 300
        }else if indexPath.row == 1{
            return 65
        }else if indexPath.row == 2 {
            return 65
        }else if indexPath.row == 3{
            return 65
        }else{
            return 85
        }
    }
}
