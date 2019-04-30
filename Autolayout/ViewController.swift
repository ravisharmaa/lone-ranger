import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    }
    
    // MARK: Login Button Tapped
    
    @IBAction func tappedLogin(_ sender: UIButton) {
        
        guard let user = userName.text, !user.isEmpty else {
            
            presentUIAlert(message: "Username cannot be empty.")
            
            return
            
        }
        
        guard let password = password.text, !password.isEmpty else {
            
            presentUIAlert(message: "Password cannot be empty.")
            
            return
        }
        
        performSegue(withIdentifier: "segueForDashboard", sender: nil)
    
    }
    
    // MARK: Override For Segue
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let dashboardViewController = segue.destination as! DashboardViewController
        
        dashboardViewController.username = self.userName!.text
        
        dashboardViewController.password = self.password!.text
        
    }
    
    // MARK: UI Alert

    func presentUIAlert(message :String) -> Void {
        let alert = UIAlertController(title: "Error!", message: message, preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
        
        self.present(alert, animated: true)
    }

}

