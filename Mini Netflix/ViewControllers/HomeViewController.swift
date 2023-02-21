//
//  HomeViewController.swift
//  Mini Netflix
//
//  Created by Juan Liut on 11/02/23.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var currentUser : User = User(name: "", mail: "", pw: "", films: [])
    
    
    
    
    
    @IBOutlet weak var welcomeLbl: UILabel!
    
    @IBOutlet weak var table: UITableView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
       

        // Do any additional setup after loading the view.
        view.backgroundColor = .black
        table.delegate = self
        table.dataSource = self
        
        
        welcomeLbl.text = "Bentornato \(currentUser.name)"
        
        welcomeLbl.textColor = .white
        
        self.navigationItem.setHidesBackButton(false, animated: true)
        
        self.navigationController?.isNavigationBarHidden = true
        
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        currentUser.films.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "film", for: indexPath) as! FilmTableViewCell
        
        cell.img.image = UIImage(named: currentUser.films[indexPath.row])
        
        cell.title.text = films[currentUser.films[indexPath.row]]?.nome
        
        cell.time.text = "\(String(films[currentUser.films[indexPath.row]]?.durata ?? 0)) min"
        
        cell.title.textColor = .black
        cell.time.textColor = .black
        
//        cell.codeName = currentUser.films[indexPath.row]
        
        
        cell.backgroundColor = .black
        
        
        return cell
    }
    

    
    
    func setCurrentUser(user : User){
        self.currentUser = user
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let detailsVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "detailsVC") as? DetailsViewController
            
            detailsVC?.film = films[currentUser.films[indexPath.row]] ?? (Film(nome: "", anno: 0, durata: 0, categorie: [], produttore: ""))
            
        detailsVC?.selectedMovie = currentUser.films[indexPath.row]
            
            
            
            self.navigationController?.pushViewController(detailsVC ?? UIViewController(), animated: true)
    //        performSegue(withIdentifier: "goDetails", sender: nil)
            
    }
    
    
    
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let detailsVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "detailsVC") as? DetailsViewController
//
////        detailsVC?.titleLbl.text = films[currentUser.films[indexPath.row]]?.nome
////        detailsVC?.producerLbl.text = films[currentUser.films[indexPath.row]]?.produttore
////        detailsVC?.timeLbl.text = "\(films[currentUser.films[indexPath.row]]?.durata ?? 0) minuti"
////        detailsVC?.img.image = UIImage(named: currentUser.films[indexPath.row])
//
//        let backItem = UIBarButtonItem()
//            backItem.title = "Something Else"
//            navigationItem.backBarButtonItem = backItem
//
//        detailsVC?.navigationItem.backBarButtonItem = backItem
//
//
//        detailsVC?.navigationItem.title = "prova"
//        detailsVC?.navigationController?.title = "prova"
//        detailsVC?.navigationController?.navigationItem.title = "back"
//
//
//
//
//        detailsVC?.film = films[currentUser.films[indexPath.row]] ?? (Film(nome: "", anno: 0, durata: 0, categorie: [], produttore: ""))
//
//
//
////        self.navigationController?.pushViewController(detailsVC ?? UIViewController(), animated: true)
//
//        self.present(detailsVC ?? UIViewController(), animated: true, completion: nil)
//
//
//
//    }

    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
}
