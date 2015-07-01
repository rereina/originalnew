//
//  ViewController3.swift
//  original application
//
//  Created by 佐藤　玲奈 on 2015/06/24.
//  Copyright (c) 2015年 佐藤　玲奈. All rights reserved.
//

import UIKit


class ViewController3: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate{
    
    
    var myUIPicker: UIPickerView = UIPickerView()
    var myToolBar: UIToolbar!
    var myTextField1: UITextField!
    var myTextField2: UITextField!
    var myTextField3: UITextField!
    var myPickerView: UIPickerView!

    
    var salarymanArr: NSArray =
    
    ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24"]
    
    var yakushokuArr: NSArray = ["00","01","02","03","04","05","06","07","08","09","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35","36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53","54","55","56","57","58","59"]
    
    var kinmuchiArr: NSArray = [""]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       //PickerView作成
        myPickerView = UIPickerView()
        myPickerView.showsSelectionIndicator = true
        myPickerView.delegate = self
        println("時")
        println("分")
        
        //TextField作成
        myTextField1 = UITextField(frame: CGRectMake(120, 150, 320, 50))
        myTextField1.placeholder = salarymanArr[0] as? String;
        println("時")
        self.view.addSubview(myTextField1)
        
        myTextField2 = UITextField(frame: CGRectMake(220, 150, 320, 50))
        myTextField2.placeholder = salarymanArr[0] as? String;
        println("分")
        self.view.addSubview(myTextField2)
        
        myTextField3 = UITextField(frame: CGRectMake(920, 950, 0, 0))
        myTextField3.placeholder = salarymanArr[0] as? String;
        self.view.addSubview(myTextField3)

        
        //ToolBar作成。ニョキ担当
        myToolBar = UIToolbar(frame: CGRectMake(0, self.view.frame.size.height/6, self.view.frame.size.width, 40.0))
        myToolBar.layer.position = CGPoint(x: self.view.frame.size.width/2, y: self.view.frame.size.height-20.0)
        myToolBar.backgroundColor = UIColor.blackColor()
        myToolBar.barStyle = UIBarStyle.Black
        myToolBar.tintColor = UIColor.whiteColor()
        
        //ToolBarを閉じるボタンを追加
        let myToolBarButton = UIBarButtonItem(title: "Close", style:.Bordered, target: self, action: "onClick:")
        myToolBarButton.tag = 1
        myToolBar.items = [myToolBarButton]
        
        //TextFieldをpickerViewとToolVerに関連づけ
        myTextField1.inputView = myPickerView
        myTextField1.inputAccessoryView = myToolBar
        
        myTextField2.inputView = myPickerView
        myTextField2.inputAccessoryView = myToolBar
        
        myTextField3.inputView = myPickerView
        myTextField3.inputAccessoryView = myToolBar
        
        
    }
    

   /* override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        
        myUIPicker.frame = CGRectMake(0,80,self.view.bounds.width, 180.0)
        
        myUIPicker.delegate = self
        
        myUIPicker.dataSource = self
        
        self.view.addSubview(myUIPicker)
        
    }
    */
    
    
    //表示列
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        
        return 3
        
    }
    
    
    
    //表示個数
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        
        
        if (component == 0){
            
            return salarymanArr.count
            
        }else if (component == 1){
            
            return yakushokuArr.count
            
        }else if (component == 2){
            
            return kinmuchiArr.count
            
        }
        
        return 0;
        
    }
    
    
    
    //表示内容
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String {
        
        

        
        if (component == 0){
            return salarymanArr[row] as! String
            
            
        }else if (component == 1){
            
            return yakushokuArr[row] as! String
            
        }else if (component == 2){
            
            return kinmuchiArr[row] as! String
            
        }
        
        return "";
           }
    
    
    
    //選択時
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        
       
        if (component == 0){
            
            println("列: \(row)")
            
            println("値: \(salarymanArr[row])")
            
            myTextField1.text = salarymanArr[row] as? String;
            
        }else if (component == 1){
            
            println("列: \(row)")
            
            println("値: \(yakushokuArr[row])")
                      myTextField2.text = yakushokuArr[row] as? String;
        }else if (component == 2){
            
            println("列: \(row)")
            
            println("値: \(kinmuchiArr[row])")
            myTextField3.text = kinmuchiArr[row] as? String;
        }
        
        
        
        
        
        
        
        
    }
    
    
    
    
    
    @IBAction func perfect( sender:AnyObject){
        // データ保存処理
        
        // NSUserDefaultsインスタンスの生成
        //値を格納
        let places2 = NSUserDefaults.standardUserDefaults()
        places2.setObject("myTextField1", forKey: "id")
    }
    @IBAction func delete() {
        let places3 = NSUserDefaults.standardUserDefaults()
        places3.removeObjectForKey("id")

        
        // キー: "saveText" , 値: "" を格納。（idは任意）
        //userDefaults.setObject(textField.text, forKey: "saveText")
        
    }
    
   // func check (sender:AnyObject){
    
    
    
    //閉じる
    func onClick(sender: UIBarButtonItem) {
        myTextField1.resignFirstResponder()//値を取得し、表示する
        myTextField2.resignFirstResponder()
        myTextField3.resignFirstResponder()
    
    
    
      func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
    }
    
    
}
}



  /*  //private var myTextField: UITextField!
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
        }*/
    
   /* @IBAction func perfect( sender:AnyObject){
        // データ保存処理
        
        // NSUserDefaultsインスタンスの生成
        let userDefaults = NSUserDefaults.standardUserDefaults()
        
        // キー: "saveText" , 値: "" を格納。（idは任意）
        userDefaults.setObject(textField.text, forKey: "saveText")
        
    }
    
     func check (sender:AnyObject){
    }

/*
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
    
    return true
    




    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

*/