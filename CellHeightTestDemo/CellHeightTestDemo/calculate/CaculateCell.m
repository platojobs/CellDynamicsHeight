//
//  CaculateCell.m
//  CellHeightTestDemo
//
//  Created by mac on 2017/11/15.
//  Copyright © 2017年 ChengMengKeJi. All rights reserved.
//

#import "CaculateCell.h"
#import "ComputeCellFrame.h"
#import "DataModel.h"
static NSString  *const reuseID = @"CaculateCell";
@implementation CaculateCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

+(instancetype)initializationWith:(UITableView*)tableView{
    
    CaculateCell *cell = [tableView dequeueReusableCellWithIdentifier:[self reuseID]];
    if (!cell) {
        cell = [[CaculateCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseID];
    }
    return cell;    
}
+(NSString*)reuseID{
    return reuseID;
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self=[super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.nickname=[[UILabel alloc]init];
        self.nickname.font=[UIFont systemFontOfSize:18];
        
        self.content=[[UILabel alloc]init];
        self.content.numberOfLines=0;
        self.content.font=[UIFont systemFontOfSize:15];
        
        [self.contentView addSubview:self.content];
        
        self.headImg=[[UIImageView alloc]init];
        [self.contentView addSubview:self.headImg];
        self.picture=[[UIImageView alloc]init];
        [self.contentView addSubview:self.picture];
        
        self.timeLabel=[[UILabel alloc]init];
        self.timeLabel.font=[UIFont systemFontOfSize:13];
        
        self.commentBt=[[UIButton alloc]init];
        [self.commentBt setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        self.commentBt.titleLabel.font=[UIFont systemFontOfSize:13];
        
        self.despLabel=[UILabel new];
        self.despLabel.textColor=[UIColor blueColor];
        self.despLabel.font=[UIFont systemFontOfSize:13];
        [self.contentView addSubview:self.despLabel];
        [self.contentView addSubview:self.commentBt];
        [self.contentView addSubview:self.timeLabel];
        [self.contentView addSubview:self.nickname];
        
        
    }
    
    return self;
}
-(void)setCellFrame:(ComputeCellFrame *)cellFrame{
    
    _cellFrame= cellFrame;
    
    _nickname.frame= cellFrame.nicknameFrame;
    
    _headImg.frame= cellFrame.headImgFrame;
    
    _despLabel.frame=cellFrame.despFrame;
    
    _content.frame= cellFrame.contentFrame;
    
    _picture.frame=cellFrame.pictureFrame;
    
    _timeLabel.frame=cellFrame.timeFrame;
    
    _commentBt.frame=cellFrame.commetFrame;
    
    self.nickname.text = cellFrame.friends.nickname;
    
    self.content.text= cellFrame.friends.content;
    
    self.headImg.image= [UIImage imageNamed:cellFrame.friends.headImg];
    self.despLabel.text=cellFrame.friends.desp;
    self.picture.image=[UIImage imageNamed:cellFrame.friends.picture];
    
    self.timeLabel.text=cellFrame.friends.time;
    [self.commentBt addTarget:self action:@selector(comment:) forControlEvents:UIControlEventTouchUpInside];
    [self.commentBt setTitle:cellFrame.friends.commentNum forState:UIControlStateNormal];
    
    
}
-(void)setIndex:(NSIndexPath *)index{
    _index=index;
}
-(void)comment:(UIButton*)sender{
    [sender setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    self.comment(self, self.index);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
