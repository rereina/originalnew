//
//  ViewController3.swift
//  original application
//
//  Created by 佐藤　玲奈 on 2015/06/24.
//  Copyright (c) 2015年 佐藤　玲奈. All rights reserved.
//

import UIKit


class ViewController3: UIViewController,UITextFieldDelegate, UIPickerViewDataSource, UIPickerViewDelegate {
    
    
    
    //private var myTextField: UITextField!
    @IBOutlet weak var perfect: UIButton!
    @IBOutlet weak var check: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    //数値の範囲（1...10という記法）を配列にする
    var dataArray:[Int] = ([Int])(0...24)
    
    //PickerViewのコンポーネントの数を決めるメソッド
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //PickerViewのコンポーネント内の行数を決めるメソッド
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dataArray.count
    }
    
    //PickerViewのコンポーネントに表示するデータを決めるメソッド
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        
        //配列の値を文字列に変換してPickerのtitleに使う
        return String(dataArray[row]) + "："
    }
    
    //picker の表示
    @IBAction func next(sender: AnyObject){
        var appDelegate:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        //AppDelegateのインスタンスを取得
        appDelegate.message = "message"
    }

    
    /*// UITextFieldを作成する.
        myTextField = UITextField(frame: CGRectMake(0,0,200,30))
        
        // 表示する文字を代入する.
        myTextField.text = ""
        
        // Delegateを設定する.
        myTextField.delegate = self
        
        // 枠を表示する.
        myTextField.borderStyle = UITextBorderStyle.RoundedRect
        
        // UITextFieldの表示する位置を設定する.
        myTextField.layer.position = CGPoint(x:self.view.bounds.width/2,y:100);
        
        // Viewに追加する.
        self.view.addSubview(myTextField)
    }*/
    

        // Do any additional setup after loading the view.
        
        // TextFieldのアウトレット
        @IBOutlet weak var textField: UITextField!
        
        // Labelのアウトレット
        @IBOutlet weak var label: UILabel!
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
    
    @IBAction func perfect( sender:AnyObject){
        // データ保存処理
        
        // NSUserDefaultsインスタンスの生成
        let userDefaults = NSUserDefaults.standardUserDefaults()
        
        // キー: "saveText" , 値: "" を格納。（idは任意）
        userDefaults.setObject(textField.text, forKey: "saveText")
        
    }
    
    @IBAction func check (sender:AnyObject){
    }
}
/*/*
UITextFieldが編集された直後に呼ばれるデリゲートメソッド.
*/
func textFieldDidBeginEditing(textField: UITextField){
    println("textFieldDidBeginEditing:" + textField.text)
}

/*
UITextFieldが編集終了する直前に呼ばれるデリゲートメソッド.
*/
func textFieldShouldEndEditing(textField: UITextField) -> Bool {
    println("textFieldShouldEndEditing:" + textField.text)
    
    return true
}

/*
改行ボタンが押された際に呼ばれるデリゲートメソッド.
*/
func textFieldShouldReturn(textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    
    return true*/
    



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


