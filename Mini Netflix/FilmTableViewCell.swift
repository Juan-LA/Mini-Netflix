//
//  FilmTableViewCell.swift
//  Mini Netflix
//
//  Created by Juan Liut on 11/02/23.
//

import UIKit

class FilmTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var title: UILabel!
    
    @IBOutlet weak var time: UILabel!
    
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
