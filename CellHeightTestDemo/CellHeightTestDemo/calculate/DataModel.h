//
//  DataModel.h
//  CellHeightTestDemo
//
//  Created by mac on 2017/11/15.
//  Copyright © 2017年 ChengMengKeJi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataModel : NSObject

@property(copy,nonatomic)NSString*nickname;

@property(copy,nonatomic)NSString*desp;

@property(copy,nonatomic)NSString*content;

@property(copy,nonatomic)NSString*headImg;

@property(copy,nonatomic)NSString*picture;

@property(nonatomic,copy)NSString*time;

@property(nonatomic,copy)NSString*commentNum;

+ (instancetype)friendInitWithDict:(NSDictionary*)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
@end
