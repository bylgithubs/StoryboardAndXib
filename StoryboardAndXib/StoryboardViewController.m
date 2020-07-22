//
//  StoryboardViewController.m
//  StoryboardAndXib
//
//  Created by Civet on 2020/7/21.
//  Copyright © 2020 PersonalONBYL. All rights reserved.
//

#import "StoryboardViewController.h"

@interface StoryboardViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation StoryboardViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

//页面跳转传值，segue为连接两个ViewController之间的线，sender为触发按钮
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"FirstVC"]) {
        NSLog(@"第一个页面");
    } else {
        NSLog(@"第二个页面");
    }

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 30;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    int flag = indexPath.row%2;
    if (flag) {
        [self performSegueWithIdentifier:@"FirstVC" sender:nil];
    } else {
        [self performSegueWithIdentifier:@"SecondVC" sender:nil];
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
