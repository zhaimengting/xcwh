//
//  TopDetailReusableView.m
//  食全菜谱
//
//  Created by 翔辰文化 on 15/12/31.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import "TopDetailReusableView.h"

@interface TopDetailReusableView ()

@property(nonatomic,assign)NSInteger selectedIndex;

@end

@implementation TopDetailReusableView
{
    CGFloat _verSpacing ;
    CGFloat _horSpacing ;
    CGFloat _buttonWidth;
    CGFloat _buttonHeight;
    CGFloat _imageWidth;
    CGFloat _imageHeight;
    CGFloat _beginY;
    CGFloat _beginX;
}

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        _verSpacing = XCXFrom6(10.0f);
        _horSpacing = XCXFrom6(10.0f);
        _buttonHeight = XCXFrom6(60.0f);
        _buttonWidth =(self.frame.size.width-2*_horSpacing)/4.0;
        _imageWidth = XCW-2*_horSpacing;
        _imageHeight = XCYFrom6(230.0f);
        //默认第一个
        _selectedIndex = 1;
        [self initView];
    }
    return self;
}

-(void)initView
{
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:CGRectMake(_verSpacing, _horSpacing, _imageWidth,_imageHeight)];
    _beginY = imageView.frame.size.height - _buttonHeight+_verSpacing;
    imageView.image = [UIImage imageNamed:@"u32"];
    [self addSubview:imageView];
    
    //设置4 个按钮
    _beginX = _horSpacing;
    [self loadButtonWithTitile:@"烹饪方法" rect:CGRectMake(_beginX, _beginY, _buttonWidth, _buttonHeight) WithNum:0];
    [self loadButtonWithTitile:@"相关知识" rect:CGRectMake(_beginX,_beginY,_buttonWidth,_buttonHeight) WithNum:1];
    [self loadButtonWithTitile:@"相宜相克" rect:CGRectMake(_beginX,_beginY,_buttonWidth,_buttonHeight) WithNum:2];
    [self loadButtonWithTitile:@"烹饪视频" rect:CGRectMake(_beginX, _beginY, _buttonWidth, _buttonHeight) WithNum:3];
    
}
-(void)loadButtonWithTitile:(NSString *)title rect:(CGRect)rect WithNum:(NSInteger)num
{
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setFrame:rect];
    button.layer.cornerRadius = 20.0f;
    button.tag = num;
    button.titleLabel.numberOfLines = 0;
    
    [button setTitle:title forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:@"u22"] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:@"u34"] forState:UIControlStateSelected];
    
    //button 添加点击事件
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [self addSubview:button];
    _beginX += _buttonWidth;
}

-(void)buttonClick:(UIButton *)button
{
    self.selectedIndex = button.tag;
       //传值
    if (self.clickedIndex)
    {
        self.clickedIndex(_selectedIndex);
    }
}

@end
