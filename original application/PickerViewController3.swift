//
//  PickerViewController3.swift
//  original application
//
//  Created by 佐藤　玲奈 on 2015/06/27.
//  Copyright (c) 2015年 佐藤　玲奈. All rights reserved.
//

import UIKit

class PickerViewController3: UIViewController {
    @protocol PickerViewControllerDelegate;
    
    @interface PickerViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>
    
    @property (weak, nonatomic) IBOutlet UIPickerView *picker;
    
    // 空の領域にある透明なボタン
    @property (weak, nonatomic) IBOutlet UIButton *closeButton;
    
    // 処理のデリゲート先の参照
    @property (weak, nonatomic) id<PickerViewControllerDelegate> delegate;
    
    // PickerViewを閉じる処理を行うメソッド。closeButtonが押下されたときに呼び出される
    - (IBAction)closePickerView:(id)sender;
    
    @end
    
    @protocol PickerViewControllerDelegate <NSObject>
    // 選択された文字列を適用するためのデリゲートメソッド
    -(void)applySelectedString:(NSString *)str;
    // 当該PickerViewを閉じるためのデリゲートメソッド
    -(void)closePickerView:(PickerViewController *)controller;
    @end
    
    @interface PickerViewController ()
    
    @end
    
    @implementation PickerViewController
    
    - (void)viewDidLoad
    {
    [super viewDidLoad];
    
    // PickerViewのデリゲート先とデータソースをこのクラスに設定
    self.picker.delegate = self;
    self.picker.dataSource = self;
    }
    
    // PickerViewで要素が選択されたときに呼び出されるメソッド
    - (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    // デリゲート先の処理を呼び出し、選択された文字列を親Viewに表示させる
    [self.delegate applySelectedString:[NSString stringWithFormat:@"%d", row]];
    }
    
    // PickerViewの列数を指定するメソッド
    - (NSInteger)numberOfComponentsInPickerView:(UIPickerView*)pickerView {
    return 1;
    }
    
    // PickerViewに表示する行数を指定するメソッド
    -(NSInteger)pickerView:(UIPickerView*)pickerView numberOfRowsInComponent:(NSInteger)component {
    return 10;
    }
    
    // PickerViewの各行に表示する文字列を指定するメソッド
    -(NSString*)pickerView:(UIPickerView*)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [NSString stringWithFormat:@"%d", row];
    }
    
    // 空の領域にある透明なボタンがタップされたときに呼び出されるメソッド
    - (IBAction)closePickerView:(id)sender {
    // PickerViewを閉じるための処理を呼び出す
    [self.delegate closePickerView:self];
    }
    
    @end

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

}
