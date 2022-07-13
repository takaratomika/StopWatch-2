//
//  ThirdViewController.swift
//  StopWatch 2
//
//  Created by clark on 2022/07/12.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet var firstlabel:UILabel!
    @IBOutlet var secondlabel:UILabel!
    @IBOutlet var thirdlabel:UILabel!
    
    var firstcount: Float = 0  //0.0
    var secondcount: Float = 0 //0.0
    var thirdcount: Float = 0  //0.0
    
    var firsttimer: Timer = Timer()
    var secondtimer: Timer = Timer()
    var thirdtimer: Timer = Timer()

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
    
    @objc func secondup(){
        //countを0.01引く
        secondcount = secondcount - 0.01
        //ラベルに小数点以下0桁まで表示。　"%.桁数f"
        secondlabel.text = String(format: "%.0f", secondcount)
        if secondcount <= 0{
            secondtimer.invalidate()
            secondcount = 0
            secondlabel.text=String(format:"%.0f",secondcount)
        }
    }
    
    @objc func thirdup(){
        //countを0.01引く
        thirdcount = thirdcount - 0.01
        //ラベルに小数点以下２桁まで表示。　"%.桁数f"
        thirdlabel.text = String(format: "%.0f", thirdcount)
        if thirdcount <= 0{
            thirdtimer.invalidate()
            thirdcount = 0
            thirdlabel.text=String(format:"%.0f",thirdcount)
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
    
    
    
    @IBAction func secondSTART(){
        if !secondtimer.isValid{
            //タイマーが動作していなかったら動かす
            secondtimer = Timer.scheduledTimer(timeInterval: 0.01,
                                         target: self,
                                         selector: #selector(self.secondup),
                                         userInfo: nil,
                                         repeats: true
            )
        }
    }
    @IBAction func secondSTOP(){
        if secondtimer.isValid{
            //タイマーが動作していたら停止する
            secondtimer.invalidate()
            secondlabel.text=String(format:"%.0f",secondcount)
        }
    }
    @IBAction func secondRESET(){
        secondtimer.invalidate()
        secondcount=0.00
        secondlabel.text=String(format:"%.0f",secondcount)
    }
    @IBAction func second1(){
        if !secondtimer.isValid{
            secondcount += 1
            secondlabel.text=String(format:"%.0f",secondcount)
        }
    }
    @IBAction func second10(){
        if !secondtimer.isValid{
            secondcount += 10
            secondlabel.text=String(format:"%.0f",secondcount)
        }
    }
    @IBAction func second60(){
        if !secondtimer.isValid{
            secondcount += 60
            secondlabel.text=String(format:"%.0f",secondcount)
        }
    }
    
    
    
    @IBAction func thirdSTART(){
        if !thirdtimer.isValid{
            //タイマーが動作していなかったら動かす
            thirdtimer = Timer.scheduledTimer(timeInterval: 0.01,
                                         target: self,
                                         selector: #selector(self.thirdup),
                                         userInfo: nil,
                                         repeats: true
            )
        }
    }
    @IBAction func thirdSTOP(){
        if thirdtimer.isValid{
            //タイマーが動作していたら停止する
            thirdtimer.invalidate()
            thirdlabel.text=String(format:"%.0f",thirdcount)
        }
    }
    @IBAction func thirdRESET(){
        thirdtimer.invalidate()
        thirdcount=0.00
        thirdlabel.text=String(format:"%.0f",thirdcount)
    }
    @IBAction func third1(){
        if !thirdtimer.isValid{
            thirdcount += 1
            thirdlabel.text=String(format:"%.0f",thirdcount)
        }
    }
    @IBAction func third10(){
        if !thirdtimer.isValid{
            thirdcount += 10
            thirdlabel.text=String(format:"%.0f",thirdcount)
        }
    }
    @IBAction func third60(){
        if !thirdtimer.isValid{
            thirdcount += 60
            thirdlabel.text=String(format:"%.0f",thirdcount)
        }
    }
    
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
    }


}
