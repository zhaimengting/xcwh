//
//  FoodDetailMakeViewController.m
//  食全菜谱
//
//  Created by 翔辰文化 on 15/12/30.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import "FoodDetailMakeViewController.h"
#import "TopDetailView.h"


@interface FoodDetailMakeViewController ()
@property(nonatomic,strong)TopDetailView *topDetailView;

@end

@implementation FoodDetailMakeViewController
{
    //上面的高
    CGFloat _topDetailViewHeight;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    _topDetailViewHeight = MDYFrom6(200);
    //添加到视图上
    [self.view addSubview:self.topDetailView];
}
#pragma mark -topDetailView
-(TopDetailView *)topDetailView
{
    if (_topDetailView == nil)
    {
        _topDetailView = [[TopDetailView alloc]initWithFrame:CGRectMake(MDXFrom6(10), 64, self.view.frame.size.width-2*MDXFrom6(10), _topDetailViewHeight)];
    }
    return _topDetailView;
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
