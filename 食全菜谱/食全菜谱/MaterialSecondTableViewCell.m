//
//  MaterialSecondTableViewCell.m
//  食全菜谱
//
//  Created by 翔辰文化 on 15/12/28.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import "MaterialSecondTableViewCell.h"
#import "FoodDetailsViewController.h"

@implementation MaterialSecondTableViewCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (IBAction)buttonOnclick:(UIButton *)sender
{
    if (self.pushNextVC)
    {
        FoodDetailsViewController *vc = [[FoodDetailsViewController alloc]init];
        self.pushNextVC(vc);
    }
}
@end
