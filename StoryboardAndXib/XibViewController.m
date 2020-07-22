//
//  XibViewController.m
//  StoryboardAndXib
//
//  Created by Civet on 2020/7/21.
//  Copyright © 2020 PersonalONBYL. All rights reserved.
//

#import "XibViewController.h"

@interface XibViewController ()

@end

@implementation XibViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)entryTableViewPageClick:(id)sender {
    TableViewController *tableVC = [[TableViewController alloc] initWithNibName:@"TableViewController" bundle:nil];
    [self.navigationController pushViewController:tableVC animated:YES];
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
