//
//  ViewController.swift
//  Srijan
//
//  Created by Priyabrat Duarah on 31/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gallery: UIImageView!
    @IBOutlet weak var speakerProfile: UIImageView!
    @IBOutlet weak var speakerName: UILabel!
    @IBOutlet weak var speakerDescription: UILabel!
    @IBOutlet weak var galleryControl: UIPageControl!
    @IBOutlet weak var speakerControl: UIPageControl!
    @IBOutlet weak var linkedInButton: UIButton!
    
    let speakerNames = ["Shantanu Jain","Pushkar Raj","Global Rashid","Sankar Bora"]
    
    let speakerDescriptions = ["Co-Founder at Readon.in and secured AIR 10 in CA","CEO & Founder at Coursedes Learing Solutions Pvt. Ltd.","Internet Marketer on Youtube, investor at Bittrex","Founder & COO @ DealShare.in and Co-Founder @ VP sales"]
    
    var i = 1
    var j = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gallery.image = UIImage(named: "Image\(i)")
        self.gallery.layer.masksToBounds = true
        
        speakerProfile.image = UIImage(named: "speakerImage\(j)")
        speakerName.text = speakerNames[0]
        
        galleryControl.currentPage = i-1;
        speakerControl.currentPage = j;
        
        linkedInButton.addTarget(self, action: Selector(("linkedInPressed")), for: .touchUpInside)
        
        navigationItem.hidesBackButton = true
        // Do any additional setup after loading the view.
    }

    @IBAction func rightScroll(_ sender: UIButton) {
        if i==3
        {
            i = 1
        }
        
        else
        {
            i += 1
        }
        
        gallery.image = UIImage(named: "Image\(i)")
        
        galleryControl.currentPage = i-1
    }
    
    @IBAction func leftScroll(_ sender: UIButton) {
        if i==1
        {
            i = 3
        }
        
        else
        {
            i -= 1
        }
        
        gallery.image = UIImage(named: "Image\(i)")
        
        galleryControl.currentPage = i-1
    }
    
    @IBAction func speakerRightScroll(_ sender: UIButton) {
        if j==3
        {
            j = 0
        }
        
        else
        {
            j += 1
        }
        
        speakerProfile.image = UIImage(named: "speakerImage\(j)")
        speakerName.text = speakerNames[j]
        speakerDescription.text = speakerDescriptions[j]
        
        speakerControl.currentPage = j
    }
    
    @IBAction func speakerLeftScroll(_ sender: UIButton) {
        if j==0
        {
            j = 3
        }
        
        else
        {
            j -= 1
        }
        
        speakerProfile.image = UIImage(named: "speakerImage\(j)")
        speakerName.text = speakerNames[j]
        speakerDescription.text = speakerDescriptions[j]
        
        speakerControl.currentPage = j
    }
    
    
    @IBAction func linkedInPressed(_ sender: UIButton) {
        UIApplication.shared.openURL(NSURL(string: "http://www.google.com")! as URL)
    }
}


