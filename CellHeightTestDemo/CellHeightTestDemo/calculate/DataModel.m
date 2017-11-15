//
//  DataModel.m
//  CellHeightTestDemo
//
//  Created by mac on 2017/11/15.
//  Copyright © 2017年 ChengMengKeJi. All rights reserved.
//

#import "DataModel.h"

@implementation DataModel
+ (instancetype)friendInitWithDict:(NSDictionary*)dict{
    
   DataModel *friend = [[DataModel alloc]init];
    
    [friend setValuesForKeysWithDictionary:dict];
    
    return friend;
}
- (instancetype)initWithDictionary:(NSDictionary *)dictionary{
    self = super.init;
    if (self) {
        _nickname = dictionary[@"nickname"];
        _content = dictionary[@"content"];
        _headImg = dictionary[@"headImg"];
        _picture = dictionary[@"picture"];
        _time=dictionary[@"time"];
        _commentNum=dictionary[@"commentNum"];
        _desp=dictionary[@"desp"];
        
    }
    return self;
}

- (void)setValue:(id)value forUndefinedKey:(NSString*)key{
    
}

@end
