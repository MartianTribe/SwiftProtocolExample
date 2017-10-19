//
//  ViewController.swift
//  ProtocolExample
//
//  Created by Steven Suranie on 10/19/17.
//  Copyright © 2017 Steven Suranie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtExplanation: UITextView!
    @IBOutlet weak var btnSolution: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let rtfPath = Bundle.main.url(forResource: "interfave_v_inheritiance", withExtension: "rtf") {
            do {
                let attributedStringWithRtf: NSAttributedString = try NSAttributedString(url: rtfPath, options: [NSAttributedString.DocumentReadingOptionKey.documentType: NSAttributedString.DocumentType.rtf], documentAttributes: nil)
                self.txtExplanation.attributedText = attributedStringWithRtf
            } catch let error {
                print("Got an error \(error)")
            }
        }
    }
    
    @IBAction func showSolution(_ sender: Any) {
        performSegue(withIdentifier: "toSolution", sender: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

