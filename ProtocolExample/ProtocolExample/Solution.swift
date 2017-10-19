//
//  Solution.swift
//  ProtocolExample
//
//  Created by Steven Suranie on 10/19/17.
//  Copyright © 2017 Steven Suranie. All rights reserved.
//

import UIKit

class Solution: UIViewController {
    
    @IBOutlet weak var btnGS: UIButton!
    @IBOutlet weak var btnLab: UIButton!
    @IBOutlet weak var btnPug: UIButton!
    @IBOutlet weak var btnBasenji: UIButton!
    @IBOutlet weak var lblDogInfo: UILabel!
    
    let myGermanShepherd = GermanShepherd(name:"Max", age:5)
    let myLab = LabradorRetriever(name:"Fido", age:4)
    let myPug = Pug(name:"Sleepy", age: 3)
    let myBasenji = Basenji(name:"Arrow", age:10)
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func showGS(_ sender: Any) {
        
        let strSpeak = myGermanShepherd.speak()
        let strSniff = myGermanShepherd.sniffDrugs()
        
        lblDogInfo.text = "I am \(myGermanShepherd.name) I'm \(myGermanShepherd.age) years old.\(strSpeak)\n\(strSniff)"
        
    }
    
    @IBAction func showLab(_ sender: Any) {
        
        let strSpeak = myLab.speak()
        let strSniff = myLab.sniffDrugs()
        let strSwim = myLab.swim()
        
        lblDogInfo.text = "I am \(myLab.name) I'm \(myLab.age) years old. \(strSpeak)\n\(strSniff)\n\(strSwim)"
    }
    
    @IBAction func showPug(_ sender: Any) {
        
        let strSpeak = myPug.speak()
        let strSwim = myPug.swim()
        let strSleep = myPug.sleep()
        
        lblDogInfo.text = "I am \(myPug.name), I'm \(myPug.age) years old. \(strSpeak)\n\(strSwim)\n\(strSleep)"
    }
    
    @IBAction func showBasenji(_ sender: Any) {
        
        let strDestroy = myBasenji.destroy()
        lblDogInfo.text = "I am \(myBasenji.name) I'm \(myBasenji.age) years old. \(strDestroy)"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
