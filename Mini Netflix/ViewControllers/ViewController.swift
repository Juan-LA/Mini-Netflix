//
//  ViewController.swift
//  Mini Netflix
//
//  Created by Juan Liut on 11/02/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mailTF: UITextField!
    
    @IBOutlet weak var pwTF: UITextField!
    
    @IBOutlet weak var logInBtn: UIButton!
    
    @IBOutlet weak var signUpBtn: UIButton!
    
    var user : User = User(name: "", mail: "", pw: "", films: [])
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .black
        
    }
    
    
    func alert(title: String, message: String){
        let alert = UIAlertController (title: title, message: message
                                        , preferredStyle: .actionSheet)
        let action = UIAlertAction (title: "OK", style: .default)
        alert.addAction (action)
        self.present (alert, animated: true)
    }
    
    func found() -> Bool {
        
        if let mail = mailTF.text, let pw = pwTF.text{
            if mail.isEmpty || pw.isEmpty {
                alert(title: "Dati mancanti", message: "Per favore, inserisci i dati mancanti")
                return false
            } else {
                
                for i in users{
                    if mail == i.mail{
                            if pw == i.pw {
                                user = i
                                return true
                            }
                    }
                }
                //not correct
                alert(title: "Utente non trovato", message: "Per favore, ricontrolla i dati inseriti")
                return false
                }
            }
        
        return false
    }
    
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "goHome" {
//            guard let homeVC = segue.destination as? HomeViewController else { return }
//            homeVC.currentUser = user
//        }
//    }
    
    
    @IBAction func login(_ sender: UIButton) {
        if found(){
            let homeVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "homeVC") as! HomeViewController
            
            homeVC.currentUser = user
            
            mailTF.text = ""
            pwTF.text = ""
            
            self.navigationController?.pushViewController(homeVC , animated: true)
            
//            performSegue(withIdentifier: "goHome", sender: self)
        }
    }
    
    @IBAction func signup(_ sender: UIButton) {
        //performSegue(withIdentifier: "goRegister", sender: nil)
    }
    
    
    


}

