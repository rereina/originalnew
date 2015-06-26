//
//  ViewController2.swift
//  original application
//
//  Created by 佐藤　玲奈 on 2015/06/24.
//  Copyright (c) 2015年 佐藤　玲奈. All rights reserved.
//

import UIKit

class ViewController2: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    var places = ["リビング", "自分の部屋", "洗面所", "トイレ"]
    //数値の範囲（1...10という記法）を配列にする
    //var dataArray:[Int] = ([Int])(0...24)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int{
        return 1
    }
    
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return places.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String!{
        return "\(places[row])"
        
        
    }
    
    
    
    
    //picker の表示
    @IBAction func next(sender: AnyObject){
    var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        //AppDelegateのインスタンスを取得
      appDelegate.message = "message"
    }

    
   /* var PickerView1 = UIPickerView()
    @IBOutlet var label : UILabel!
    
    
    PickerView1.dataSource = self
    PickerView1.delegate = self
    
    // Picker View の列数=1
    func numberOfComponentsInPickerView(pickerview1: UIPickerView) -> Int {
        return 1
    }
    // Picker View の行数=リスト数
    func PickerView(PickerView1: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return places.count
    }
    // Picker View に表示する文字列
    func PickerView(PickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return places[row]
    }
    // Picker View で選択されたときに実行する処理
    func PickerView(PickerView1: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        label1.text =  places[row] + "の都道府県コードは" + String(row + 1) + "です。"
    }

    @IBAction func place (sender:選択したもの ){
    label.text = format(選択したもの.,〜)*/
    }
    



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


