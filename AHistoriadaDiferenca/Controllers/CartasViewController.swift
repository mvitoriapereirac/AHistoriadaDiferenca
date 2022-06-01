//
//  CartasViewController.swift
//  AHistoriadaDiferenca
//
//  Created by mvitoriapereirac on 17/05/22.
//

import UIKit

class CartasViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cartas.count
    }
    
        
    let cartas: [tarot] = [tarot(imagem: "louco", carta: "O Louco"),
                           tarot(imagem: "mago", carta: "O Mago"),
                           tarot(imagem: "imperador", carta: "O Imperador"),
                           tarot(imagem: "temperanca", carta: "A Temperança"),
                           tarot(imagem: "carro", carta: "O Carro"),
                           tarot(imagem: "mundo", carta: "O Mundo"),
                           tarot(imagem: "torre", carta: "A Torre"),
                           tarot(imagem: "estrela", carta: "A Estrela"),




]
        

    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let ViewCell = CartasCollectionView.dequeueReusableCell(withReuseIdentifier: "CartasCollectionViewCell", for: indexPath) as! CartasCollectionViewCell
        return ViewCell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    }
    
    @IBOutlet weak var CartasCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.CartasCollectionView.dataSource = self
        self.CartasCollectionView.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func ajudaCartas(_ sender: UIButton) {
        
    
    }
    
    func mostraTelaCarta(){
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "cartaReveladaSegue" {

            if let indexPath = CartasCollectionView.indexPathsForSelectedItems?.first {
                let exibirCartaViewController = segue.destination as! exibirCartaViewController
                exibirCartaViewController.nomeImagem = cartas[indexPath.row].imagem
            }
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
}


class exibirCartaViewController: UIViewController{
    
    @IBOutlet weak var ImagemCarta: UIImageView!
    var nomeImagem: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ImagemCarta.image = UIImage(named: nomeImagem ?? "")

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "levaInfoSegue"{
            
            let enviainfo = segue.destination as! CartasCaracteristicasViewController
            enviainfo.info = nomeImagem ?? ""
            
        }
    }
        
        
    }

