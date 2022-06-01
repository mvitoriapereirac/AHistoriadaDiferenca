//
//  ResultAjudaViewController.swift
//  AHistoriadaDiferenca
//
//  Created by mvitoriapereirac on 24/05/22.
//

import UIKit

class ResultAjudaViewController: UIViewController {

    @IBOutlet weak var enderecoCaps: UILabel!
    @IBOutlet weak var imagemCaps: UIImageView!
    @IBOutlet weak var nomeCaps: UILabel!
    var answer: [String] = []
    
    @IBOutlet weak var retanguloNome: UIImageView!
    @IBAction func conectaAoHttps(_ sender: UIButton) {
        
    }
  
    
    @IBOutlet weak var retanguloEndereco: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nomeCaps.text = "Visite o Caps \(answer[0])!"
        enderecoCaps.text =  "Endereço: \(answer[1])"

       
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
