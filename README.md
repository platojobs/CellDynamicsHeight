# CellDynamicsHeight
1、cell设置动态行高，xib方式 2、动态计算行高
|Author|cuishengxi|
|---|---
|E-mail|1300000608@qq.com

效果图
======
![](https://github.com/ShengxiCui/CellDynamicsHeight/blob/master/屏幕快照%202017-11-15%20下午3.35.47.png?raw=true)

主要代码：
```Objective-c

self.table.rowHeight = UITableViewAutomaticDimension;
    self.table.estimatedRowHeight=100;//注意xib自上而下的约束问题的解决  ，自上而下哟。不能少了约束。


```

```Objective-c

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
