//
//  FirstViewController.swift
//  StopWatch 2
//
//  Created by clark on 2022/07/12.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet var firstlabel:UILabel!
    
    var firstcount: Float = 0  //0.0
    
    var firsttimer: Timer = Timer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning(){
        super.didReceiveMemoryWarning()
    }
    
    @objc func firstup(){
        //countを0.01引く
        firstcount = firstcount - 0.01
        //ラベルに小数点以下0桁まで表示。　"%.桁数f"
        firstlabel.text = String(format: "%.0f", firstcount)
        if firstcount <= 0{
            firsttimer.invalidate()
            firstcount = 0
            firstlabel.text=String(format:"%.0f",firstcount)
        }
    }
    
    @IBAction func firstSTART(){
        if !firsttimer.isValid{
            //タイマーが動作していなかったら動かす
            firsttimer = Timer.scheduledTimer(timeInterval: 0.01,
                                         target: self,
                                         selector: #selector(self.firstup),
                                         userInfo: nil,
                                         repeats: true
            )
        }
    }
    @IBAction func firstSTOP(){
        if firsttimer.isValid{
            //タイマーが動作していたら停止する
            firsttimer.invalidate()
            firstlabel.text=String(format:"%.0f",firstcount)
        }
    }
    @IBAction func firstRESET(){
        firsttimer.invalidate()
        firstcount=0.00
        firstlabel.text=String(format:"%.0f",firstcount)
    }
    @IBAction func first1(){
        if !firsttimer.isValid{
            firstcount += 1
            firstlabel.text=String(format:"%.0f",firstcount)
        }
    }
    @IBAction func first10(){
        if !firsttimer.isValid{
            firstcount += 10
            firstlabel.text=String(format:"%.0f",firstcount)
        }
    }
    @IBAction func first60(){
        if !firsttimer.isValid{
            firstcount += 60
            firstlabel.text=String(format:"%.0f",firstcount)
        }
    }
    
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
    }


}
