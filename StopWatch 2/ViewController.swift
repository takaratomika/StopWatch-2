//
//  ViewController.swift
//  StopWatch 2
//
//  Created by cl_umeda_015 on 2021/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var firstlabel:UILabel!
    @IBOutlet var secondlabel:UILabel!
    @IBOutlet var thirdlabel:UILabel!
    @IBOutlet var fourthlabel:UILabel!
    
    var firstcount: Float = 0  //0.0
    var secondcount: Float = 0 //0.0
    var thirdcount: Float = 0  //0.0
    var fourthcount: Float = 0 //0.0
    
    var firsttimer: Timer = Timer()
    var secondtimer: Timer = Timer()
    var thirdtimer: Timer = Timer()
    var fourthtimer: Timer = Timer()

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
    
    @objc func fourthup(){
        //countを0.01引く
        fourthcount = fourthcount - 0.01
        //ラベルに小数点以下２桁まで表示。　"%.桁数f"
        fourthlabel.text = String(format: "%.0f", fourthcount)
        if fourthcount <= 0{
            fourthtimer.invalidate()
            fourthcount = 0
            fourthlabel.text=String(format:"%.0f",fourthcount)
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
    
    
    
    @IBAction func fourthSTART(){
        if !fourthtimer.isValid{
            //タイマーが動作していなかったら動かす
            fourthtimer = Timer.scheduledTimer(timeInterval: 0.01,
                                         target: self,
                                         selector: #selector(self.fourthup),
                                         userInfo: nil,
                                         repeats: true
            )
        }
    }
    @IBAction func fourthSTOP(){
        if fourthtimer.isValid{
            //タイマーが動作していたら停止する
            fourthtimer.invalidate()
            fourthlabel.text=String(format:"%.0f",fourthcount)
        }
    }
    @IBAction func fourthRESET(){
        fourthtimer.invalidate()
        fourthcount=0.00
        fourthlabel.text=String(format:"%.0f",fourthcount)
    }
    @IBAction func fourth1(){
        if !fourthtimer.isValid{
            fourthcount += 1
            fourthlabel.text=String(format:"%.0f",fourthcount)
        }
    }
    @IBAction func fourth10(){
        if !fourthtimer.isValid{
            fourthcount += 10
            fourthlabel.text=String(format:"%.0f",fourthcount)
        }
    }
    @IBAction func fourth60(){
        if !fourthtimer.isValid{
            fourthcount += 60
            fourthlabel.text=String(format:"%.0f",fourthcount)
        }
    }
    
    
    
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
    }


    
}
