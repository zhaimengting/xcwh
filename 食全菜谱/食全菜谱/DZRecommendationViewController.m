//
//  DZRecommendationViewController.m
//  食全菜谱
//
//  Created by 北京翔辰文化发展有限公司 on 15/12/23.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import "DZRecommendationViewController.h"
/*遵守协议*/
@interface DZRecommendationViewController ()<UITableViewDelegate,UITableViewDataSource>
/*声明一个表视图*/
@property(nonatomic,strong)UITableView *tableView;
/*声明一个数据源*/
@property(nonatomic,strong)NSMutableArray *dataArray;

@end

@implementation DZRecommendationViewController
/*创建一个表视图*/
-(void)creatTableView
{
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 20, self.view.bounds.size.width, self.view.bounds.size.height - 20) style:UITableViewStylePlain];
    /*设置委托*/
    self.tableView.delegate = self;
    
    self.tableView.dataSource = self;
    /*加载到父视图*/
    [self.view addSubview:self.tableView];
    
}
/*创建数据源*/
-(void)creatDataSource
{
    self.dataArray = [NSMutableArray array];
    [self.dataArray addObject:@"我的歌声里"];
    [self.dataArray addObject:@"我的歌声里"];
    [self.dataArray addObject:@"我的歌声里"];
    [self.dataArray addObject:@"我的歌声里"];
    [self.dataArray addObject:@"我的歌声里"];
    [self.dataArray addObject:@"我的歌声里"];
    [self.dataArray addObject:@"我的歌声里"];
    [self.dataArray addObject:@"我的歌声里"];
    [self.dataArray addObject:@"我的歌声里"];
    [self.dataArray addObject:@"我的歌声里"];

    /*刷新数据*/
    [self.tableView reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self creatTableView];
    
    [self creatDataSource];

}

#pragma mark - 黄金三问

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArray.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    
    if (!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        
    }
    cell.textLabel.text = self.dataArray[indexPath.row];
    if (indexPath.row % 2 == 0) {
        cell.backgroundColor = [UIColor cyanColor];
    }
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0)
    {
        return 100;
    }
    return 50;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
