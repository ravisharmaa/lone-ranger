

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    @IBAction func tappedLogin(_ sender: UIButton) {
        
        guard let user = userName.text, !user.isEmpty else {
            
            presentUIAlert(message: "Username cannot be empty.")
            return
            
        }
        
        guard let password = password.text, !password.isEmpty else {
            
            presentUIAlert(message: "Password cannot be empty.")
            return
        }
        
    }
    
    func presentUIAlert(message :String) {
        let alert = UIAlertController(title: "Error!", message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        
        self.present(alert, animated: true)
    }
    
}

