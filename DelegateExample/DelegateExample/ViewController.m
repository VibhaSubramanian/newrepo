//
//  ViewController.m
//  DelegateExample
//
//  Created by qburst on 23/06/16.
//  Copyright © 2016 qburst. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSString *newString = [textField.text stringByReplacingCharactersInRange:range withString:string];
    [self updateLabelsWithText: newString];
    
    return YES;
}

-(void) updateLabelsWithText:(NSString *)string
{
    [updateLabel setText:string];
}
@end
