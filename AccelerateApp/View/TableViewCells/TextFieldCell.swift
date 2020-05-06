//
//  TextFieldCell.swift
//  AccelerateApp
//
//  Created by Akash on 02/05/20.
//  Copyright © 2020 Akash. All rights reserved.
//

import UIKit

class TextFieldCell: UITableViewCell {
    @IBOutlet weak var commonTextField: UITextField!
    @IBOutlet weak var forgotPasswordBtn: UIButton!
    @IBOutlet weak var forgotPasswordBtnHeight: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        commonTextField.setLeftPaddingPoints(18)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
