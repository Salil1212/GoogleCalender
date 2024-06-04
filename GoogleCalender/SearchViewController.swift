import UIKit

class SearchViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var crossButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Additional setup if needed
        self.navigationItem.hidesBackButton = true
        // Set the delegate for the text field
                textField.delegate = self
                
                // Initially hide the cross button
                crossButton.isHidden = true
                
                // Add a target to the text field to detect changes
                textField.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)

    }
    @objc func textFieldDidChange(_ textField: UITextField) {
            // Show or hide the cross button based on the text field content
            crossButton.isHidden = textField.text?.isEmpty ?? true
        }
        
        @IBAction func crossButtonTapped(_ sender: UIButton) {
            // Clear the text field and hide the button
            textField.text = ""
            crossButton.isHidden = true
        }
    @IBAction func backBtn(_ sender: Any){
        navigationController?.popToRootViewController(animated: true)
    }
}
