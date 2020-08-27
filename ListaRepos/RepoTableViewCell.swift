//
//  RepoTableViewCell.swift
//  ListaRepos
//
//  Created by Alonso Del Cid on 8/22/20.
//  Copyright © 2020 Alonso Del Cid. All rights reserved.
//

import UIKit

class RepoTableViewCell: UITableViewCell {

    @IBOutlet weak var repoLabel: UILabel!
    
    var repo: Repo? {
        didSet {
            guard let repo = repo else { return }
            
            repoLabel.text = String(repo.id) + " " + repo.name
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
