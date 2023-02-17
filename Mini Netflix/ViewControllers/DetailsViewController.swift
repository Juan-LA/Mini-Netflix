//
//  DetailsViewController.swift
//  Mini Netflix
//
//  Created by Juan Liut on 12/02/23.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var titleLbl: UILabel!
    
    @IBOutlet weak var timeLbl: UILabel!
    
    @IBOutlet weak var typeLbl: UILabel!
    
    @IBOutlet weak var producerLbl: UILabel!
    
    @IBOutlet weak var txt: UITextView!
    
    var currentUser : User = User(name: "", mail: "", pw: "", films: [])
    
    
    
    
    
    //@IBOutlet weak var navBar: UINavigationBar!
    
    @IBOutlet weak var navBtn: UINavigationItem!
    @IBOutlet weak var backBtn: UIBarButtonItem!
    
    var film : Film = Film(nome: "", anno: 0, durata: 0, categorie: [], produttore: "")
    
    
    
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .black
        titleLbl.textColor = .white
        timeLbl.textColor = .white
        typeLbl.textColor = .white
        producerLbl.textColor = .white
        
        
        img.image = UIImage(named: film.nome)
        titleLbl.text = film.nome
        timeLbl.text = "\(film.durata) min"
        typeLbl.text = getType()
        producerLbl.text = film.produttore
        
        self.navigationItem.titleView?.tintColor = .white
       self.navigationItem.setHidesBackButton(false, animated: true)
        
        
        
        
        //self.navigationItem.title = "prova"
        
        //self.navigationController?.title = "prova"
//        self.navigationController?.navigationBar.topItem
        //self.title = "ciao"
        
        
        
        
        /*
        // Crea un bottone back
        let backButton = UIBarButtonItem()
        // Imposta il titolo del bottone
        backButton.title = "Indietro"
        // Imposta l'azione del bottone
        backButton.action = #selector(getter: backBtn.isSelected)
        // Assegna il bottone alla navigationItem
        navBtn.backBarButtonItem = backButton
         */
        
        //txt.text = "Descrizione/Trama"
            
        
        
    }
    
    
    
    
    
    func getType() -> String?{
        var string = String()
        if let s = films[film.nome]?.categorie{
            for i in s {
                string += i
                if i != s[s.count-1]{
                    string += ","
                }
            }
            return string
        } else {
            return nil
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let homeVC = segue.destination as? HomeViewController else { return }
        homeVC.currentUser = self.currentUser
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    
    @IBAction func back(_ sender: UIBarButtonItem) {
        
            performSegue(withIdentifier: "goBack", sender: nil)
        
    }
    
    
    

}
