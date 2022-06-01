//
//  MenuViewController.swift
//  AHistoriadaDiferenca
//
//  Created by mvitoriapereirac on 16/05/22.
//

import UIKit

class MenuViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! UITabBarController
        if segue.identifier == "segueEstrela"{
            destino.selectedIndex = 1
        }
        else{
            destino.selectedIndex = 0
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
