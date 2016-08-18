//
//  ViewController.swift
//  DrawingApp
//
//  Created by Nipuna H Herath on 8/18/16.
//  Copyright © 2016 Nipuna H Herath. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var drawView: DrawView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clearTapped() {
        drawView.lines = []
        drawView.setNeedsDisplay()
    }

    @IBAction func colorTapped(sender: UIButton) {
        var color: UIColor
        if (sender.titleLabel?.text == "Red") {
            color = UIColor.redColor()
        }
        else if(sender.titleLabel?.text == "Blue"){
            color = UIColor.blueColor()
        }
        else{
            color = UIColor.blackColor()
        }
        
        drawView.drawColor = color
        
    }
    
}

