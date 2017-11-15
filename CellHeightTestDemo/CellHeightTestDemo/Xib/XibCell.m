//
//  XibCell.m
//  CellHeightTestDemo
//
//  Created by mac on 2017/11/15.
//  Copyright © 2017年 ChengMengKeJi. All rights reserved.
//

#import "XibCell.h"
static NSString*const reusefier=@"XibCell";
@implementation XibCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}



+(NSString*)reuseFier{
    return reusefier;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
