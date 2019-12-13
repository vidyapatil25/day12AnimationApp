//
//  ViewController.swift
//  day12AnimationApp
//
//  Created by Felix-ITS016 on 03/12/19.
//  Copyright © 2019 Felix. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImage: UIImageView!
    
    @IBAction func animateBall(_ sender: UIButton) {
        switch sender.tag{
        case  101 :
            animateNorthwest()
        case 102:
            animateNorth()
        case 103:
            animateNortheast()
        case 104:
            animatewest()
        case 105:
            animateCenter()
        case 106:
            animateeast()
        case 107:
            animatesouthwest()
        case 108:
            animatesouth()
        case 109:
            animatesoutheast()
        default:
            ""
        }
        
    }
    func  animateNorthwest()
    {
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear, animations:
            {
                self.ballImage.frame = CGRect(x: Double(self.ballImage.frame.origin.x -  50), y: Double(self.ballImage.frame.origin.y - 50 ), width:Double(self.ballImage.bounds.width) , height:Double(self.ballImage.bounds.height))
                
        })
        { (true) in
            print("Up animation completed")
        }
    }
    func  animateNorth()
    {
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear, animations:
            {
                self.ballImage.frame = CGRect(x: Double(self.ballImage.frame.origin.x), y: Double(self.ballImage.frame.origin.y - 100), width:Double(self.ballImage.bounds.width) , height:Double(self.ballImage.bounds.height))
                
        })
        { (true) in
            print("Up animation completed")
        }
    }
    func  animateNortheast()
    {
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear, animations: {
            self.ballImage.frame = CGRect(x: Double(self.ballImage.frame.origin.x + 50), y: Double(self.ballImage.frame.origin.y  - 50), width:Double(self.ballImage.bounds.width) , height:Double(self.ballImage.bounds.height))
            
        })
        { (true) in
            print("down animation completed")
        }
    }
    func  animatewest()
    {
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear, animations: {
            self.ballImage.frame = CGRect(x: Double(self.ballImage.frame.origin.x - 100), y: Double(self.ballImage.frame.origin.y ), width:Double(self.ballImage.bounds.width) , height:Double(self.ballImage.bounds.height))
            
        })
        { (true) in
            print("Left animation completed")
        }
    }
    
    func animateCenter() {
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear, animations: {
            self.ballImage.frame = CGRect(x: self.view.center.x-50, y: self.view.center.y-50, width:self.ballImage.frame.size.width , height: self.ballImage.frame.size.height)
        } ,completion:{ (true) in
            print(" Center Animation completed")
        })
        
    }
   
    func  animateeast()
    {
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear, animations: {
            self.ballImage.frame = CGRect(x: Double(self.ballImage.frame.origin.x + 100), y: Double(self.ballImage.frame.origin.y ), width:Double(self.ballImage.bounds.width) , height:Double(self.ballImage.bounds.height))
            
        })
        { (true) in
            print("Right animation completed")
        }
    }
    func  animatesouthwest()
    {
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear, animations: {
            self.ballImage.frame = CGRect(x: Double(self.ballImage.frame.origin.x - 50 ), y: Double(self.ballImage.frame.origin.y + 50 ), width:Double(self.ballImage.bounds.width) , height:Double(self.ballImage.bounds.height))
            
        })
        { (true) in
            print("down animation completed")
        }
    }
    func  animatesouth()
    {
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear, animations: {
            self.ballImage.frame = CGRect(x: Double(self.ballImage.frame.origin.x ), y: Double(self.ballImage.frame.origin.y + 100 ), width:Double(self.ballImage.bounds.width) , height:Double(self.ballImage.bounds.height))
            
        })
        { (true) in
            print("down animation completed")
        }
    }
    func  animatesoutheast()
    {
        UIView.animate(withDuration: 0.5, delay: 0, options: .curveLinear, animations: {
            self.ballImage.frame = CGRect(x: Double(self.ballImage.frame.origin.x + 50 ), y: Double(self.ballImage.frame.origin.y + 50 ), width:Double(self.ballImage.bounds.width) , height:Double(self.ballImage.bounds.height))
            
        })
        { (true) in
            print("down animation completed")
        }
    }
            
        override func viewDidLoad()
        {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


