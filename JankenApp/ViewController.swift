//
//  ViewController.swift
//  JankenApp
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var hondaJanken: UILabel! //本田のじゃんけん結果を表示させるためのラベル
    
    @IBOutlet weak var hondaLine: UITextField! //本田のセリフを表示させるためのラベル
    
    @IBOutlet weak var jankenResult: UILabel! //じゃんけんの勝敗を表示させるためのラベル
    
    @IBAction func youJanken(_ sender: UIButton) { //各じゃんけんボタンを押した時の処理
        
        let hondaJankenResults = ["グー", "チョキ", "パー"] //本田の出す手を配列
        let random = arc4random_uniform(UInt32(hondaJankenResults.count)) //配列にある分の数をランダムで生成
        hondaJanken.text = hondaJankenResults[Int(random)] //本田のじゃんけん結果に乱数で生成した数と対応した配列のものを表示
        
        if sender.tag == 1 && hondaJankenResults[Int(random)] == "グー"{ //自分がグーでかつ本田のじゃんけん結果がグーの時
            jankenResult.text = "DRAW" //じゃんけんの勝敗に表示
            hondaLine.text = "たかがじゃんけん、そう思ってませんか" //本田のセリフに表示
        }
        else if sender.tag == 1 && hondaJankenResults[Int(random)] == "チョキ" { //自分がグーでかつ本田のじゃんけん結果がチョキの時
            jankenResult.text = "YOU WIN!" //じゃんけんの勝敗に表示
            hondaLine.text = "やるやん" //本田のセリフに表示
        }
        else if sender.tag == 1 && hondaJankenResults[Int(random)] == "パー" {
            //自分がグーでかつ本田のじゃんけん結果がパーの時
            jankenResult.text = "YOU LOSE" //じゃんけんの勝敗に表示
            hondaLine.text = "俺の勝ち！何で負けたか明日までに考えておいてください" //本田のセリフに表示
        }
        if sender.tag == 2 && hondaJankenResults[Int(random)] == "グー"{ //自分がチョキでかつ本田のじゃんけん結果がグーの時
            jankenResult.text = "YOU LOSE" //じゃんけんの勝敗に表示
            hondaLine.text = "俺の勝ち！何で負けたか明日までに考えておいてください" //本田のセリフに表示
        }
        else if sender.tag == 2 && hondaJankenResults[Int(random)] == "チョキ" { //自分がチョキでかつ本田のじゃんけん結果がチョキの時
            jankenResult.text = "DRAW" //じゃんけんの勝敗に表示
            hondaLine.text = "たかがじゃんけん、そう思ってませんか" //本田のセリフに表示
        }
        else if sender.tag == 2 && hondaJankenResults[Int(random)] == "パー" { //自分がチョキでかつ本田のじゃんけん結果がパーの時
            jankenResult.text = "YOU WIN!" //じゃんけんの勝敗に表示
            hondaLine.text = "やるやん" //本田のセリフに表示
        }
        if sender.tag == 3 && hondaJankenResults[Int(random)] == "グー"{ //自分がパーでかつ本田のじゃんけん結果がグーの時
            jankenResult.text = "YOU WIN!" //じゃんけんの勝敗に表示
            hondaLine.text = "やるやん" //本田のセリフに表示
        }
        else if sender.tag == 3 && hondaJankenResults[Int(random)] == "チョキ" { //自分がパーでかつ本田のじゃんけん結果がチョキの時
            jankenResult.text = "YOU LOSE!" //じゃんけんの勝敗に表示
            hondaLine.text = "俺の勝ち！何で負けたか明日までに考えておいてください" //本田のセリフに表示
        }
        else if sender.tag == 3 && hondaJankenResults[Int(random)] == "パー" { //自分がパーでかつ本田のじゃんけん結果がパーの時
            jankenResult.text = "DRAW" //じゃんけんの勝敗に表示
            hondaLine.text = "たかがじゃんけん、そう思ってませんか" //本田のセリフに表示
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

