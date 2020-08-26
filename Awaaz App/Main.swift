//
//  Main.swift
//  AwaazIndia
//
//  Created by Khirish Meshram on 25/08/20.
//  Copyright © 2020 Sekai-Ichi. All rights reserved.
//

import UIKit

class Main: UITabBarController {
    
    @IBOutlet var slideMenu: UITableView!
    
    var slideMenuHidden = true
    var slideMenuHiddenTransform: CGAffineTransform!

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    

    @IBAction func menuToggle(_ sender: UIBarButtonItem) {
        if slideMenuHidden {
            UIView.animate(withDuration: 0.4, animations: {
                self.slideMenu.transform = .identity
            })
        } else {
            UIView.animate(withDuration: 0.4, animations: {
                self.slideMenu.transform = self.slideMenuHiddenTransform
            })
        }
        slideMenuHidden = !slideMenuHidden
    }
}
