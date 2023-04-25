//
//  ViewController.swift
//  Notification Center Example
//
//  Created by Fatihan Ziyan on 24.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblSonuc: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // sonucGoster fonksiyonunu burada çağırdım ve sonucGosterID adıyla bir notif yaratıldı.
        // NotificationCenter dinlemeye açıldı
        NotificationCenter.default.addObserver(self, selector: #selector(sonucGoster(data:)), name: NSNotification.Name(rawValue: "sonucGosterID"), object: nil)
   
    }
    
    @objc func sonucGoster(data:Notification){
        
        if let userInfo = data.userInfo{
            let sonuc = userInfo["mergeData"] as! String
            self.lblSonuc.text = "Girilen Text: " + String(sonuc)
        }
        
    }


}

