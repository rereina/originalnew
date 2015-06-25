//
//  ViewController.swift
//  original application
//
//  Created by 佐藤　玲奈 on 2015/06/24.
//  Copyright (c) 2015年 佐藤　玲奈. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var pushToView2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   /* override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        if (segue.identifier == "next") {
        }
    }
    
    @IBAction func push(sender : UIButton) {
        performSegueWithIdentifier("next",sender: nil)
    }
    
    //unwind
    @IBAction func exitTo(segue: UIStoryboardSegue) {
        if (segue.identifier == "back") {
        }
        
    }*/


    //@IBOutlet weak var pushToView2: UIButton!
   
   /* @IBAction func backFromSecondView(segue:UIStoryboardSegue){
        NSLog("FirstViewController#backFromSecondView")
    }
    */
}