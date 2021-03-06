//
//  NHTMainViewController.m
//  NearHoneyTip
//
//  Created by Kate KyuWon on 12/15/15.
//  Copyright © 2015 Mamamoo. All rights reserved.
//

#import "NHTMainViewController.h"
#import "NHTDetailViewController.h"
#import "NHTTipManager.h"
#import "NHTMainTableCell.h"

@interface NHTMainViewController ()

@end

@implementation NHTMainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.Q1 = [[NHTTipManager alloc]init];
    [self.Q1 tipsDidLoad];
    UIButton *newPost = [[self view] viewWithTag:123];
    newPost.layer.cornerRadius = 25;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSLog(@"the number of cell : %ld", (long)[self.Q1 countOfTipCollection] );
    return [self.Q1 countOfTipCollection];
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *CellIdentifier = @"Cell";
    NHTMainTableCell *cell = [tableView dequeueReusableCellWithIdentifier: CellIdentifier forIndexPath:indexPath];
    NSLog(@"FOR CELL%@",[self.Q1 objectAtIndex:indexPath.row]);
    //if([[[self.Q1 objectAtIndex:indexPath.row] class] isKindOfClass: [NSDictionary class]]){
    NSDictionary *tip = [self.Q1 objectAtIndex:indexPath.row];
    
    [cell setCellWithTip:tip];
    //};
    UITapGestureRecognizer *tapCellForTipDetail = [[UITapGestureRecognizer alloc] initWithTarget: self action: @selector(didTapCell:)];
    
    cell.gestureRecognizers = [[NSArray alloc] initWithObjects:tapCellForTipDetail, nil];
    
    return cell;
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    NSLog(@"#####3-1%@", sender);
    if([segue.identifier isEqual:@"showTipDetail"]){
        
        NSLog(@"#####3-2%@", sender);
        NSLog(@"####sender target? %@",[sender view]);
        NHTMainTableCell *tipCell = [sender view];
        
        /*
         if([self.playlistImageViews containsObject:playlistImageView]){
         NSUInteger index = [self.playlistImageViews indexOfObject:playlistImageView];
         
         playlistDetailController.playlist = [[Playlist alloc] initWithIndex:index];
         }
         */
        
        if(tipCell){
            NHTDetailViewController *tipDetailController = (NHTDetailViewController *)segue.destinationViewController;
            if(tipCell.tip){
                
                NSLog(@"this is tip %@", tipCell.tip);
                tipDetailController.selectedTip = tipCell.tip;
            }
        }
    }
}

- (void) didTapCell:(UITapGestureRecognizer *) recognizer{
    NSLog(@"#####1%@", recognizer);
    [self showTipDetail:recognizer];
}
- (IBAction)showTipDetail:(id)sender {
    NSLog(@"#####2%@", sender);
    [self performSegueWithIdentifier:@"showTipDetail" sender:sender];
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
