//
//  MainViewController.m
//  StoryboardAndXib
//
//  Created by Civet on 2020/7/21.
//  Copyright © 2020 PersonalONBYL. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"https://www.baidu.com"]];
    [self.webView loadRequest:request];
}

- (IBAction)XibPageClick:(id)sender {
//    XibViewController *xibVC = [[UIStoryboard storyboardWithName:@"XibViewController" bundle:nil] instantiateInitialViewController];
    XibViewController *xibVC = [[XibViewController alloc] initWithNibName:@"XibViewController" bundle:nil];
    [self.navigationController pushViewController:xibVC animated:YES];
}
- (IBAction)entryStoryboardPageClick:(id)sender {
    StoryboardViewController *storyboardVC = [[UIStoryboard storyboardWithName:@"StoryboardViewController" bundle:nil] instantiateInitialViewController];
    [self.navigationController pushViewController:storyboardVC animated:YES];
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
