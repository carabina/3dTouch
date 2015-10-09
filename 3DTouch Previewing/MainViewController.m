//
//  MainViewController.m
//  3DTouch Previewing
//
//  Created by Paolo Furlan on 09/10/15.
//  Copyright © 2015 Paolo Furlan. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.btnDetail.backgroundColor = [UIColor cyanColor];
    
    //check if the device supports 3DTouch
    if(self.traitCollection.forceTouchCapability == UIForceTouchCapabilityAvailable){
        [self registerForPreviewingWithDelegate:self sourceView:self.view];
    }else{
        [[[UIAlertView alloc] initWithTitle:@"Error" message:@"3DTouch not available" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil] show];
    }
}



#pragma mark - Previewing delegate

- (UIViewController *)previewingContext:(id <UIViewControllerPreviewing>)previewingContext viewControllerForLocation:(CGPoint)location
{
    UIViewController *detailVC = [self.storyboard instantiateViewControllerWithIdentifier:@"detail"];
    
    detailVC.preferredContentSize = CGSizeMake(0.0, 320.0);
   
    previewingContext.sourceRect = self.btnDetail.frame;
   
    return detailVC;
}

- (void)previewingContext:(id <UIViewControllerPreviewing>)previewingContext commitViewController:(UIViewController *)viewControllerToCommit
{
    [self showViewController:viewControllerToCommit sender:self];
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
