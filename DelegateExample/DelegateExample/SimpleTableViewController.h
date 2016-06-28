//
//  ViewController.h
//  FirstAppExample
//
//  Created by qburst on 27/06/16.
//  Copyright © 2016 qburst. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SimpleTableViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

{
  IBOutlet UITableView *simpleTable;
  NSMutableArray *tableData;
  IBOutlet UIButton *addButton;
  IBOutlet UILabel *table;
     NSArray *indexpath;
}
-(IBAction)addData:(id)sender;
@end
