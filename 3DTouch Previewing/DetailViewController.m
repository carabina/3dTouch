//
//  DetailViewController.m
//  3DTouch Previewing
//
//  Created by Paolo Furlan on 09/10/15.
//  Copyright © 2015 Paolo Furlan. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()
{
    NSArray *arrayPreviewActions;
}

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.


    arrayPreviewActions = @[
                            [UIPreviewAction actionWithTitle:@"First button" style:UIPreviewActionStyleDefault handler:^(UIPreviewAction * _Nonnull action, UIViewController * _Nonnull previewViewController) {
                                NSLog(@"button selected");
                            }]
                            ];
}

-(NSArray<id<UIPreviewActionItem>> *)previewActionItems
{
    return arrayPreviewActions;
}

- (IBAction)back:(id)sender {
    [self dismissViewControllerAnimated:true completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
