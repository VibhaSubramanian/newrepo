//
//  SampleDelegate.m
//  HelloWorld
//
//  Created by qburst on 23/06/16.
//  Copyright © 2016 qburst. All rights reserved.
//

#import "SampleDelegate.h"

@implementation SampleDelegate
- (BOOL)nameTextField:(UITextField *)nameTextField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    // Override point for customization after application launch.
    NSString *newString = [nameTextField.text stringByReplacingCharactersInRange:range withString:string];
    [self updateLabel: newString];
    return YES;
}
@end
