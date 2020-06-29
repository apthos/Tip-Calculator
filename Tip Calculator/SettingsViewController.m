//
//  SettingsViewController.m
//  Tip Calculator
//
//  Created by David Lara on 6/24/20.
//  Copyright © 2020 davol00. All rights reserved.
//

#import "SettingsViewController.h"

@interface SettingsViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *defaultControl;

@end

@implementation SettingsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (IBAction)onDefaultSelect:(id)sender {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setDouble: self.defaultControl.selectedSegmentIndex forKey: @"default_tip_percentage"];
    
    [defaults synchronize];
    
    NSLog(@"Default set");
}

@end
