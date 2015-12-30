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


@interface VegetarianMaterialView ()<UIScrollViewDelegate>
//滑动scroview
@property(nonatomic,strong)MaterialScrollView *materialScrollView;
@property(nonatomic,strong)UIButton *isSelectedBtn;

@end

@implementation VegetarianMaterialView
{
    //按钮数组
    NSMutableArray *_buttonsArray;
    
    NSInteger _index;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self)
    {
        //添加分类按钮
        [self addClassifiedMaterialBtn];
        //添加到视图上
        [self addSubview:self.materialScrollView];
        //初始化
        _buttonsArray = [[NSMutableArray alloc]init];
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
        [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        btn.tag = i+1;
        //设置背景颜色
        btn.backgroundColor = RGB_MD(65, 159, 179);
        //没有被选中的状态
        [btn setBackgroundImage:[UIImage imageNamed:@"u20"] forState:UIControlStateNormal];
        //[btn setBackgroundImage:[UIImage imageNamed:@"u34"] forState:UIControlStateSelected];
        //添加按钮点击事件
        [btn addTarget:self action:@selector(btnOnClick:) forControlEvents:UIControlEventTouchUpInside];
        //添加到父视图上
        [self addSubview:btn];
        //添加到数组上
        [_buttonsArray addObject:btn];
        switch (i) {
            case 0:
                //设置按钮的主题和主题颜色
                [btn setTitle:[NSString stringWithFormat:@"蔬菜类"] forState:UIControlStateNormal];
                break;
            case 1:
                //设置按钮的主题和主题颜色
                [btn setTitle:[NSString stringWithFormat:@"瓜果类"] forState:UIControlStateNormal];
                break;
            case 2:
                //设置按钮的主题和主题颜色
                [btn setTitle:[NSString stringWithFormat:@"菌菇类"] forState:UIControlStateNormal];
                break;
            case 3:
                //设置按钮的主题和主题颜色
                [btn setTitle:[NSString stringWithFormat:@"豆制类"] forState:UIControlStateNormal];
                break;
            default:
                break;
        }
    }
}
-(void)btnOnClick:(UIButton *)btn
{
    self.isSelectedBtn = btn;
}
-(MaterialScrollView *)materialScrollView
{
    __weak typeof(self)weakS =self;
    
    if (_materialScrollView == nil)
    {
        _materialScrollView = [[MaterialScrollView alloc]initWithFrame:CGRectMake(0, 40, self.frame.size.width, self.frame.size.height-44)];
        _materialScrollView.numOfView = 4;
        for (NSUInteger i = 0; i < 4; i++)
        {
            MaterialListView *materialListView = [[MaterialListView alloc]initWithFrame:CGRectMake(self.materialScrollView.frame.size.width*i, 0, self.materialScrollView.frame.size.width, self.materialScrollView.frame.size.height)];
            
            [materialListView setPushFoodDetailsVC:^(UIViewController *vc)
            {
                if (weakS.pushNextVC)
                {
                    weakS.pushNextVC(vc);
                }
            }];
        
            [_materialScrollView loadView:materialListView];
            
            
        }
        
    }
    return _materialScrollView;
}
-(void)setIsSelectedBtn:(UIButton *)isSelectedBtn
{
    if ([_isSelectedBtn isEqual:isSelectedBtn])
    {
        _isSelectedBtn.selected = NO;
    }
    _isSelectedBtn = isSelectedBtn;
    [_isSelectedBtn setSelected:YES];
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
