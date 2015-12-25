//
//  VegetarianMaterialView.m
//  食全菜谱
//
//  Created by 翔辰文化 on 15/12/25.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import "VegetarianMaterialView.h"
//列表图
#import "MaterialListView.h"
//scroview
#import "MaterialScrollView.h"
//素材分类View
#import "VergetarianMaterialCategoryView.h"

@interface VegetarianMaterialView ()<UIScrollViewDelegate>
//滑动scroview
@property(nonatomic,strong)MaterialScrollView *materialScrollView;
@end

@implementation VegetarianMaterialView

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self)
    {
        self.backgroundColor = [UIColor greenColor];
        
        //[self addClassifiedMaterialBtn];
        
        [self addSubview:self.materialScrollView];
        
        
    }
    return  self;
}
//添加素材的分类按钮
-(void)addClassifiedMaterialBtn
{
    for (NSInteger i = 0; i < 4; i++)
    {
        //初始化
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        btn.frame = CGRectMake(self.frame.size.width/4.*i, 0, self.frame.size.width/4., 40);
        //设置按钮的主题和主题颜色
        [btn setTitle:[NSString stringWithFormat:@"%li",i+1] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        //设置背景颜色
        btn.backgroundColor = [UIColor greenColor];
        //添加按钮点击事件
        [btn addTarget:self action:@selector(btnOnClick:) forControlEvents:UIControlEventTouchUpInside];
        //添加到父视图上
        [self addSubview:btn];
    }
}
//按钮点击事件
-(void)btnOnClick:(UIButton *)btn
{
    
}
-(MaterialScrollView *)materialScrollView
{
    if (_materialScrollView == nil)
    {
        _materialScrollView = [[MaterialScrollView alloc]initWithFrame:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height)];
        for (NSUInteger i = 0; i < 4; i++)
        {
            MaterialListView *materialListView = [[MaterialListView alloc]initWithFrame:CGRectMake(self.materialScrollView.frame.size.width*i, 0, self.materialScrollView.frame.size.width, self.materialScrollView.frame.size.height)];
        
            [_materialScrollView loadView:materialListView];
        }
    }
    return _materialScrollView;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
