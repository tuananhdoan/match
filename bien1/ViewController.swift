//
//  ViewController.swift
//  bien1
//
//  Created by Mac24h on 9/28/16.
//  Copyright © 2016 bomwhs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet
    weak var lbl_p1: UILabel!
    
    @IBOutlet weak var lbl_p2: UILabel!
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setrandom()
    }
    //lay ra 2 so ngau nhien
    @IBAction func btn_action(_ sender: UIButton)
    {
        setrandom()
    }
    func setrandom(){
        let random1 = Int(arc4random_uniform(4)) + 1// random ra so tu 0-3 //vi + them 1 nen khoang random se la tu 1 den 4
        let random2 = Int(arc4random_uniform(4)) + 1
        print("\(random1) \(random2)") // Hiển thị 2 số ngẫu nhiên
        lbl_p1.text = String(random1)
        lbl_p2.text = String(random2)
        setResult(randomA: random1, randomB: random2)
    }
    // hien thi ket qua
    func setResult(randomA: Int, randomB: Int)
        //ngau nhien vi tri 1
    {
        let randomposision = Int(arc4random_uniform(3))
        if(randomposision == 0)
        {
            btn1.setTitle(String(sum(p1: randomA, p2: randomB)), for: .normal)
            btn2.setTitle(String(randomA), for: .normal)
            btn3.setTitle(String(randomB), for: .normal)
        }
        
        //ngau nhien vi tri 2
        
        
        else if(randomposision == 1)
        {
            btn1.setTitle(String(randomA), for: .normal)
            btn2.setTitle(String(sum(p1: randomA, p2: randomB)), for: .normal)
            btn3.setTitle(String(randomB), for: .normal)
        }
        
        //ngau nhien vi tri 3
        
        
        else if(randomposision == 2)
        {
            btn1.setTitle(String(randomB), for: .normal)
            btn2.setTitle(String(randomA), for: .normal)
            btn3.setTitle(String(sum(p1: randomA, p2: randomB)), for: .normal)
        }
        
        
            }
    
    //tinh tong
    func sum(p1: Int, p2: Int) -> Int
    {
        return p1+p2;
    }
    
}

