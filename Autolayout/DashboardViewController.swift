//
//  DashboardViewController.swift
//  Autolayout
//
//  Created by Ravi Bastola on 4/26/19.
//  Copyright © 2019 Ravi Bastola. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController {

     var username :String?
    
     var password :String?
    
    @IBOutlet weak var dashboardTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dashboardTextField.text = "Hi, " + username!
    }

    @IBAction func dismissDashboard(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
