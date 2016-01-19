//
//  CreatureViewController.m
//  MCMS
//
//  Created by Danny Vasquez on 1/19/16.
//  Copyright © 2016 Danny Vasquez. All rights reserved.
//

#import "CreatureViewController.h"

@interface CreatureViewController ()

@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)editButtonTapped:(UIBarButtonItem *)sender {
    
    if (self.editing)
        {
            self.editing = false;
            [self. setEditing:false animated:true];
            sender.style = UIBarButtonItemStylePlain;
            sender.title = @"Edit";
        }
        else
        {
            self.editing = true;
            [self.tableView setEditing:true animated:true];
            sender.title = @"Done";
            sender.style =  UIBarButtonItemStyleDone;
        }
        [self.tableView reloadData];


}

@end
