//
//  SegundoTextoViewController.swift
//  AHistoriadaDiferenca
//
//  Created by mvitoriapereirac on 19/05/22.
//

import UIKit

class SegundoTextoViewController: UIViewController {

    @IBOutlet weak var textinho1: UITextView!
    
    @IBOutlet weak var textinho2: UITextView!
    
var qualotexto1: String = ""
var nomeImagem: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textinho1.text = qualotexto1
        textinho2.text = escrevetexto()

        // Do any additional setup after loading the view.
    }
    
    func escrevetexto() -> String{
        var textinho2: String = ""
        if nomeImagem == "louco"{
            textinho2 = "Na prática, ”louco” é um termo que produz uma diversidade de estigmas, e é usado para nos separar entre duas classes: os úteis e os inúteis. \nOs úteis são aqueles capazes e interessados em manterem-se nos conformes sociais. \nOs inúteis são os outros: os preguiçosos, os viciados, os delirantes. Os loucos são vistos como um problema a ser resolvido. \nO que, frequentemente, passa por nós despercebido, é a característica mais curiosa de um louco: a subversão que apresentam em sua forma de viver denuncia, muitas vezes, o caráter artificial, isto é, socialmente construído e as dinâmicas de poder que formam as  normas sociais. \n\nNão é à toa que o louco é a nossa carta coringa!"
        }else if nomeImagem == "mago"{
                textinho2 = "O que são manicômios? \nSão instituições que objetivam retirar o louco da sociedade. Semelhantes a hospitais, comumente são denunciadas por maus tratos e negligência. Partem da prerrogativa do isolamento e da alienação como estratégia de funcionamento. Estima-se que o número de vítimas desse sistema desumanizante em nosso país é em torno de 60 mil - e esses são os números oficialmente contabilizados. Quantos mais sofreram nesse sistema e sequer foram adicionados às estatísticas?"
        }else if nomeImagem == "imperador"{
            textinho2 = "Para a Organização Muncial de Saúde, não! Saúde é mais do que a ausência de doenças: “saúde é um estado de completo bem-estar físico, mental e social”. \nQuando adicionamos à ”receita” a variável do social, entendemos o quão complexo e singular o processo de ter saúde pode significar para cada um de nós. "
        }else if nomeImagem == "temperanca"{
            textinho2 = "Em uma perspectiva de humanização, devemos reconhecer que Sabe-se que uma das características marcantes de alguns transtornos de cunho mental está relacionada à cronicidade dos mesmos, o que reduz a possiblidade de cura e levanta a discussão a respeito do controle dos sintomas destes para a manutenção da qualidade de vida dos indivíduos que deles sofrem. \nContrariando a lógica binária de saúde ou doença, entendemos que o processo de cuidado insere-se em um espectro, e que não precisa obedecer a uma lógica linear de ascenção da saúde até seu ápice, em que a doença desaparece. Algumas perspectivas que seguem esse modelo sáo a de redução de danos e de cuidados paliativos."
        }else if nomeImagem == "carro"{
            textinho2 = "A Rede de Atenção Psicossocial, ou RAPS, integra o SUS e é uma proposta de cuidado em saúde mental valorizando a perspectiva comunitária. O cuidado é pensado e realizado em coletividade, tanto entre os profissionais quanto entre os usuários da rede. Alguns de seus princípios orientadores são a autonomia e a participação ativa de seus usuários nas pactuações acerca de seu plano de tratamento.  "

        }else if nomeImagem == "mundo"{
            textinho2 = "As Comunidades Terapeuticas insistem em um paradigma manicomial, moralizante e higienista da compreensáo de saúde mental: há pouca preocupação no embasamento científico e cuidado especializado, e uma silenciosa tendência à vilanização do adoecimento psíquico, colocando-o na conta da falta de religião. \nHá diversas denúncias de maus tratos ocorridos durante a estadia de usuários nesse espaço. Para algumas pessoas, a lógica asilar nunca foi abandonada.\n\nE  por que? \nAlgumas razões: primeiro, o modelo das Comunidades Terapeuticas e outros formatos de clínicas de internamento são lucrativos. Segundo, pois não há perspectiva de um trabalho intensivo de inclusão e reinserção social voltado para pessoas que possuem alguma demanda de saúde mental. Em decorrência desse fator, muitas pessoas, familiares e amigos, sentem-se sobrecarregadas por aquele sujeito que não existe em conformidade ao funcionamento tradicional da civilização e encontram uma saída no asilo. \nAssim como em 'O mundo', a árdua batalha que  temos travado contra a lógica manicomial só poderá ter seu momento de conclusão uma vez que os interesses opostos sejam desmobilizados."
            
        }else if nomeImagem == "torre"{
            textinho2 = "À medida que as desigualdades aumentam, o índice de pessoas acometidas por depressão  e ansiedade também aumenta. \nE isso não é coincidência: saúde mental e dignidade andam de mãos dadas. Discutir saúde mental e qualidade de vida passa pela discussão política. Como nossas condições de vida enossos direitos não atendidos interagem com nossa biologia, e participam da produção do nosso sofrimento? \n\nÉ importante entender saúde em sua completude, a qual envolve a garantia de direitos civis, sociais e políticos. Precisamos estar atentos  para defender os serviços que se ancoram nos ideais que, para nós, fazem sentido! Assim como na carta da torre, às vezes destruir estruturas antigas significa construir um mundo novo! E para isso, precisamos desafiar nossos traumas, nossa desesperança e nosso ceticismo acerca de nossa potência no mundo."
        }else{
            textinho2 = "Agora é o momento de fazermos jus à luta de nossos pais e avós: precisamos ser refratários ao retrocesso. Precisamos estar presentes em espaços de discussão, conversar com nossos familiares sobre o assunto, e assim torna-lo de interesse público! Precisamos pressionar nossos governantes pelo que acreditamos ser o correto: um cuidado à saúde mental que respeite a nossa unicidade, nossa liberdade e nossas diversas facetas, para além da face do diagnóstico. Juntos, precisamos nos posicionar contra o desmonte dos dispositivos de saúde da rede RAPS, cobrar de nossos legisladores e governantes a prestação de contas quanto ao financiamento que é, por lei, designado para a rede! \n\nQue, acima de tudo, não esqueçamos de olhar para as diferenças com ponderação e respeito. Que eduquemos nossos filhos e netos sobre do valor da coletividade. Juntos, podemos transformar essa realidade. Conto com você!"
        }
     return textinho2
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
