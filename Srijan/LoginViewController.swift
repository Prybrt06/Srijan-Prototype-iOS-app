import UIKit
import FirebaseAuth

class LoginViewController: UIViewController
{
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var warningLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        warningLabel.text = ""
    }
    
    
}

//MARK: - UITextFieldDelegate

extension LoginViewController: UITextFieldDelegate
{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if let email = emailTextField.text, let password = passwordTextField.text
        {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error
                {
                    self.warningLabel.text = e.localizedDescription
                    self.warningLabel.textColor = UIColor.red
                }
                
                else
                {
                    self.warningLabel.text = ""
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
            }
        }
        
        emailTextField.endEditing(true)
        passwordTextField.endEditing(true)
        
        return true
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        
        if let email = emailTextField.text, let password = passwordTextField.text
        {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error
                {
                    self.warningLabel.text = e.localizedDescription
                    self.warningLabel.textColor = UIColor.red
                }
                
                else
                {
                    self.warningLabel.text = ""
                    self.performSegue(withIdentifier: K.loginSegue, sender: self)
                }
            }
        }
        
        emailTextField.endEditing(true)
        passwordTextField.endEditing(true)
    }
    
}
