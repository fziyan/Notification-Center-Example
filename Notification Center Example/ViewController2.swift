//
//  ViewController2.swift
//  Notification Center Example
//
//  Created by Fatihan Ziyan on 24.04.2023.
//

import UIKit

class ViewController2: UIViewController {
    
    @IBOutlet weak var txt1: UITextField!
    @IBOutlet weak var txt2: UITextField!
    
    
    @IBAction func sendBtn(_ sender: Any) {
        let mergeData = String(txt1.text!) + " " + String(txt2.text!)
        
        // txt1 ve txt2 ile girilen textler key value şeklinde post edilmesi durumu yapılıyor.
        // sonucGosterID'li notification tetikleniyor ve mergeData datası gönderiliyor.
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "sonucGosterID"), object: nil, userInfo: ["mergeData": mergeData])
        
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

}
