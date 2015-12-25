//
//  VergetarianMaterialCategoryView.m
//  食全菜谱
//
//  Created by 翔辰文化 on 15/12/25.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import "VergetarianMaterialCategoryView.h"

@interface VergetarianMaterialCategoryView ()
//被选择的按钮
@property(nonatomic,strong)UIButton *isSeletedBtn;
//存放按钮的数组
@property(nonatomic,strong)NSMutableArray *btnsArray;

@end

@implementation VergetarianMaterialCategoryView
{
    UIScrollView *_scrollView;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self)
    {
        _scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        _scrollView.backgroundColor = [UIColor whiteColor];
        //可以水平滑动
        _scrollView.showsVerticalScrollIndicator = YES;
        //垂直方向
        _scrollView.showsHorizontalScrollIndicator = NO;
        //添加到父视图上
        [self addSubview:_scrollView];
    }
    return self;
}
-(void)loadBtn
{
    CGFloat buttonWidth = self.frame.size.width/4;
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(0, 0, buttonWidth, _scrollView.frame.size.height);
    [button setTitle:@"1111" forState:UIControlStateNormal];
}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
