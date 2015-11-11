//
//  UserListCell.m
//  Affinitas
//
//  Created by OnurMac on 11/11/15.
//  Copyright © 2015 Onur Unal. All rights reserved.
//

#import "UserListCell.h"
#import "AFUsers.h"

@implementation UserListCell{
    UITableViewController *_viewController;
}

#define K_CELL  @"UserListCell"

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithCustomNibAndController:(UITableViewController *)controller _user:(AFUsers*)user{
    self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:K_CELL];
    if (self) {
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:K_CELL owner:self options:nil];
        self = nib[0];
        _viewController = controller;
        [self setUserTitle:user];
        [self setLocationTitle:user];
        DKLog(K_VERBOSE_MOBILE_API_JSON, @"User List --> {%@}",user);
    }
    return  self;
}

-(void)setUserTitle:(AFUsers*)userInfo{
    self.kUserHeader.text = [NSString stringWithFormat:@"%@ ,%@",[userInfo valueForKey:@"firstname"],[userInfo valueForKey:@"age"]];
}

-(void)setLocationTitle:(AFUsers*)userInfo{
    self.kUserLocation.text = [NSString stringWithFormat:@"searching in  %@",[userInfo valueForKey:@"city"]];
}


@end
