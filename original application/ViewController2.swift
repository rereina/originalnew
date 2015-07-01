//
//  ViewController2.swift
//  original application
//
//  Created by 佐藤　玲奈 on 2015/06/24.
//  Copyright (c) 2015年 佐藤　玲奈. All rights reserved.
//

import UIKit
import UIKit

class ViewController2: UIViewController,UIPickerViewDelegate,UIToolbarDelegate {
    
    var placeArr: NSArray = ["リビング", "自分の部屋", "洗面所", "トイレ","その他"]
    var timeArr: NSArray =
    ["0","5","10","15","20","25","30","35","40","45","50","55","60","65","70","75","80","85","90","95","100","105","110","115","120"]
   // var kinmuchiArr: NSArray = [""]
    
    
    
    var myUIPicker: UIPickerView = UIPickerView()
    var myToolBar: UIToolbar!
    var myTextField1: UITextField!
    var myTextField2: UITextField!
    @IBOutlet var textfield : UITextField!
    //var myTextField3: UITextField!
    var myPickerView: UIPickerView!
    var planArr:NSArray = []
    @IBOutlet var mylabel:UILabel!
    
    var place: [String] = []
    var time : [String] = []
    var num = 0
    
    
    //private let labelText = ["hours", "mins", "sec"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //PickerView作成
        myPickerView = UIPickerView()
        myPickerView.showsSelectionIndicator = true
        myPickerView.delegate = self
       // println("分")
        
        //TextField作成
        myTextField1 = UITextField(frame: CGRectMake(100, 500, 320, 50))
        //初期化
        myTextField1.placeholder = placeArr[0] as? String;
        //println("時")
        self.view.addSubview(myTextField1)
        
        myTextField2 = UITextField(frame: CGRectMake(250, 500, 320, 50))
        myTextField2.placeholder = timeArr[0] as? String;
       // println("分")
        self.view.addSubview(myTextField2)
        
        //myTextField3 = UITextField(frame: CGRectMake(920, 950, 0, 0))
        //myTextField3.placeholder = kinmuchiArr[0] as? String;
        //self.view.addSubview(myTextField3)
        
        
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
        
       // var A:AnyObject = A.objectForKey("openKey")
       // myTextField3.inputView = myPickerView
        //myTextField3.inputAccessoryView = myToolBar
        
        
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
        
        return 2
        
    }
    
    
    
    //表示個数
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        
        
        if (component == 0){
            
            return placeArr.count
            
        }else if (component == 1){
            
            return timeArr.count
            
        //}else if (component == 2){
            
          //  return kinmuchiArr.count
            
        } else {
        
        return 0;
        
    }
    }
    
    
    //表示内容
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String {
        
        
        
        
        if (component == 0){
            return placeArr[row] as! String
            
            
        }else if (component == 1){
            
            return timeArr[row] as! String
            
       // }else if (component == 2){
            
         //   return kinmuchiArr[row] as! String
            
        } else {
        
        return "";
    }
        }
    
    
    //選択時
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        
        
        if (component == 0){
            
            println("列: \(row)")
            
            println("値: \(placeArr[row])")
            
            myTextField1.text = placeArr[row] as? String;
            
        }else if (component == 1){
            
            println("列: \(row)")
            
            println("値: \(timeArr[row]) ")
            myTextField2.text = timeArr[row] as? String;
       // }else if (component == 2){
            
         //   println("列: \(row)")
            
           // println("値: \(kinmuchiArr[row])")
            //myTextField3.text = kinmuchiArr[row] as? String;
            
        }
        }
    
    
    
    
    
     func perfect( sender:AnyObject){
        
        // Aというインスタンスの生成
        let userDefaults = NSUserDefaults.standardUserDefaults()
        let userDefaults2 = NSUserDefaults.standardUserDefaults()
        
        // データ保存処理
      // planArr += ["myTextField"]

        
        place.append(self.myTextField1.text)
        time.append(self.myTextField2.text)
        
        //配列をopenKeyで保存
            userDefaults.setObject(place, forKey: "openKey")
       userDefaults.synchronize()
        
         mylabel.text = place[num]
        userDefaults2.setObject(time, forKey : "open")
        userDefaults2.synchronize()
      mylabel.text = time[num]
        //表示
       // println(AId)
        
        //キー: "id" , 値: "" を格納。（idは任意）
       //A.setObject(x,forKey: "id")
}


        //「ud」というインスタンスをつくる。
        //let ud = NSUserDefaults.standardUserDefaults()
        
        // キーがidの値をとります。
        
        //var udId : AnyObject! = ud.objectForKey("id")


        // これで表示。
        //println(udId)

    
    // func check (sender:AnyObject){
    
    
    
    //閉じる
    func onClick(sender: UIBarButtonItem) {
        myTextField1.resignFirstResponder() //値を取得して、表示している
        myTextField2.resignFirstResponder()
       // myTextField3.resignFirstResponder()
        //値を格納
        let places2 = NSUserDefaults.standardUserDefaults()
        places2.setObject("myTextField1", forKey: "id")
    }
    @IBAction func delete() {
        let places3 = NSUserDefaults.standardUserDefaults()
        places3.removeObjectForKey("id")
    }

}
    /*
    
    
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView!) -> Int {
        return 1
    }
    
    func numberOfComponentsInPIckerView(pickerView1:UIPickerView!) -> Int{
        return 1
        
    }
    
    func pickerView(pickerView: UIPickerView!, numberOfRowsInComponent component: Int) -> Int {
        return salarymanArr.count
        //return salarymanArr1.count
        
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return salarymanArr[row] as? String;
        //return salarymanArr1[row] as? String;
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        myTextField.text = salarymanArr[row] as? String;
        //myTextField1.text = salarymanArr1[row] as? String
    }
    //閉じる
    func onClick(sender: UIBarButtonItem) {
        myTextField.resignFirstResponder()
    }
    
    
    
    //func numberOfComponentsInPickerView(pickerView: UIPickerView!) -> Int {
      //  return 1
   // }
    
    func pickerView1(pickerView1: UIPickerView!, numberOfRowsInComponent component: Int) -> Int {
        return salarymanArr1.count
        //return salarymanArr1.count
        
    }
    
    func pickerView1(pickerView1: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return salarymanArr1[row] as? String;
        //return salarymanArr1[row] as? String;
    }
    
    func pickerView1(pickerView1: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        myTextField1.text = salarymanArr1[row] as? String;
    }
    
    //閉じる
    func onClick1(sender: UIBarButtonItem) {
    myTextField1.resignFirstResponder()
}*/








    /*func numberOfComponentsInPickerView(pickerView: UIPickerView!) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView!, numberOfRowsInComponent component: Int) -> Int {
        return salarymanArr1.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return salarymanArr1[row] as? String;
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        myTextField1.text = salarymanArr1[row] as? String;
    }
    
    //閉じる
    func onClick(sender: UIBarButtonItem) {
        myTextField1.resignFirstResponder()
    }
    */
    
    
    

    
    
    
    
    
    
    
    
    
    
    
    // override func didReceiveMemoryWarning() {
      //  super.didReceiveMemoryWarning()
    //}
    
//}


/*class ViewController2: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
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
    */*/


