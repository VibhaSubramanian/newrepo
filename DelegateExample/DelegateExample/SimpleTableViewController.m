//
//  ViewController.m
//  FirstAppExample
//
//  Created by qburst on 27/06/16.
//  Copyright © 2016 qburst. All rights reserved.
//

#import "SimpleTableViewController.h"

@interface SimpleTableViewController ()

@end

@implementation SimpleTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    tableData=[[NSMutableArray alloc]initWithObjects: @"1",@"2",@"3",@"4",@"5", nil];
   
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



- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:
    (NSInteger)section
    {
        return [tableData count];
    }


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:
    (NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"cellID";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                             cellIdentifier];
    if (cell == nil)
    {
        cell = [[UITableViewCell alloc]initWithStyle:
                UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    NSString *stringForCell;
    if (indexPath.section == 0)
    {
        stringForCell= [tableData objectAtIndex:indexPath.row];
        
    }
    else if (indexPath.section == 1){
        stringForCell= [tableData objectAtIndex:indexPath.row+ [tableData count]];
        
    }
    
     
    [cell.textLabel setText:stringForCell];
     return cell;
    
}
    


-(IBAction)addData:(id)sender
{
    
        [simpleTable reloadData];
       [tableData addObject:@"6"];
   
  /*  NSMutableArray *indexpath=[[NSMutableArray alloc]init];
    [indexpath addObject:[NSIndexPath indexPathByAddingIndex:6]];
    [simpleTable beginUpdates];
    [simpleTable insertRowsAtIndexPaths:(NSArray *) indexpath withRowAnimation:UITableViewRowAnimationAutomatic];
    [simpleTable endUpdates];*/
   
}
/* NSString *cellValue=cell.textLabel.text;
 [tableData addObject:cellValue];*/




-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:
(NSIndexPath *)indexPath{
   [tableView deselectRowAtIndexPath:indexPath animated:YES];
  // UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
}

@end
