//
//  CaculateCell.h
//  CellHeightTestDemo
//
//  Created by mac on 2017/11/15.
//  Copyright © 2017年 ChengMengKeJi. All rights reserved.
//

#import <UIKit/UIKit.h>
@class DataModel;
@class ComputeCellFrame;
@interface CaculateCell : UITableViewCell

@property(strong,nonatomic)UILabel*nickname;

@property(strong,nonatomic)UILabel*despLabel;

@property(strong,nonatomic)UILabel*content;

@property(strong,nonatomic)UIImageView*headImg;

@property(strong,nonatomic)UIImageView*picture;

@property(strong,nonatomic)UILabel *timeLabel;

@property(strong,nonatomic)UIButton*commentBt;

@property(nonatomic,strong)NSIndexPath* index;

@property(nonatomic,copy)void(^comment)(CaculateCell*cell,NSIndexPath *ind);

@property(nonatomic,strong)ComputeCellFrame*cellFrame;

+(instancetype)initializationWith:(UITableView*)tableView;
+(NSString*)reuseID;
@end
