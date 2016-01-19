//
//  ViewController.m
//  MCMS
//
//  Created by Danny Vasquez on 1/19/16.
//  Copyright © 2016 Danny Vasquez. All rights reserved.
//

#import "ViewController.h"
#import "MagicalCreature.h"
#import "CreatureViewController.h"
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
    MagicalCreature *mc = [[MagicalCreature alloc]initWithName:self.textField.text];
    [self.creatures addObject:mc];
    self.textField.text = @"";
    [self.view endEditing:YES];
    [self.tableView reloadData];
    
}


#pragma delagetes

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.creatures.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"CellID"];
    MagicalCreature *creature = [self.creatures objectAtIndex:indexPath.row];
    cell.textLabel.text = creature.name;
    return cell;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    CreatureViewController *destination = [segue destinationViewController];
    NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
    destination.title = [[self.creatures objectAtIndex:indexPath.row]name];
    MagicalCreature *creature = [self.creatures objectAtIndex:indexPath.row];
    destination.creature = creature;
    
}





@end
