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
//食材概述View
#import "FoodBriefView.h"


@interface FoodDetailsViewController ()
@property(nonatomic,strong)TopDetailView *topDetailView;
//滑动scroview
@property(nonatomic,strong)MaterialScrollView *materialScrollView;

@end

@implementation FoodDetailsViewController
{
    CGFloat _topDetailViewHeight;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    _topDetailViewHeight = MDYFrom6(200);
    
    [self.view addSubview:self.topDetailView];
    
    [self.view addSubview:self.materialScrollView];
    
}
-(TopDetailView *)topDetailView
{
    if (_topDetailView == nil)
    {
        _topDetailView = [[TopDetailView alloc]initWithFrame:CGRectMake(MDXFrom6(10), 64, self.view.frame.size.width-2*MDXFrom6(10), _topDetailViewHeight)];
    }
    return _topDetailView;
}

-(MaterialScrollView *)materialScrollView
{
    __weak typeof(self)weakS =self;
    
    if (_materialScrollView == nil)
    {
        _materialScrollView = [[MaterialScrollView alloc]initWithFrame:CGRectMake(MDXFrom6(10), 64+_topDetailViewHeight+12, self.view.frame.size.width-2*MDXFrom6(10), self.view.frame.size.height-_topDetailViewHeight-104-12)];
        _materialScrollView.numOfView = 5;
        for (NSUInteger i = 0; i < 5; i++)
        {
            if (i == 0)
            {
                //食材菜例
                BottomDetailView *bottomDetailView = [[BottomDetailView alloc]initWithFrame:CGRectMake(0, 0, self.materialScrollView.frame.size.width, self.materialScrollView.frame.size.height)];
                [_materialScrollView loadView:bottomDetailView];
            
                [bottomDetailView setPushNextVC:^(UIViewController *vc)
                 {
                     [weakS.navigationController pushViewController:vc animated:YES];
                }];
            }
            else if(i == 1)
            {
                //食材概述
                FoodBriefView *foodBriefView = [[FoodBriefView alloc]initWithFrame:CGRectMake(0, 0, self.materialScrollView.frame.size.width, self.materialScrollView.frame.size.height)];
                [_materialScrollView loadView:foodBriefView];
            }

        }
        
    }
    return _materialScrollView;
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
