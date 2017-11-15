# CellDynamicsHeight
* cell设置动态行高，xib方式

* 动态计算行高


|Author|cuishengxi|
|---|---
|E-mail|1300000608@qq.com

效果图
======
![](https://github.com/ShengxiCui/CellDynamicsHeight/blob/master/屏幕快照%202017-11-15%20下午3.35.47.png?raw=true)

主要代码：
```objective-c

  self.table.rowHeight = UITableViewAutomaticDimension;
    self.table.estimatedRowHeight=100;//注意xib自上而下的约束问题的解决  ，自上而下哟。不能少了约束。


```

```objective-c
模型计算

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



传入计算模型文件，
_cellFrame= cellFrame;
    
    _nickname.frame= cellFrame.nicknameFrame;
    
    _headImg.frame= cellFrame.headImgFrame;
    
    _despLabel.frame=cellFrame.despFrame;
    
    _content.frame= cellFrame.contentFrame;
    
    _picture.frame=cellFrame.pictureFrame;
    
    _timeLabel.frame=cellFrame.timeFrame;
    
    _commentBt.frame=cellFrame.commetFrame;
    
    self.nickname.text = cellFrame.friends.nickname;

   
```

菜鸟一枚，不喜勿喷：QQQun：195575959
=================
