//
//  ViewController.m
//  加法计算器
//
//  Created by apple on 2020/10/6.
//  Copyright © 2020 wzazzy. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

- (IBAction)compute;

// 表示第一个文本框
@property (weak, nonatomic) IBOutlet UITextField *txtNum1;

// 表示第二个文本框
@property (weak, nonatomic) IBOutlet UITextField *txtNum2;

// 表示计算结果的显示
@property (weak, nonatomic) IBOutlet UILabel *getResult;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

// 点击计算按钮执行这个方法
- (IBAction)compute {
    NSLog(@"哈哈哈哈哈");
    // 获取用户的输入
    int num1 = self.txtNum1.text.intValue;
    int num2 = self.txtNum2.text.intValue;

    // 计算结果
    int ans = num1 + num2;

    // 把结果显示到label上
    self.getResult.text = [NSString stringWithFormat:@"%d", ans];

    
    // 将键盘召回
    // 方法一:
    // 谁叫出的键盘，谁就是第一响应者 让第一响应者辞职，键盘就召回了
//    [self.txtNum2 resignFirstResponder];
//    [self.txtNum1 resignFirstResponder];
    
    
    // 方法二:
    // self.view表示当前控制器所管理的那个view（每一个控制器都会管理一个view）
    // 这时把键盘召回的思路就是 让控制器所管理的view停止编辑 这样的话，凡是这个view的子控件叫出的键盘就都回去了
    [self.view endEditing:YES];
    
    
}
@end
