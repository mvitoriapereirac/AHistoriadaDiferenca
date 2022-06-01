//
//  CartasCaracteristicasViewController.swift
//  AHistoriadaDiferenca
//
//  Created by mvitoriapereirac on 19/05/22.
//

import UIKit

class CartasCaracteristicasViewController: UIViewController {

    @IBOutlet weak var caracCarta: UIImageView!
    @IBOutlet weak var tituloCarta: UIImageView!
    
    var info = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tituloCarta.image = UIImage(named: "Group 5-\(info)")
        caracCarta.image = UIImage(named: "Group 4-\(info)")
        

        // Do any additional setup after loading the view.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mostraTextopt1"{
            let destino = segue.destination as! TextoViewController
            destino.nomeImagem = "Group 4-\(info)"
            destino.nomeImagem2 = info
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
