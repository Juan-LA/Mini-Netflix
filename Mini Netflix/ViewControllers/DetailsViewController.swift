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
    
//    var currentUser : User = User(name: "", mail: "", pw: "", films: [])
    
    var selectedMovie = String()
    
    
    
    
    
    
//    @IBOutlet weak var navBar: UINavigationBar!
//
//    @IBOutlet weak var navBtn: UINavigationItem!
    @IBOutlet weak var backBtn: UIBarButtonItem!
    
//    var film : Film = Film(nome: "", anno: 0, durata: 0, categorie: [], produttore: "")
    
    
    
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .black
        titleLbl.textColor = .white
        timeLbl.textColor = .white
        typeLbl.textColor = .white
        producerLbl.textColor = .white
        
        if let time = films[selectedMovie]?.durata{
            img.image = UIImage(named: selectedMovie)
            titleLbl.text = films[selectedMovie]?.nome
            timeLbl.text = " \(time) min"
            typeLbl.text = getType()
            producerLbl.text = films[selectedMovie]?.produttore
        }
        
        
        
        
        
        
        
//        self.navBar.backItem?.hidesBackButton = false
//        navBtn.leftItemsSupplementBackButton = true
//
        
        
        
        
        
    }
    
    
    
    
    
    func getType() -> String?{
        var string = String()
        if let s = films[selectedMovie]?.categorie{
            for i in s {
                string += i
                if i != s[s.count-1]{
                    string += ", "
                }
            }
            return string
        } else {
            return nil
        }
        
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let homeVC = segue.destination as? HomeViewController else { return }
//        homeVC.currentUser = self.currentUser
//    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func goBackHome(_ sender: UIBarButtonItem) {
        
        self.navigationController?.popViewController(animated: true)
        
        
        
        
    }
    
    
   
    

}
