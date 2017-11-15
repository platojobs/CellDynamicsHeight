//
//  ComputeCellFrame.h
//  CellHeightTestDemo
//
//  Created by mac on 2017/11/15.
//  Copyright © 2017年 ChengMengKeJi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class DataModel;
@interface ComputeCellFrame : NSObject

@property(assign,nonatomic) CGRect headImgFrame;

@property(assign,nonatomic)CGRect contentFrame;

@property(assign,nonatomic)CGRect nicknameFrame;

@property(assign,nonatomic)CGRect pictureFrame;

@property(assign,nonatomic)CGRect timeFrame;

@property(assign,nonatomic)CGRect commetFrame;

@property(assign,nonatomic)CGRect despFrame;

//rowHeight为计算出的cell行高

@property(assign,nonatomic)CGFloat rowHeight;

// friends是数据模型

@property(strong,nonatomic)DataModel *friends;


@end
