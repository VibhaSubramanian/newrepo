//
//  ViewController.m
//  DelegateExample
//
//  Created by qburst on 23/06/16.
//  Copyright © 2016 qburst. All rights reserved.
//

#import "LoginViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



// ****Delegate Example
//- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
//  {
//    NSString *newString = [textField.text stringByReplacingCharactersInRange:range withString:string];
//    [self updateLabelsWithText: newString];
//    return YES;
//  }

// -(void) updateLabelsWithText:(NSString *)string
//   {
//   [updateLabel setText:string];
//   }


    
    
-(IBAction)buttonPressed:(id)sender
{
    NSString *username =@"Vibha";
    NSString  *password = @"abcd";
    NSString *checkPassword=passwordTextField.text;
    NSString *checkUsername= usernameTextField.text;
 //   Compare Password
      if([password isEqualToString: checkPassword] && [username isEqualToString: checkUsername] )
        {
          /*DetailViewController *dc=[self.storyboard instantiateViewControllerWithIdentifier:@"Detailview"];
          [self.navigationController pushViewController:dc animated:YES];*/
            
            SimpleTableViewController *dc=[self.storyboard instantiateViewControllerWithIdentifier:@"SimpleTableview"];
            [self.navigationController pushViewController:dc animated:YES];
            
            
            
         }
        else{
           UIAlertController *alert= [UIAlertController  alertControllerWithTitle: @"Hi...."
                                                                               message: @"Information invalid"
                                                                         preferredStyle:UIAlertControllerStyleAlert];
            UIAlertAction *action=[UIAlertAction actionWithTitle:(@"Cancel")
                                                           style: UIAlertActionStyleDefault
                                                         handler:^(UIAlertAction *  action) {
           }];
           [alert addAction:action];
            [self presentViewController:alert animated:YES completion:nil];
       }
    
    
    
    

//  DetailViewController *dc=[self.storyboard instantiateViewControllerWithIdentifier:@"Detailview"];
//  [self.navigationController pushViewController:dc animated:YES];
   }
@end
