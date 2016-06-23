//
//  AppDelegate.h
//  HelloWorld
//
//  Created by qburst on 22/06/16.
//  Copyright © 2016 qburst. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong) IBOutlet UILabel *namePasswordLabel;
@property (nonatomic, strong) IBOutlet UITextField *nameTextField;
@end

