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
    var frasesHelp: [String] = ["Sinto que perdi o  controle do uso de ??lcool e/ou drogas", "Tenho dificuldade de concentra????o", "Tenho dificuldades de aprendizado", "Minha rela????o com a comida ?? dif??cil", "Meu humor inst??vel atrapalha minha vida", "Tenho dificuldadde em sentir empatia", "O receio de julgamento me paraliza frequentemente", "H?? sempre algu??m tramando contra mim", "H?? pessoas ou objetos que outros n??o v??em", "Sou infeliz com minha sa??de mental", "Vivi uma experi??ncia traum??tica", "Frequentemente me sinto ap??tica e paraliso", "Penso em suic??dio com alguma frequ??ncia"]
    
    var CapsRecife: [caps] = [caps(distrito: "I", nome: "Boa Vista", bairros: ["Bairro do Recife", "Santo Amaro", "Boa Vista", "Cabanga", "Ilha do Leite", "Paissandu", "Santo Ant??nio", "S??o Jos??", "Coelhos", "Soledade", "Ilha Joana Bezerra"], endereco: "R. General Jose?? Semea??o, 146, Boa Vista", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["adulto"], tipo: "Transtorno"),
                              caps(distrito: "I", nome: "AD Prof Luiz Cerqueira", bairros: ["Recife", "Santo Amaro", "Boa Vista", "Cabanga", "Ilha do Leite", "Paissandu", "Santo Ant??nio", "S??o Jos??", "Coelhos", "Soledade", "Ilha Joana Bezerra"], endereco: "R A??lvares de Azevedo, 80, Santo Amaro", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["infantil", "adolescente"], tipo: "AD"),
                              caps(distrito: "II", nome: "Jose?? Carlos Souto", bairros: ["Alto Santa Terezinha", "??gua Fria", "Arruda", "Beberibe", "Bomba do Hemet??rio", "Campo Grande", "Cajueiro", "Campina do Barreto", "Dois Unidos", "Encruzilhada", "Fund??o", "Hip??dromo", "Linha do Tiro", "Ponto de Parada", "Porto da Madeira", "Peixinhos", "Rosarinho e Torre??o"], endereco: "R Djalma Farias, 135, Torrea??o", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["adolescente"], tipo: "Transtorno"),
                              caps(distrito: "II", nome: "infantil Zaldo Rocha", bairros: ["Alto Santa Terezinha", "??gua Fria", "Arruda", "Beberibe", "Bomba do Hemet??rio", "Campo Grande", "Cajueiro", "Campina do Barreto", "Dois Unidos", "Encruzilhada", "Fund??o", "Hip??dromo", "Linha do Tiro", "Ponto de Parada", "Porto da Madeira", "Peixinhos", "Rosarinho e Torre??o"], endereco: "R Castro Alves, 143, Encruzilhada", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["adolescente"], tipo: "Transtorno"),
                              caps(distrito: "II", nome: "AD Vicente Arau??jo", bairros: ["Alto Santa Terezinha", "??gua Fria", "Arruda", "Beberibe", "Bomba do Hemet??rio", "Campo Grande", "Cajueiro", "Campina do Barreto", "Dois Unidos", "Encruzilhada", "Fund??o", "Hip??dromo", "Linha do Tiro", "Ponto de Parada", "Porto da Madeira", "Peixinhos", "Rosarinho e Torre??o"], endereco: "Rua Couto Magalha??es, 480, Rosarinho", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["adulto"], tipo: "AD"),
                              caps(distrito: "III e VII", nome: "24h Espac??o Azul", bairros: ["Aflitos", "Alto do Mandu", "Apipucos", "Casa Amarela", "Casa Forte", "Derby", "Dois Irm??os", "Espinheiro", "Gra??as", "Jaqueira", "Monteiro", "Parnamirim", "Po??o da Panela", "Santana", "S??tio dos Pintos", "Tamarineira", "Alto Jos?? Bonif??cio", "Alto Jos?? do Pinho", "Brejo do Guabiraba", "Brejo do Beberibe", "C??rrego do Jenipapo", "Guabiraba", "Macaxeira", "Mangabeira", "Morro da Concei????o", "Nova Descoberta", "Passarinho", "Pau Ferro", "Vasco da Gama"], endereco: "Avenida Norte, 5035, Rosarinho", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["adulto"], tipo: "Transtorno"),
                              caps(distrito: "III e VII", nome: "Esperanc??a", bairros: ["Aflitos", "Alto do Mandu", "Apipucos", "Casa Amarela", "Casa Forte", "Derby", "Dois Irm??os", "Espinheiro", "Gra??as", "Jaqueira", "Monteiro", "Parnamirim", "Po??o da Panela", "Santana", "S??tio dos Pintos", "Tamarineira", "Alto Jos?? Bonif??cio", "Alto Jos?? do Pinho", "Brejo do Guabiraba", "Brejo do Beberibe", "C??rrego do Jenipapo", "Guabiraba", "Macaxeira", "Mangabeira", "Morro da Concei????o", "Nova Descoberta", "Passarinho", "Pau Ferro", "Vasco da Gama"], endereco: "R Jose?? Cavalheira, 415, Tamarineira", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["adulto"], tipo: "Transtorno"),
                              caps(distrito: "III e VII", nome: "AD CPTRA", bairros: ["Aflitos", "Alto do Mandu", "Apipucos", "Casa Amarela", "Casa Forte", "Derby", "Dois Irm??os", "Espinheiro", "Gra??as", "Jaqueira", "Monteiro", "Parnamirim", "Po??o da Panela", "Santana", "S??tio dos Pintos", "Tamarineira", "Alto Jos?? Bonif??cio", "Alto Jos?? do Pinho", "Brejo do Guabiraba", "Brejo do Beberibe", "C??rrego do Jenipapo", "Guabiraba", "Macaxeira", "Mangabeira", "Morro da Concei????o", "Nova Descoberta", "Passarinho", "Pau Ferro", "Vasco da Gama"], endereco: "Av. Rosa e Silva, 2130, Tamarineira", genero: ["masculino", "Masculino"], idadePublico: ["adulto"], tipo: "AD"),
                              caps(distrito: "IV", nome: "Espac??o Vida", bairros: ["Caxang??", "Cidade Universit??ria", "Cordeiro", "Engenho do Meio", "Ilha do Retiro", "Iputinga", "Madalena", "Prado", "Torre", "Torr??es", "V??rzea", "Zumbi"], endereco: "R Ambro??sio Machado, 280, Iputinga", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["adulto"], tipo: "Transtorno"),
                              caps(distrito: "IV", nome: "AD Eula??mpio Cordeiro", bairros: ["Caxang??", "Cidade Universit??ria", "Cordeiro", "Engenho do Meio", "Ilha do Retiro", "Iputinga", "Madalena", "Prado", "Torre", "Torr??es", "V??rzea", "Zumbi"], endereco: "R. Rondo??nia, 100, Cordeiro", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["adulto"], tipo: "AD"),
                              caps(distrito: "V", nome: "24h Galdino Loreto", bairros: ["Afogados", "Areias", "Barro", "Bongi", "Ca??ote", "Coqueiral", "Curado", "Est??ncia", "Jardim S??o Paulo", "Jiqui??", "Mangueira", "Mustardinha", "Sancho", "San Martin", "Tejipi??", "Tot??"], endereco: "Rua Frei Atana??sio, 364, Jardim Sa??o Paulo", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["adulto"], tipo: "Transtorno"),
                              caps(distrito: "V", nome: "infantil Cle??a Lacet", bairros: ["Afogados", "Areias", "Barro", "Bongi", "Ca??ote", "Coqueiral", "Curado", "Est??ncia", "Jardim S??o Paulo", "Jiqui??", "Mangueira", "Mustardinha", "Sancho", "San Martin", "Tejipi??", "Tot??"], endereco: "R Emi??lio Torrea??o, 154, Afogados", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["adolescente", "infantil"], tipo: "Transtorno"),
                              caps(distrito: "V", nome: "infantil CEMPI", bairros: ["Afogados", "Areias", "Barro", "Bongi", "Ca??ote", "Coqueiral", "Curado", "Est??ncia", "Jardim S??o Paulo", "Jiqui??", "Mangueira", "Mustardinha", "Sancho", "San Martin", "Tejipi??", "Tot??"], endereco: "R Emi??lio Torrea??o, 154, Afogados", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["adolescente", "infantil"], tipo: "Transtorno"),
                              caps(distrito: "V", nome: "AD Prof Rene?? Ribeiro", bairros: ["Afogados", "Areias", "Barro", "Bongi", "Ca??ote", "Coqueiral", "Curado", "Est??ncia", "Jardim S??o Paulo", "Jiqui??", "Mangueira", "Mustardinha", "Sancho", "San Martin", "Tejipi??", "Tot??"], endereco: "R. Jacira, 210, Afogados", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["adulto"], tipo: "AD"),
                              caps(distrito: "VI", nome: "24h David Capistrano", bairros: ["Boa Viagem", "Bras??lia Teimosa", "Imbiribeira", "Ipsep", "Pina"], endereco: "R. Virginia Hera??clio, s/n, Ipsep", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["adulto"], tipo: "Transtorno"),
                              caps(distrito: "VI", nome: "24h Espac??o Livremente", bairros: ["Boa Viagem", "Bras??lia Teimosa", "Imbiribeira", "Ipsep", "Pina"], endereco: "R. Valdemar Nery Carneiro Monteiro, 531, Setu??bal", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["adulto"], tipo: "Transtorno"),
                              caps(distrito: "VI", nome: "AD Prof Jose?? Lucena", bairros: ["Boa Viagem", "Bras??lia Teimosa", "Imbiribeira", "Ipsep", "Pina"], endereco: "Rua Santos Cosme e Damia??o, no 186, Ipsep", genero: ["masculino", "Masculino", "feminino", "Feminino","outros"], idadePublico: ["adulto"], tipo: "AD")

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
            answer.append("N??o foi poss??vel encontrar um Caps no momento!")
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

