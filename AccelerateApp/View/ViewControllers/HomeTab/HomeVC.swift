//
//  HomeVC.swift
//  AccelerateApp
//
//  Created by Akash on 04/05/20.
//  Copyright © 2020 Akash. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var userImage: UIImageView!
    @IBOutlet weak var eventLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        eventLabel.transform = CGAffineTransform(rotationAngle: CGFloat(-(Double.pi / 2.0)))
        tableView.register(UINib(nibName: String(describing: HomeCell.self), bundle: nil), forCellReuseIdentifier: String(describing: HomeCell.self))
        userImage.layer.cornerRadius = userImage.frame.height / 2
        print("Upload test")
    }
}

extension HomeVC:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let homeCell = tableView.dequeueReusableCell(withIdentifier: String(describing: HomeCell.self), for: indexPath) as! HomeCell
        return homeCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
