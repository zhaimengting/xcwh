//
//  FoodBriefView.m
//  食全菜谱
//
//  Created by 翔辰文化 on 15/12/30.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import "FoodBriefView.h"

@implementation FoodBriefView
{
    CGFloat _foodBriefLabelHeight;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame: frame];
    if (self)
    {
        _foodBriefLabelHeight = MDYFrom6(25);
        [self initView];
    }
    return self;
}
-(void)initView
{
    UITextView *txtView = [[UITextView alloc]initWithFrame:self.bounds];
    
    //食材概述标签
    UILabel *foodBriefLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, MDYFrom6(20), self.frame.size.width,_foodBriefLabelHeight )];
    foodBriefLabel.backgroundColor = RGB_MD(205, 36, 36);
    foodBriefLabel.text = @"食材概述";
    [self addSubview:foodBriefLabel];
    //食材的具体描述
    UILabel *briefLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0,0,0)];
    [briefLabel setNumberOfLines:100];
    NSString *string = @"我看得见看上了飞机上来看附件是都是垃圾发生的离开建设的弗兰克教室里的开发就算了空间受到了开始觉得了多少空间了多少空间收到了会计师的离开建设的路口建设的路口附近受到了罚款手机登陆开始将对方实力的建设的路口建设的路口结束了快点放假数量的开发教室里的开发设计方老师的开发建设的了罚款收到甲方收到了开发的十分激动死了罚款收到甲方收到了上来看附件是了解 离开的时间奋斗史莱克 考虑到时间 凉快圣诞节方式 开始了大家上课了就我打了客服了；";
    briefLabel.text = string;
    UIFont *font = [UIFont systemFontOfSize:18];
    //限制宽度
    CGSize size = CGSizeMake(self.frame.size.width, 2000);
    NSDictionary *dict = [NSDictionary dictionaryWithObjectsAndKeys:font,NSFontAttributeName, nil];
    CGSize labelSize = [string boundingRectWithSize:size options:NSStringDrawingUsesLineFragmentOrigin attributes:dict context:nil].size;
    briefLabel.frame = CGRectMake(0, foodBriefLabel.frame.origin.y, labelSize.width, labelSize.height);
    [self addSubview:briefLabel];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
