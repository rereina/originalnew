//
//  ViewController5.swift
//  original application
//
//  Created by 佐藤　玲奈 on 2015/06/24.
//  Copyright (c) 2015年 佐藤　玲奈. All rights reserved.
//

import UIKit

class ViewController5: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        makeTime(1, goal: 100)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    //メソッド
    func makeTime(start: Int, goal: Int) {
        let myview : UIView = UIView()
        myview.frame = CGRectMake(0, CGFloat(start*10), CGFloat(30), CGFloat((goal-start)*30))
        myview.backgroundColor = UIColor.redColor()
        print(self)
        self.view.addSubview(myview)
        
    }
    
    
    
}
