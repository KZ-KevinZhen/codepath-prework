//
//  ViewController.swift
//  kevin_ios_prework
//
//  Created by Kevin Zhen on 1/31/25.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        
        let randomColor = changeColor()
        view.backgroundColor = randomColor
        func changeColor() ->UIColor {
            
            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)
            
            return UIColor(red:red, green:green, blue:blue, alpha:0.5)
        }
    }
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var job: UILabel!
    @IBOutlet weak var college: UILabel!
    @IBAction func changeTextColor(_ sender: Any) {
        college.textColor = changeColor()
        name.textColor = changeColor()
        job.textColor = changeColor()
        
       func changeColor() ->UIColor {
            
            let red = CGFloat.random(in: 0...1)
            let green = CGFloat.random(in: 0...1)
            let blue = CGFloat.random(in: 0...1)
            
            return UIColor(red:red, green:green, blue:blue, alpha:0.5)
            
            
        }
        
    }
   
    @IBAction func changeTextSize(_ sender: UIButton) {
        func randomTextSize() -> CGFloat {
            return CGFloat.random(in: 10...30)
        }

        let size = randomTextSize()

        name.font = UIFont.systemFont(ofSize: size)
        job.font = UIFont.systemFont(ofSize: size)
        college.font = UIFont.systemFont(ofSize: size)
        
        }
    }

