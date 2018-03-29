//
//  SalonsTableViewController.m
//  salon-online
//
//  Created by Saperium Dev on 3/29/18.
//  Copyright © 2018 excodia. All rights reserved.
//

#import "SalonsTableViewController.h"
#import "Salon.h"
#import "SalonTableViewCell.h"

@interface SalonsTableViewController ()

@end

@implementation SalonsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // setup view
    [self.navigationController setNavigationBarHidden:NO];
    self.tableView.rowHeight = UITableViewAutomaticDimension;
    self.tableView.estimatedRowHeight = 257.0;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;

    // Create mock data here
    self.salons = [NSMutableArray new];
    
    Salon* salon1 = [Salon new];
    salon1.Name = @"First Salon";
    salon1.CancellationDesc = @"24 hour cancellation";
    salon1.OpeningHourDesc = @"08:00am-06:00pm";
    salon1.LocationDesc = @"Videgatan 4B (3,3 km)";
    salon1.Rating = @5;
    salon1.ImageUrl = @"sample-banner-1";
    [self.salons addObject:salon1];
    
    Salon* salon2 = [Salon new];
    salon2.Name = @"Second Salon";
    salon2.CancellationDesc = @"24 hour cancellation";
    salon2.OpeningHourDesc = @"09:00am-07:00pm";
    salon2.LocationDesc = @"Videgatan 4B (3,3 km)";
    salon2.Rating = @5;
    salon2.ImageUrl = @"sample-banner-2";
    [self.salons addObject:salon2];
    
    Salon* salon3 = [Salon new];
    salon3.Name = @"Third Salon";
    salon3.CancellationDesc = @"24 hour cancellation";
    salon3.OpeningHourDesc = @"06:00am-04:00pm";
    salon3.LocationDesc = @"Videgatan 4B (3,3 km)";
    salon3.Rating = @4;
    salon3.ImageUrl = @"sample-banner-1";
    [self.salons addObject:salon3];
    
    Salon* salon4 = [Salon new];
    salon4.Name = @"Fourth Salon";
    salon4.CancellationDesc = @"24 hour cancellation";
    salon4.OpeningHourDesc = @"08:00am-04:00pm";
    salon4.LocationDesc = @"Videgatan 4B (3,3 km)";
    salon4.Rating = @4;
    salon4.ImageUrl = @"sample-banner-2";
    [self.salons addObject:salon4];
    
    Salon* salon5 = [Salon new];
    salon5.Name = @"Fifth Salon";
    salon5.CancellationDesc = @"24 hour cancellation";
    salon5.OpeningHourDesc = @"09:00am-07:00pm";
    salon5.LocationDesc = @"Videgatan 4B (3,3 km)";
    salon5.Rating = @3;
    salon5.ImageUrl = @"sample-banner-1";
    [self.salons addObject:salon5];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.salons.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SalonTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([SalonTableViewCell class]) forIndexPath:indexPath];
 
    [cell setupCell:[self.salons objectAtIndex:indexPath.row]];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
