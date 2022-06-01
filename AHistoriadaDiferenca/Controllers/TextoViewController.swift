//
//  TextoViewController.swift
//  AHistoriadaDiferenca
//
//  Created by mvitoriapereirac on 19/05/22.
//

import UIKit

class TextoViewController: UIViewController {

    @IBOutlet weak var Texto1: UITextView!
    
    @IBOutlet weak var ImagemButton: UIImageView!
    var nomeImagem: String = ""
    var nomeImagem2: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        ImagemButton.image = UIImage(named: nomeImagem)
        Texto1.text = escreveTexto(_: nomeImagem2)

        // Do any additional setup after loading the view.
    }
    
    func escreveTexto(_ nomeImagem: String) -> String {
        /*let cartas: [tarot] = [tarot(imagem: "louco", carta: "O Louco"),
                               tarot(imagem: "mago", carta: "O Mago"),
                               tarot(imagem: "imperador", carta: "O Imperador"),
                               tarot(imagem: "temperanca", carta: "A Temperança"),
                               tarot(imagem: "carro", carta: "O Carro"),
                               tarot(imagem: "mundo", carta: "O Mundo"),
                               tarot(imagem: "torre", carta: "A Torre"),
                               tarot(imagem: "estrela", carta: "A Estrela")]
        */
        var textinho1: String = ""
        if nomeImagem == "louco"{
            textinho1 = "O que é a loucura? \nAssim como o arquétipo do louco nas cartas de tarô, depende do ângulo a partir do qual o observador olha. \nLoucura pode significar a necessidade e, por que não, a coragem de encarar o mundo a partir de um referencial particular. Pode ser a liberdade de escolher próprios caminhos. \nCriamos o  conceito de loucura para nos referirmos a pessoas que não compartilham da mesma visão de realidade que a nossa. Mas será mesmo?"
        }else if nomeImagem == "mago"{
                textinho1 = "O mago simboliza o poder \nPoder, em nosso universo, pode significar a capacidade de transformar o mundo. É o caso das ciências médicas e psicológicas, que, ao depararem-se com a dinâmica do louco, resolvem estudá-la. \nAqui, cabe a pergunta: como agir eticamente diante do poder que nos é conferido? \nCertamente, a Psicologia e a Psiquiatria, juntas, são decisivas para o aumento da nossa qualidade de vida, usando seus recursos para o verdadeiro cuidado. \nMas essas ciências carregam um histórico nebuloso: a da compreensão do cuidado em saúde mental em manicômios."
        }else if nomeImagem == "imperador"{
            textinho1 = "O imperador, assim como instituições de cuidado em saúde mental, podem ser símbolo de segurança e conforto, bem como podem ser totalitárias. \nO totalitarismo de instituições como os asilos ou manicõmios vai além da privação de liberdade e convívio social: muitas vezes, a violência está nas perspectivas teóricas adotadas. \nVocê já ouviu falar na perspectiva da  saúde focada na doença? Parece paradoxal, não é? \nMas não é! \nSerá que, para nos sentirmos bem e seguros, basta que não estejamos adoecidos?"
        }else if nomeImagem == "temperanca"{
            textinho1 = "A temperança é a carta que fala sobre a presença ou ausência moderação e equilíbrio. \nNesse sentido, podemos pensar na cura como o ideal de algumas perspectivas teóricas das ciências psi. \nO que é estar curado da loucura? Para muitos, a cura é entendida como tornar-se parte do modo produtivo normal de nossa cultura. Prova disso é que muitos pacientes são considerados ˜curados˜ a partir de métricas como o bom comportamento, a performance no trabalho e na família, a passividade e flexibilidade, etc. Mas não necessariamente todos os caminhos que levam a esse cenário significam cuidado e promoção de saúde para aquele indivíduo em particular."
        }else if nomeImagem == "carro"{
            textinho1 = "O Carro é o símbolo de movimento! \nSe hoje possuímos um outro olhar voltado para o cuidado em saúde mental, devemos aos movimentos antimanicomiais da década de 80 que resultaram na Reforma Psiquiátrica! \nJunto com a promulgação da Constituição Cidadã, ao fim da ditadura militar quando o Brasil estabelece a saúde como prioridade para a população e o SUS é fundado, ganham força os debates acerca da necessidade de desinstitucionalização de pacientes psiquiátricos no Brasil. Manicômios são banidos, e a saúde em liberdade é priorizada. \nInfelizmente, esse processo não foi isento  de embates: por trás da defesa da lógica dos manicômios, há um forte interesse econômico que a sustenta. \nPor isso, o debate acerca das estratégias de saúde mental é e sempre foi um campo de disputa de narrativas. Por isso, o movimento se chama 'luta'. Todos os anos, no mês de maio (mês da luta antimanicomial), relembramos os horrores cometidos durante o período manicomial no Brasil, e discutimos sobre a importãncia da Reforma Psiquiátrica!"

        }else if nomeImagem == "mundo"{
            textinho1 = "QUEM TEM MEDO DA RAPS? \n\nA RAPS é formada por vários tipos de serviços. Um de seus braços principais é o dos Caps (Centro de atenção psicossocial), serviço que é presente em todos os territórios sanitários da cidade do Recife, e que trabalha a partir de um modelo de integralidade e promoção da saúde. \nForam muitas pactuações entre especialistas, representantes da sociedade e governantes até que conseguíssemos banir os hospitais psiquiátricos e adotar o cuidado em liberdade. Foi uma grande conquista dos brasileiros! \n\nAtualmente, a rede Caps é alvo de diversas tentativas de desmonte e desestruturação. Com a dificuldade em acessar recursos humanos e materiais, o desempenho do trabalho no serviço acaba tornando-se deficitário. \nO argumento  de que os tempos áusteros não permitem maiores investimentos na rede não combinam com as ações recentes da prefeitura, que decidem destinar verba pública para a manutenção de um serviço privado, financiado por algumas lideranças da igreja evangélica(e que possuem muitos apoiadores na câmara legislativa) chamado Comunidade Terapeutica. Ao mesmo tempo, não investe na rede RAPS e permite que o serviço seja sucateado. "
            
        }else if nomeImagem == "torre"{
            textinho1 = "A carta da torre representa, em seu sentido positivo, a ruptura com o velho; no negativo, a aceitação de uma realidade difícil motivada pelo trauma, que nos diz que é impossível modificar o horizonte. \nO que é ser normal? Para o paradigma asilar, o sujeito normal é bem representado em algo como o estereótipo dos mocinhos de filme hollywoodiano: a figura de um homem, branco, bem sucedido, feliz, sem vícios, heterossexual, em forma e sem traumas, sem transtornos de ordem cognitiva ou deficiências físicas. É o garoto propaganda do estilo de vida que nosso modo produtivo almeja que tenhamos. \nEssa visão estreita acerca do normal e patológico é , em si mesma, produtora de sofrimento psíquico, já que esse ideal é, para a maioria, inalcançável. Para essa definição, você é normal? \nSe a resposta for não, significa que boa parte da sociedade não foi pensada para você. A partir do momento em que o sofrimento graças a essa exclusão se manifesta,  chamam você de 'doido(a)'. \nMas será que um ”doido” se produz no vácuo? \nSerá que você pode realmente ser moralmente acusado, isto é, culpado, pelo seu adoecimento? \nAté que ponto não são as estruturas sociais as responsáveis pelo nosso adoecimento? "
        }else{
            textinho1 = "A Estrela é uma carta especial. \nNo passado, os marinheiros costumavam utilizar a posicão das estrelas  para orientarem-se espacialmente. Nessa época não havia energia elétrica, telefone e todo tipo de comunicação à distãncia era difícil. Imagine você, dentro de um barco há dezenas de dias, em meio ao escuro da noite, podendo contar apenas com o brilho das estrelas para sentir-se seguro. \nDifícil, certo? Mas aconteceu. \nOs marinheiros não possuíam muita coisa a não ser a atenção, a resiliência, e a vontade de perdurarem, sobreviverem, moverem-se. \nDevemos muito do que temos hoje, em termos de avanço científico, a esses primeiros e resistentes exploradores. \nHá uma lição oculta por trás desse dado histórico: a verdadeira armadilha não está em tentar, mas sim em desistir. Por mais perdida que aparente estar a luta, por mais difícil que seja enxergar as estrelas e pôr os pés no chão, não podemos perder a coragem de vista. "
        }
     return textinho1
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier  == "segundoTextoSegue"{
            let texto = segue.destination as! SegundoTextoViewController
            texto.qualotexto1 = escreveTexto(_: nomeImagem2)
            texto.nomeImagem = nomeImagem2
        }
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
