//
//  ViewController4.swift
//  original application
//
//  Created by 佐藤　玲奈 on 2015/06/24.
//  Copyright (c) 2015年 佐藤　玲奈. All rights reserved.
//

import UIKit

class ViewController4: UIViewController {
    var n : Int = 0
    var  goal1 : Int = 0
   // var z1 : Int?
//var x : String?
   // var t : Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
        
        
        baseline1(0,goal0: 0)
        baseline2(0, goal0: 0)
        side1(0,goal1:0)
        side2(0,goal1:0)
        side3(0,goal1:0)
        side4(0,goal1:0)
        schedual1 (147,goal1: goal1(n))
        //side4(0,goal1:0)
       // makeTime(0, 0)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func new(sender: AnyObject){
        
    var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate //AppDelegateのインスタンスを取得
    var message = appDelegate.message
        
        
    }


        //メソッド
    func baseline1(start:Int, goal0:Int){
        let myview : UIView = UIView()
        myview.frame = CGRectMake(0, 94, 380, 3)
        //myview.frame = CGRectMake(0, 497, 380, 3)
        myview.backgroundColor = UIColor.blackColor()
        self.view.addSubview(myview)
        }
    func baseline2(start:Int, goal0:Int){
        let myview : UIView = UIView()
        //myview.frame = CGRectMake(0, 90, 380, 3)
        myview.frame = CGRectMake(0, 587, 380, 3)
        myview.backgroundColor = UIColor.blackColor()
        self.view.addSubview(myview)
    }
    func side1(start:Int, goal1:Int){
        let myview : UIView = UIView()
        myview.frame = CGRectMake(70, 94, 4, 496)
        //myview.frame = CGRectMake(0, 497, 380, 3)
        myview.backgroundColor = UIColor.blackColor()
        self.view.addSubview(myview)
    }

    func side2(start:Int, goal1:Int){
        let myview : UIView = UIView()
    myview.frame = CGRectMake(144, 94, 4, 496)
    //myview.frame = CGRectMake(0, 497, 380, 3)
    myview.backgroundColor = UIColor.blackColor()
    self.view.addSubview(myview)
}

func side3(start:Int, goal1:Int){
    let myview : UIView = UIView()
    myview.frame = CGRectMake(222, 94, 4, 496)
    //myview.frame = CGRectMake(0, 497, 380, 3)
    myview.backgroundColor = UIColor.blackColor()
    self.view.addSubview(myview)
}

func side4(start:Int, goal1:Int){
    let myview : UIView = UIView()
    myview.backgroundColor = UIColor.blackColor()
    myview.frame = CGRectMake(296, 94, 4, 496)
   // myview.frame = CGRectMake(350, 100,10, 10)
    //myview.backgroundColor = UIColor.blackColor()
    self.view.addSubview(myview)
}
    func schedual1(start:Int, goal1:Int){
        let userDefaults = NSUserDefaults()
       //var place:Array = userDefaults.arrayForKey("openKey")!
    //var time:Array = userDefaults.arrayForKey("open")!
        
        //var goal1 : Int = 0
        var z : Int = 0
       // var place : NSMutableArray = [0]
        
        
       // var z1 : Int = 0
        /*for n = 1 ; n < 1000; n++ {
            for n = 0; n < n ; z + n++ {
                z = z + method(n)
            }
            let myview : UIView = UIView()
            let userDefaults = NSUserDefaults.standardUserDefaults()
           let place = userDefaults.objectForKey("openKey") as! NSMutableArray!
            x = (place[n] as! String)
        // x = placeArr[n] as! String;()
            myview.frame = CGRectMake(222, CGFloat(93 + 4 * goal1), CGFloat(70), CGFloat(93 + 4 * goal1))
        
        if place[n] as! String == "リビング" {
        myview.backgroundColor = UIColor.redColor()
        } else if (place[n] as! String == "自分の部屋") {
            myview.backgroundColor = UIColor.blueColor()
        } else if (place[n] as! String == "洗面所") {
            myview.backgroundColor = UIColor.greenColor()
        } else if place[n] as! String == "トイレ" {
            myview.backgroundColor = UIColor.purpleColor()
        } else {
            myview.backgroundColor = UIColor.orangeColor()
        }
        self . view . addSubview(myview)
    }*/
        var n : Int = 1
        let myview : UIView = UIView()
        //let userDefaults = NSUserDefaults.standardUserDefaults()
        let place = userDefaults.objectForKey("openKey") as! NSMutableArray!
        var x : String?
        //x = "リビング"
       x = (place[n] as? String)
        if place[n] as? String == "リビング" {
            myview.backgroundColor = UIColor.redColor()
        } else if (place[n] as? String == "自分の部屋") {
            myview.backgroundColor = UIColor.blueColor()
        } else if (place[n] as? String == "洗面所") {
            myview.backgroundColor = UIColor.greenColor()
        } else if place[n] as? String == "トイレ" {
            myview.backgroundColor = UIColor.purpleColor()
        } else {
            myview.backgroundColor = UIColor.orangeColor()
        }
        myview.frame = CGRectMake(222, CGFloat(93 + 4 * goal1), CGFloat(70), CGFloat(93 + 4 * goal1))
        self . view . addSubview(myview)
        
        
    }
        func goal1(n:Int) -> Int{
            let userDefaults2 = NSUserDefaults.standardUserDefaults()
            let time = userDefaults2.objectForKey("open") as! NSMutableArray!
            var t :Int?
       t = time [n] as! Int
        return t!;
    }

}





       /* func makeTime(start: Int, goal: Int) {
            let myview : UIView = UIView()
            myview.frame = CGRectMake(0, CGFloat(start*10), CGFloat(30), CGFloat((goal-start)*30))
            myview.backgroundColor = UIColor.redColor()
            self.view.addSubview(myview)
        
        
    }*/
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

