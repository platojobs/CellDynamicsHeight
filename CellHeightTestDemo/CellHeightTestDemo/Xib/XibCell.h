//
//  XibCell.h
//  CellHeightTestDemo
//
//  Created by mac on 2017/11/15.
//  Copyright © 2017年 ChengMengKeJi. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XibCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *header;
@property (weak, nonatomic) IBOutlet UILabel *content;

+(NSString*)reuseFier;

@end
