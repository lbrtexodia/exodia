//
//  SalonBookTableViewCell.h
//  salon-online
//
//  Created by Saperium Dev on 3/30/18.
//  Copyright © 2018 excodia. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SalonBookTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *serviceName;
@property (weak, nonatomic) IBOutlet UILabel *cost;
@property (weak, nonatomic) IBOutlet UILabel *desc;
@property (weak, nonatomic) IBOutlet UIView *bottomDivider;

- (IBAction)bookNow:(id)sender;


@end
