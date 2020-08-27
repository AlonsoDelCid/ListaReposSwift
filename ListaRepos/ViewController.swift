//
//  ViewController.swift
//  ListaRepos
//
//  Created by Alonso Del Cid on 8/22/20.
//  Copyright © 2020 Alonso Del Cid. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gitUser: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func mostrarReposPressed(_ sender: Any) {
        performSegue(withIdentifier: "mostrarRepos", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mostrarRepos" {
            if let destination = segue.destination as? ReposViewController {
                destination.gitUser = gitUser.text!
            }
        }
    }
}

