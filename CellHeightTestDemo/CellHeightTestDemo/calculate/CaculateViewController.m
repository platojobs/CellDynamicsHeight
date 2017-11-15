//
//  CaculateViewController.m
//  CellHeightTestDemo
//
//  Created by mac on 2017/11/15.
//  Copyright © 2017年 ChengMengKeJi. All rights reserved.
//

#import "CaculateViewController.h"
#import "CaculateCell.h"
#import "DataModel.h"
#import "ComputeCellFrame.h"
#import "Macros.h"
@interface CaculateViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView*table;
@property(nonatomic,strong)NSMutableArray*dataArr;
@property(nonatomic,strong)NSMutableArray*dataModelArr;
@end

@implementation CaculateViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"CaculateCell";
   
    NSDictionary*dic1=@{@"nickname":@"中国话",@"content":@"首先大家要明白，聊性要做到两个前提，第一个是吸引，女人必须要对你有好感喜欢你，这是非常重要的，否则就不是什么诱惑了，而是骚扰。第二个前提，就是在喜欢的基础上还要对你有安全感，因为女人是很担心社交后遗症的，女人在感情方面的名节对她的人生影响相当巨大，如果她被人当做了婊子，那么在原始社会这可能直接会导致她死亡，或者生活的并不幸福。所以我们很多男人总以为女人都是纯洁的天使，得了吧，她们只是隐藏的好。女人并不反感和自己喜欢的人发生的什么激情故事。但是你得让她知道，和你聊这些做这些是没有社交后遗症的，她在你这安全的，否则就像冠希哥毁掉的那些女人。做到以上两点那么性话题才会畅行，几乎不会遇到阻碍",@"headImg":@"23.jpg",@"picture":@"45.jpg",@"time":@"2017.11.15",@"commentNum":@"评论（1234）",@"desp":@"第一个是吸引，女人必须要对你有好感喜欢你"};
    NSDictionary*dic2=@{@"nickname":@"中国娃娃娃娃",@"content":@"我们都知道现在有很多速推流派，什么几小时TD之类的，可能么？可能，但是我并不推荐这种做法，其实就是玩概率，上来就直接聊性，约会，那真的是你运气好，碰到了一个寂寞难耐而且还不担心社交后遗症的奇葩妹子。否则不可能成功，而且多数时候你根本不知道自己在做什么，(www.siandian.com 闪点情话网)完全是靠猜的，女人随时都有可能放你鸽子",@"headImg":@"nj.jpg",@"time":@"2017.11.14",@"commentNum":@"评论（6534）",@"desp":@"女人必须要对你有好感喜欢你"};
   
    
    [self.table registerClass:[CaculateCell class] forCellReuseIdentifier:@"CaculateCell"];
    
    [self.view addSubview:self.table];
    
    self.dataArr=[@[dic1,dic2]mutableCopy];
    self.dataModelArr=[NSMutableArray new];
    [self.dataModelArr removeAllObjects];
    for (NSDictionary*dic in self.dataArr) {
        DataModel*friend = [[DataModel alloc]initWithDictionary:dic];
        ComputeCellFrame *cellFrame =[[ComputeCellFrame alloc]init];
        cellFrame.friends=friend;
        [self.dataModelArr addObject:cellFrame];
    }
    
    // Do any additional setup after loading the view, typically from a nib.
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    ComputeCellFrame*cellFrame=self.dataModelArr[indexPath.row];
    NSLog(@"iopipp%f",cellFrame.rowHeight);
    return cellFrame.rowHeight;
    
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.dataModelArr.count;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    CaculateCell*cell=[tableView dequeueReusableCellWithIdentifier:@"CaculateCell" forIndexPath:indexPath];    
    cell.cellFrame=self.dataModelArr[indexPath.row];
    cell.index=indexPath;
    static NSInteger num=1234;
    [cell setComment:^(CaculateCell *cell, NSIndexPath* ind) {
        ComputeCellFrame*frame=self.dataModelArr[ind.row];
        NSString*str=[NSString stringWithFormat:@"评论（%ld)",num++];
        frame.friends.commentNum=str;
        [tableView reloadRowsAtIndexPaths:@[ind] withRowAnimation:UITableViewRowAnimationNone];
        NSLog(@"nidianjiele=== %ld",ind.row);
    }];
    return cell;
    
}
#pragma mark==cell的点击事件
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    
}
-(UITableView*)table{
    if (!_table) {
        _table=[[UITableView alloc]initWithFrame:CGRectMake(0, 64, SCREENWIDTH, SCREENHEIGHT-64) style:UITableViewStylePlain];
        _table.delegate=self;
        _table.dataSource=self;
    }
    return _table;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
