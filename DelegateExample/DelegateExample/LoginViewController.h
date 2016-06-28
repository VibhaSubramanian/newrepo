//
//  ViewController.h
//  DelegateExample
//
//  Created by qburst on 23/06/16.
//  Copyright © 2016 qburst. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailViewController.h"
#import "SimpleTableViewController.h"
@interface LoginViewController : UIViewController

{
    IBOutlet UITextField *usernameTextField;
    IBOutlet UITextField *passwordTextField;
    IBOutlet UIButton *submitButton;
    IBOutlet UILabel *updateLabel;
    
}

-(IBAction)buttonPressed:(id)sender;
@end

