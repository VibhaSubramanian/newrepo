//
//  ViewController.h
//  HelloWorld
//
//  Created by qburst on 22/06/16.
//  Copyright © 2016 qburst. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSString *myString_;
   
}
@property (nonatomic, strong) NSString *myString;

@property (nonatomic, strong) IBOutlet UIButton *submitButton;
@property (nonatomic, strong) IBOutlet UITextField *nameTextField;
@property (nonatomic, strong) IBOutlet UITextField *passwordTextField;
@property (nonatomic, strong) IBOutlet UILabel *namePasswordLabel;
@property (nonatomic, strong) IBOutlet UILabel *namePassword;

//-(IBAction)touchButton:(id)sender;
@end

