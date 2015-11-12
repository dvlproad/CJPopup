//
//  PopupInWindowVC.m
//  CJPopupViewDemo
//
//  Created by lichq on 15/11/12.
//  Copyright (c) 2015年 ciyouzen. All rights reserved.
//

#import "PopupInWindowVC.h"
#import "WelcomeViewToPop.h"
#import "CJPopupView.h"

@interface PopupInWindowVC ()<WelcomeViewToPopDelegate>

@end

@implementation PopupInWindowVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}


- (IBAction)popupInWindow_center:(UIButton *)sender{
    WelcomeViewToPop *view = (WelcomeViewToPop *)[[[NSBundle mainBundle] loadNibNamed:@"WelcomeViewToPop" owner:nil options:nil] lastObject];
    view.delegate = self;
    [view popupInWindowLocationType:PopupInWindowLocationCenter animationType:CJPopupViewAnimationCATransform3D];
}


- (IBAction)popupInWindow_bottom:(id)sender{
    WelcomeViewToPop *view = (WelcomeViewToPop *)[[[NSBundle mainBundle] loadNibNamed:@"WelcomeViewToPop" owner:nil options:nil] lastObject];
    view.delegate = self;
    [view popupInWindowLocationType:PopupInWindowLocationBottom animationType:CJPopupViewAnimationCATransform3D];
}

- (void)dismissPopupView:(UIView *)view{
    [view dismissPopupViewInWindowWithAnimationType:CJPopupViewAnimationCATransform3D];
    
    NSString *message = @"[alert show]应该放在dismiss...之后，否则会造成dismiss...所对应的keywindow不对应";
    [[[UIAlertView alloc]initWithTitle:@"注意" message:message delegate:nil cancelButtonTitle:@"好的，一定注意" otherButtonTitles:nil] show];
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