//
//  ComputeCellFrame.m
//  CellHeightTestDemo
//
//  Created by mac on 2017/11/15.
//  Copyright © 2017年 ChengMengKeJi. All rights reserved.
//

#import "ComputeCellFrame.h"
#import "DataModel.h"
#import "Macros.h"
@implementation ComputeCellFrame
- (void)setFriends:(DataModel*)friends{
    
    _friends= friends;
    
    self.headImgFrame = CGRectMake( 10, 20, 60, 60);
    
    CGRect nickName = [friends.nickname boundingRectWithSize:CGSizeMake(SCREENWIDTH-80,MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:18]} context:nil];
    
    self.nicknameFrame = CGRectMake( CGRectGetMaxX(self.headImgFrame) + 10,20, nickName.size.width, nickName.size.height);
    
    CGRect desp=[friends.desp boundingRectWithSize:CGSizeMake(SCREENWIDTH-80,MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:13]} context:nil];
    self.despFrame=CGRectMake(CGRectGetMaxX(self.headImgFrame) + 10,CGRectGetMaxY(self.headImgFrame) -desp.size.height, desp.size.width, desp.size.height);
    
    CGRect contentFrame = [friends.content boundingRectWithSize:CGSizeMake(SCREENWIDTH-20,MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:15]} context:nil];
    
    self.contentFrame = CGRectMake( 10,CGRectGetMaxY(self.headImgFrame)+10, SCREENWIDTH-20,contentFrame.size.height);
    
    CGRect tempRect;
    if(friends.picture) {
        
        //如文字多图情况的话，可以自己写个视图 。整体视图 下面显示图片就设置图片的大小        
        self.pictureFrame=CGRectMake( 10, CGRectGetMaxY(self.contentFrame)+10,SCREENWIDTH-20, 80);
        // 有图片就是返回图片的最大Y值
        self.timeFrame=CGRectMake(10, CGRectGetMaxY(self.pictureFrame)+10, 100, 30);
        self.rowHeight=CGRectGetMaxY(self.timeFrame)+5;
        self.commetFrame=CGRectMake(SCREENWIDTH-100, CGRectGetMaxY(self.pictureFrame)+10, 100, 30);
        return;
        
    }
    
    // 没图片就是返回文字的最大Y值
    self.timeFrame=CGRectMake(10, CGRectGetMaxY(self.contentFrame)+10, 100, 30);
    self.commetFrame=CGRectMake(SCREENWIDTH-100-10, CGRectGetMaxY(self.contentFrame)+10, 100, 30);
    self.rowHeight=CGRectGetMaxY(self.timeFrame) + 5;
    
}

@end
