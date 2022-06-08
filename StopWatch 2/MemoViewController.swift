//
//  MemoViewController.swift
//  StopWatch 2
//
//  Created by cl_umeda_015 on 2021/12/01.
//

import UIKit

class MemoViewController: UIViewController{

    @IBOutlet var titleTextField:UITextField!
    @IBOutlet var contentTextView:UITextView!
    
    var saveData: UserDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleTextField.text = saveData.object(forKey:"title")as?String
        contentTextView.text = saveData.object(forKey:"content")as?String
    }
    
    @IBAction func saveMemo(){
        saveData.set(titleTextField.text,forKey:"title")
        saveData.set(contentTextView.text,forKey:"content")
        
        let alert:UIAlertController = UIAlertController(title:"保存",message:"メモの保存が完了しました",preferredStyle: .alert)
        
        alert.addAction(
            UIAlertAction(title:"OK",
                          style:.default,
                          handler:{action in
                          }
            )
        )
        present(alert,animated: true,completion: nil)
    }
    
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
    }

}
