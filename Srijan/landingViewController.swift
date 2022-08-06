//
//  landingViewController.swift
//  Srijan
//
//  Created by Priyabrat  Duarah on 01/08/22.
//

import Foundation
import UIKit

class landingViewController: UIViewController
{
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = ""
        var charIndex = 0
        let titleText = "SRIJAN 3.0"

        for letter in titleText
        {
            Timer.scheduledTimer(withTimeInterval: 0.08 * Double(charIndex), repeats: false) { (timer) in
                self.titleLabel.text?.append(letter)
            }

            charIndex += 1
        }
    }
}
