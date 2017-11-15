//
//  ViewController.m
//  CellHeightTestDemo
//
//  Created by mac on 2017/11/15.
//  Copyright © 2017年 ChengMengKeJi. All rights reserved.
//

#import "ViewController.h"
#import "Macros.h"
#import "XIBViewController.h"
#import "CaculateViewController.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView*table;
@property(nonatomic,strong)NSMutableArray*dataArr;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataArr=[@[@"利用XIB创建动态cell",@"利用模型计算创建动态cell"]mutableCopy];
    [self.table registerClass:[UITableViewCell class] forCellReuseIdentifier:REUseFier];
    self.table.rowHeight=100;
    [self.view addSubview:self.table];
    // Do any additional setup after loading the view, typically from a nib.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell*cell=[tableView dequeueReusableCellWithIdentifier:REUseFier forIndexPath:indexPath];
    cell.textLabel.text=self.dataArr[indexPath.row];
    return cell;
    
}
#pragma mark==cell的点击事件
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.row==0) {
        [self.navigationController pushViewController:[XIBViewController new] animated:YES];
    }
    else{
        //CaculateViewController
        [self.navigationController pushViewController:[CaculateViewController new] animated:YES];
    }
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
