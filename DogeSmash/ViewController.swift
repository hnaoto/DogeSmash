//
//  ViewController.swift
//  DogeSmash
//
//  Created by Trinity on 10/15/15.
//  Copyright © 2015 Trinity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputNumber: UITextField!
    @IBOutlet weak var numberImage: UIImageView!
    
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?){
        view.endEditing(true)
        super.touchesBegan(touches, withEvent: event)
    }
    
    
    


    @IBAction func okTapped(sender: AnyObject) {
        if let number = Int(inputNumber.text!) {
            if(is_prime(number)){
                numberImage.image = UIImage(named: "wow")
            }else {
                numberImage.image = UIImage(named: "not_wow")
            }
        }else {
            //notify user
        }
        

   
    }
    

    
    
    func is_prime(n: Int) -> Bool{
        if (n <= 1) {
            return false
        }
        if (n <= 3) {
            return true
        }
        var i = 2
        while (i*i <= n) {
            if (n % i == 0) {
                return false
            }
            i++
        }
        return true
    }
    
}

