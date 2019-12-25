//
//  questionBank.swift
//  Soru cevap
//
//  Created by ıdk on 6.09.2019.
//

import Foundation

class QuestionBank{
    var list = [question]()
    init(){
        
        let item = question(text: "Sevgililer günü Suudi Arabistanda Yasaklı gündür", correctAnswer: true)
        
        
        list.append(item)
        
        
        list.append(question(text: "Sümüklü böceğin kanı yeşildir", correctAnswer: true))
        
        list.append(question(text: "İnsan kemiklerinin yaklaşık dörtte biri ayaktadır .", correctAnswer: true))
        
        list.append(question(text: "İki insan ciğerinin toplam yüzey alanı yaklaşık 70 metre karedir.", correctAnswer: true))
        
        list.append(question(text: "Amerikanın West Virginia eyaletinde bir hayvanı arabanızla öldürdükten sonra onu eve götürüp yemekte özgürsünüz.", correctAnswer: true))
        
        list.append(question(text: "Eğer UK Londrada devlet parlamentosunda ölürseniz teknik olarak devlet cenazesine hak kazanırsınız çünkü orası kutsal bir yer olarak kabul edilir.", correctAnswer: false))
        
        list.append(question(text: "İnsan DNA sının %50 si muz ile aynıdır ", correctAnswer: true))
        
        list.append(question(text: "İnekleri merdivende aşağı indirebilirsiniz fakat merdiven çıkartamazsınız.", correctAnswer: false))
        
        list.append(question(text: "Google başlangıçta Backrub olarak adlandırıldı .", correctAnswer: true))
        
        list.append(question(text: "Spider-Man i örümcek ısırdığı için Spider-mane dönüşmüştür.", correctAnswer: true))
        
        list.append(question(text: "Hayvanlar arasında en yüksek sese sahip 188 desibel ile Afrika filidir", correctAnswer: false))
        
        list.append(question(text: "Kare bir kağıdı 7 defadan fazla yarıya katlayamazsınız.", correctAnswer: false))
        
        list.append(question(text: "Çikolata köpeklerin kalp ve sinir sistemini etkiler,bir kaç parçası bile onu öldürmek için yeterlidir .", correctAnswer: true))
        
    }
}
