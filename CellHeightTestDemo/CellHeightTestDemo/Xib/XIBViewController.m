//
//  XIBViewController.m
//  CellHeightTestDemo
//
//  Created by mac on 2017/11/15.
//  Copyright © 2017年 ChengMengKeJi. All rights reserved.
//

#import "XIBViewController.h"
#import "XibCell.h"
#import "Macros.h"
@interface XIBViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView*table;
@property(nonatomic,strong)NSMutableArray*dataArr;
@end

@implementation XIBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title=@"XIBCEll";
    self.dataArr=[@[@"利用XIB创建动态cell利用XIB创建动态cell利用XIB创建动态cell利用XIB创建动态cell利用XIB创建动态cell利用XIB创建动态cell利用XIB创建动态cell利用XIB创建动态cell利用XIB创建动态cell利用XIB创建动态cell利用XIB创建动态cell利用XIB创建动态cell利用XIB创建动态cell利用XIB创建动态cell利用XIB创建动态cell利用XIB创建动态cell利用XIB创建动态cell利用XIB创建动态cell利用XIB创建动态cell利用XIB创建动态cell利用XIB创建动态cell利用XIB创建动态cell利用XIB创建动态cell利用XIB创建动态cell利用XIB创建动态cell利用XIB创建动态cell利用XIB创建动态cell利用XIB创建动态cell利用XIB创建动态cell利用XIB创建动态cell利用XIB创建动态cell利用XIB创建动态cell",@"利用XIB创建动态cell利用XIB创建动态cell利用XIB创建动态cell"]mutableCopy];
    [self.table registerNib:[UINib nibWithNibName:[XibCell reuseFier] bundle:nil ]  forCellReuseIdentifier:[XibCell reuseFier]];
    self.table.rowHeight = UITableViewAutomaticDimension;
    self.table.estimatedRowHeight=100;
    [self.view addSubview:self.table];
    // Do any additional setup after loading the view, typically from a nib.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    XibCell*cell=[tableView dequeueReusableCellWithIdentifier:[XibCell reuseFier] forIndexPath:indexPath];
    cell.content.text=self.dataArr[indexPath.row];
    return cell;
    
}
#pragma mark==cell的点击事件
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}
-(UITableView*)table{
    if (!_table) {
        _table=[[UITableView alloc]initWithFrame:CGRectMake(0, 0, SCREENWIDTH, SCREENHEIGHT) style:UITableViewStylePlain];
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
