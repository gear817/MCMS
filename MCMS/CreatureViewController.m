//
//  CreatureViewController.m
//  MCMS
//
//  Created by Danny Vasquez on 1/19/16.
//  Copyright © 2016 Danny Vasquez. All rights reserved.
//

#import "CreatureViewController.h"

@interface CreatureViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation CreatureViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.textField setHidden:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)editButtonTapped:(UIBarButtonItem *)sender {
    
    if ([sender.title isEqualToString: @"Edit"])
        {
            [sender setTitle:@"Done"];
            [self.textField setHidden:NO];
            NSString *string = [NSString stringWithFormat:@"%@", self.textField];
            [self.navigationItem.title. = [NSString stringWithFormat:@"%@", string]];
                   } else {
            [sender setTitle:@"Edit"];
           [self.textField setHidden:YES];

            
        };
    

    
            
            
           
//            [self setEditing:false animated:true];
//            sender.style = UIBarButtonItemStylePlain;
//            sender.title = @"Edit";
//        }
//        else
//        {
//            self.editing = true;
//            [self setEditing:true animated:true];
//            sender.title = @"Done";
//            sender.style =  UIBarButtonItemStyleDone;
//        }
//        [self.view reloadData];


}

@end
