//
//  FirstViewController.m
//  StoryboardAndXib
//
//  Created by Civet on 2020/7/23.
//  Copyright © 2020 PersonalONBYL. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize textField1;
@synthesize textField2;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSString *copyString = @"textField output!";
    UIPasteboard *pb = [UIPasteboard generalPasteboard];
    [pb setString:copyString];
    //光标聚集在textField1,textField1成为第一响应
    [textField1 becomeFirstResponder];
}
- (IBAction)SwitchPaste:(id)sender {
    if ([textField1 isFirstResponder]) {
        [textField2 becomeFirstResponder];
    } else {
        [textField1 becomeFirstResponder];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
