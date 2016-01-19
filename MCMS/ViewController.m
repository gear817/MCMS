//
//  ViewController.m
//  MCMS
//
//  Created by Danny Vasquez on 1/19/16.
//  Copyright © 2016 Danny Vasquez. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"
@interface ViewController () <UITableViewDataSource, UITableViewDelegate>
@property NSMutableArray *creatures;
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    MagicalCreature *creatureOne = [[MagicalCreature alloc] initWithName:@"Daniel"];
    MagicalCreature *creatureTwo = [[MagicalCreature alloc] initWithName:@"Lilly"];
    MagicalCreature *creatureThree = [[MagicalCreature alloc] initWithName:@"Miguel"];
    
    self.creatures = [NSMutableArray arrayWithObjects:creatureOne, creatureTwo, creatureThree, nil];
    
}




- (IBAction)addButtonTaped:(UIButton *)sender {
    [self.creatures addObject:self.textField.text];
    self.textField.text = @"";
    [self.view endEditing:YES];
    [self.tableView reloadData];
}




-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.creatures.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID"];
    MagicalCreature *creature = [self.creatures objectAtIndex:indexPath.row];
    cell.textLabel.text = creature.name;
    return cell;
}






@end
