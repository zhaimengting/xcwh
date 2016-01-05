//
//  FoodDetailsViewController.m
//  食全菜谱
//
//  Created by 翔辰文化 on 15/12/28.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import "FoodDetailsViewController.h"
#import "TopDetailView.h"
#import "MaterialScrollView.h"
//制作材例
#import "BottomDetailView.h"
#import "TopDetailReusableView.h"


@interface FoodDetailsViewController ()<UICollectionViewDataSource,UICollectionViewDelegate>
//collectionView
@property(nonatomic,strong)UICollectionView *collectionView;
//数据源
@property(nonatomic,strong)NSMutableArray *dataArray;
@end

static NSString *cellName = @"cell";
@implementation FoodDetailsViewController
{
    CGFloat _topDetailViewHeight;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.automaticallyAdjustsScrollViewInsets = NO;
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self initView];
}
-(void)initView
{
    //初始化layOut
    UICollectionViewFlowLayout *layOut = [[UICollectionViewFlowLayout alloc]init];
    //大小
    layOut.itemSize = CGSizeMake(XCW-2*XCXFrom6(10), 300);
    self.collectionView = [[UICollectionView alloc]initWithFrame:CGRectMake(0, 64, XCW, XCH-108) collectionViewLayout:layOut];
    //设置代理
    self.collectionView.dataSource = self;
    self.collectionView.delegate = self;
    //背景色
    self.collectionView.backgroundColor = [UIColor clearColor];
    //添加到视图上
    [self.view addSubview:self.collectionView];
    
    //注册
    //头视图
    [self.collectionView registerClass:[TopDetailReusableView class] forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"TopDetailReusableView"];
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:cellName];
    //头视图设置大小
    layOut.headerReferenceSize = CGSizeMake(XCW, 200);
}
#pragma mark - 黄金三问
-(NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}
-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    return 10;
}
-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellName forIndexPath:indexPath];
    cell.backgroundColor = [UIColor redColor];
    return cell;
}
#pragma mark - 头视图
-(UICollectionReusableView *)collectionView:(UICollectionView *)collectionView viewForSupplementaryElementOfKind:(NSString *)kind atIndexPath:(NSIndexPath *)indexPath
{
    TopDetailReusableView *headerView = [collectionView dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:@"TopDetailReusableView" forIndexPath:indexPath];
    return headerView;
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
