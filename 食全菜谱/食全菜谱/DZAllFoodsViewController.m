//
//  DZAllFoodsViewController.m
//  食全菜谱
//
//  Created by 北京翔辰文化发展有限公司 on 15/12/23.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import "DZAllFoodsViewController.h"

@interface DZAllFoodsViewController ()

//添加分栏控制器
@property(nonatomic,strong)UISegmentedControl *mainSeg;

@end

@implementation DZAllFoodsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor whiteColor];
//    //添加分栏控制器的主题数组
//    NSArray *segArray = [[NSArray alloc]initWithObjects:@"1",@"2" ,nil];
//    //分栏控制器初始化
//    self.mainSeg = [[UISegmentedControl alloc]initWithItems:segArray];
//    self.mainSeg.frame = CGRectMake(80, 20, 100, 80);
//    self.mainSeg.selectedSegmentIndex = 2;
//    self.mainSeg.tintColor = [UIColor redColor];
//    //设置样式
//    self.mainSeg.segmentedControlStyle = UISegmentedControlStylePlain;
//    //设置在点击后是否恢复原样
//    self.mainSeg.momentary = YES;
//    //设置标题
//    [self.mainSeg setTitle:@"素材" forSegmentAtIndex:0];
//    [self.mainSeg setTitle:@"荤材" forSegmentAtIndex:1];
//    //添加事件
//    [self.mainSeg addTarget:self action:@selector(selectFood) forControlEvents:UIControlEventTouchUpInside];
//    //添加到父视图上
//    [self. addSubview:self.mainSeg];
}

-(void)selectFood
{
    
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
