//
//  MainViewController.h
//  3DTouch Previewing
//
//  Created by Paolo Furlan on 09/10/15.
//  Copyright © 2015 Paolo Furlan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MainViewController : UIViewController <UIViewControllerPreviewingDelegate>

@property (weak, nonatomic) IBOutlet UIButton *btnDetail;

@end