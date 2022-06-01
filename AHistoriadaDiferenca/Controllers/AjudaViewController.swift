//
//  AjudaViewController.swift
//  AHistoriadaDiferenca
//
//  Created by mvitoriapereirac on 18/05/22.
//

import UIKit

class AjudaViewController: UIViewController,UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CheckUpTableView.delegate = self
        CheckUpTableView.dataSource = self
        preenchatodosLabel.isHidden = true
        self.GeneroField.delegate = self
        self.BairroField.delegate = self
        self.IdadeField.delegate = self
    }
    @IBOutlet weak var bairroResidencia: UITextField!

    @IBOutlet weak var GeneroField: UITextField!
    @IBOutlet weak var IdadeField: UITextField!
    @IBOutlet weak var BairroField: UITextField!
    
    @IBOutlet weak var preenchatodosLabel: UILabel!
    var selecionada: String = ""
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return frasesHelp.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CheckUpTableViewCell",  for: indexPath) as! CheckUpTableViewCell
        cell.FraseGuia.text = frasesHelp[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as? CheckUpTableViewCell
        self.selecionada = cell?.FraseGuia.text ?? ""
        print(selecionada)
    
    }

    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
   override func shouldPerformSegue (withIdentifier: String, sender: Any?) -> Bool{
            if GeneroField.text != "" &&
                BairroField.text != "" &&
                IdadeField.text != "" &&
                selecionada != "" &&
                resultados() != [] {
                
                preenchatodosLabel.isHidden = true
                //resultados()
                return true
            }else{
                preenchatodosLabel.isHidden = false
                return false
            }
            //if BairroField.text == ""{
            //    preenchatodosLabel.isHidden = false
            //    return false
            //    }
            //if IdadeField.text == ""{
            //    preenchatodosLabel.isHidden = false
            //    return false
            //    }
            //if selecionada.isEmpty{
            //    preenchatodosLabel.isHidden = false
            //    return false
            //    }
            //else{
            //    preenchatodosLabel.isHidden = true
            //
            //    return true
            //    }
       
    
        
           
    
    }

    
    @IBAction func Pronto(_ sender: Any) {
        //var prep = prepare(for: UIStoryboardSegue, sender: Any?)
   shouldPerformSegue(withIdentifier: "resultadoCheckUp", sender: self)
        
                }
                 

        
       
        
        
    
    @IBOutlet weak var CheckUpTableView: UITableView!
    var frasesHelp: [String] = ["Sinto que perdi o  controle do uso de álcool e/ou drogas", "Tenho dificuldade de concentração", "Tenho dificuldades de aprendizado", "Minha relação com a comida é difícil", "Meu humor instável atrapalha minha vida", "Tenho dificuldadde em sentir empatia", "O receio de julgamento me paraliza frequentemente", "Há sempre alguém tramando contra mim", "Há pessoas ou objetos que outros não vêem", "Sou infeliz com minha saúde mental", "Vivi uma experiência traumática", "Frequentemente me sinto apática e paraliso", "Penso em suicídio com alguma frequência"]
    
    var CapsRecife: [caps] = [caps(distrito: "I", nome: "Boa Vista", bairros: ["Bairro do Recife", "Santo Amaro", "Boa Vista", "Cabanga", "Ilha do Leite", "Paissandu", "Santo Antônio", "São José", "Coelhos", "Soledade", "Ilha Joana Bezerra"], endereco: "R. General José Semeão, 146, Boa Vista", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["adulto"], tipo: "Transtorno"),
                              caps(distrito: "I", nome: "AD Prof Luiz Cerqueira", bairros: ["Recife", "Santo Amaro", "Boa Vista", "Cabanga", "Ilha do Leite", "Paissandu", "Santo Antônio", "São José", "Coelhos", "Soledade", "Ilha Joana Bezerra"], endereco: "R Álvares de Azevedo, 80, Santo Amaro", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["infantil", "adolescente"], tipo: "AD"),
                              caps(distrito: "II", nome: "José Carlos Souto", bairros: ["Alto Santa Terezinha", "Água Fria", "Arruda", "Beberibe", "Bomba do Hemetério", "Campo Grande", "Cajueiro", "Campina do Barreto", "Dois Unidos", "Encruzilhada", "Fundão", "Hipódromo", "Linha do Tiro", "Ponto de Parada", "Porto da Madeira", "Peixinhos", "Rosarinho e Torreão"], endereco: "R Djalma Farias, 135, Torreão", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["adolescente"], tipo: "Transtorno"),
                              caps(distrito: "II", nome: "infantil Zaldo Rocha", bairros: ["Alto Santa Terezinha", "Água Fria", "Arruda", "Beberibe", "Bomba do Hemetério", "Campo Grande", "Cajueiro", "Campina do Barreto", "Dois Unidos", "Encruzilhada", "Fundão", "Hipódromo", "Linha do Tiro", "Ponto de Parada", "Porto da Madeira", "Peixinhos", "Rosarinho e Torreão"], endereco: "R Castro Alves, 143, Encruzilhada", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["adolescente"], tipo: "Transtorno"),
                              caps(distrito: "II", nome: "AD Vicente Araújo", bairros: ["Alto Santa Terezinha", "Água Fria", "Arruda", "Beberibe", "Bomba do Hemetério", "Campo Grande", "Cajueiro", "Campina do Barreto", "Dois Unidos", "Encruzilhada", "Fundão", "Hipódromo", "Linha do Tiro", "Ponto de Parada", "Porto da Madeira", "Peixinhos", "Rosarinho e Torreão"], endereco: "Rua Couto Magalhães, 480, Rosarinho", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["adulto"], tipo: "AD"),
                              caps(distrito: "III e VII", nome: "24h Espaço Azul", bairros: ["Aflitos", "Alto do Mandu", "Apipucos", "Casa Amarela", "Casa Forte", "Derby", "Dois Irmãos", "Espinheiro", "Graças", "Jaqueira", "Monteiro", "Parnamirim", "Poço da Panela", "Santana", "Sítio dos Pintos", "Tamarineira", "Alto José Bonifácio", "Alto José do Pinho", "Brejo do Guabiraba", "Brejo do Beberibe", "Córrego do Jenipapo", "Guabiraba", "Macaxeira", "Mangabeira", "Morro da Conceição", "Nova Descoberta", "Passarinho", "Pau Ferro", "Vasco da Gama"], endereco: "Avenida Norte, 5035, Rosarinho", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["adulto"], tipo: "Transtorno"),
                              caps(distrito: "III e VII", nome: "Esperança", bairros: ["Aflitos", "Alto do Mandu", "Apipucos", "Casa Amarela", "Casa Forte", "Derby", "Dois Irmãos", "Espinheiro", "Graças", "Jaqueira", "Monteiro", "Parnamirim", "Poço da Panela", "Santana", "Sítio dos Pintos", "Tamarineira", "Alto José Bonifácio", "Alto José do Pinho", "Brejo do Guabiraba", "Brejo do Beberibe", "Córrego do Jenipapo", "Guabiraba", "Macaxeira", "Mangabeira", "Morro da Conceição", "Nova Descoberta", "Passarinho", "Pau Ferro", "Vasco da Gama"], endereco: "R José Cavalheira, 415, Tamarineira", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["adulto"], tipo: "Transtorno"),
                              caps(distrito: "III e VII", nome: "AD CPTRA", bairros: ["Aflitos", "Alto do Mandu", "Apipucos", "Casa Amarela", "Casa Forte", "Derby", "Dois Irmãos", "Espinheiro", "Graças", "Jaqueira", "Monteiro", "Parnamirim", "Poço da Panela", "Santana", "Sítio dos Pintos", "Tamarineira", "Alto José Bonifácio", "Alto José do Pinho", "Brejo do Guabiraba", "Brejo do Beberibe", "Córrego do Jenipapo", "Guabiraba", "Macaxeira", "Mangabeira", "Morro da Conceição", "Nova Descoberta", "Passarinho", "Pau Ferro", "Vasco da Gama"], endereco: "Av. Rosa e Silva, 2130, Tamarineira", genero: ["masculino", "Masculino"], idadePublico: ["adulto"], tipo: "AD"),
                              caps(distrito: "IV", nome: "Espaço Vida", bairros: ["Caxangá", "Cidade Universitária", "Cordeiro", "Engenho do Meio", "Ilha do Retiro", "Iputinga", "Madalena", "Prado", "Torre", "Torrões", "Várzea", "Zumbi"], endereco: "R Ambrósio Machado, 280, Iputinga", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["adulto"], tipo: "Transtorno"),
                              caps(distrito: "IV", nome: "AD Eulâmpio Cordeiro", bairros: ["Caxangá", "Cidade Universitária", "Cordeiro", "Engenho do Meio", "Ilha do Retiro", "Iputinga", "Madalena", "Prado", "Torre", "Torrões", "Várzea", "Zumbi"], endereco: "R. Rondônia, 100, Cordeiro", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["adulto"], tipo: "AD"),
                              caps(distrito: "V", nome: "24h Galdino Loreto", bairros: ["Afogados", "Areias", "Barro", "Bongi", "Caçote", "Coqueiral", "Curado", "Estância", "Jardim São Paulo", "Jiquiá", "Mangueira", "Mustardinha", "Sancho", "San Martin", "Tejipió", "Totó"], endereco: "Rua Frei Atanásio, 364, Jardim São Paulo", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["adulto"], tipo: "Transtorno"),
                              caps(distrito: "V", nome: "infantil Cléa Lacet", bairros: ["Afogados", "Areias", "Barro", "Bongi", "Caçote", "Coqueiral", "Curado", "Estância", "Jardim São Paulo", "Jiquiá", "Mangueira", "Mustardinha", "Sancho", "San Martin", "Tejipió", "Totó"], endereco: "R Emílio Torreão, 154, Afogados", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["adolescente", "infantil"], tipo: "Transtorno"),
                              caps(distrito: "V", nome: "infantil CEMPI", bairros: ["Afogados", "Areias", "Barro", "Bongi", "Caçote", "Coqueiral", "Curado", "Estância", "Jardim São Paulo", "Jiquiá", "Mangueira", "Mustardinha", "Sancho", "San Martin", "Tejipió", "Totó"], endereco: "R Emílio Torreão, 154, Afogados", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["adolescente", "infantil"], tipo: "Transtorno"),
                              caps(distrito: "V", nome: "AD Prof René Ribeiro", bairros: ["Afogados", "Areias", "Barro", "Bongi", "Caçote", "Coqueiral", "Curado", "Estância", "Jardim São Paulo", "Jiquiá", "Mangueira", "Mustardinha", "Sancho", "San Martin", "Tejipió", "Totó"], endereco: "R. Jacira, 210, Afogados", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["adulto"], tipo: "AD"),
                              caps(distrito: "VI", nome: "24h David Capistrano", bairros: ["Boa Viagem", "Brasília Teimosa", "Imbiribeira", "Ipsep", "Pina"], endereco: "R. Virginia Heráclio, s/n, Ipsep", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["adulto"], tipo: "Transtorno"),
                              caps(distrito: "VI", nome: "24h Espaço Livremente", bairros: ["Boa Viagem", "Brasília Teimosa", "Imbiribeira", "Ipsep", "Pina"], endereco: "R. Valdemar Nery Carneiro Monteiro, 531, Setúbal", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["adulto"], tipo: "Transtorno"),
                              caps(distrito: "VI", nome: "AD Prof José Lucena", bairros: ["Boa Viagem", "Brasília Teimosa", "Imbiribeira", "Ipsep", "Pina"], endereco: "Rua Santos Cosme e Damião, no 186, Ipsep", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["adulto"], tipo: "AD")

    ]
    
   
    
    func tipoCaps() -> String {
        var tipo: String = ""
            if selecionada == frasesHelp[0]{
                tipo = "AD"
            }else{
                tipo = "Transtorno"
                
            
           }
    return tipo
    }
    
    func queIdade() -> String{
        var idade = Int(IdadeField.text ?? "") ?? 0
        var publico: String = ""
        if idade >=  12 && idade < 18{
            publico = "adolescente"
        }else if idade < 12{
            publico = "infantil"
        }else if idade >= 18{
            publico = "adulto"
        }
        return publico
    }
    
    func resultados() -> [String]{
        let genero  = GeneroField.text ?? "".lowercased()
        let bairro = BairroField.text ?? ""
        var queTipo = tipoCaps()
        var quePublico = queIdade().lowercased()
        var answer: [String] = []
        
       
                for unidade in CapsRecife{
                  
                    if unidade.genero.contains(genero)
                        && unidade.bairros.contains(bairro)
                        && unidade.idadePublico.contains(quePublico)
                        && unidade.tipo.contains(queTipo){
                        answer.append(unidade.nome)
                        answer.append(unidade.endereco)
                        
                        break
                    }
                
    
        if answer == []{
            answer.append("Não foi possível encontrar um Caps no momento!")
            answer.append("Estamos trabalhando nisso...")
            


        }
                }
       // GeneroField.text = ""
        //BairroField.text = ""
        //IdadeField.text = ""
       
        return answer
    }
    
    


    
    
    
    
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if segue.identifier == "resultadoCheckUp"{
            let destino = segue.destination as! ResultAjudaViewController
           let result = resultados()
           print(result)
           destino.answer = result

        }
        
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
}



class caps{
    var distrito: String
    var nome: String
    var bairros: [String]
    var endereco: String
    var genero: [String]
    var  idadePublico: [String]
    var tipo: String
    
    init(distrito: String, nome: String, bairros: [String], endereco: String, genero: [String], idadePublico: [String], tipo: String){
        self.distrito = distrito
        self.nome = nome
        self.bairros = bairros
        self.endereco = endereco
        self.genero = genero
        self.idadePublico = idadePublico
        self.tipo = tipo
    }
}

