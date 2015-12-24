//
//  DZTabBarController.m
//  食全菜谱
//
//  Created by 北京翔辰文化发展有限公司 on 15/12/23.
//  Copyright © 2015年 北京翔辰文化发展有限公司. All rights reserved.
//

#import "DZTabBarController.h"

#import "DZRecommendationViewController.h"

#import "DZAllFoodsViewController.h"

#import "DZThrepyViewController.h"

#import "UIImage+Category.h"

@interface DZTabBarController ()

@end

@implementation DZTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
    
    DZRecommendationViewController *rvc = [[DZRecommendationViewController alloc] init];
    UINavigationController *rvcNav = [[UINavigationController alloc] initWithRootViewController:rvc];
    rvc.tabBarItem.image = [UIImage imageNamed:@"今日推荐.png"];

    DZAllFoodsViewController *afvc = [[DZAllFoodsViewController alloc] init];
    UINavigationController *afNav = [[UINavigationController alloc] initWithRootViewController:afvc];
    afvc.tabBarItem.image = [UIImage imageNamed:@"食材大全.png"];
    
    DZThrepyViewController *tvc = [[DZThrepyViewController alloc] init];
    UINavigationController *tNav = [[UINavigationController alloc] initWithRootViewController:tvc];
    tvc.tabBarItem.image = [UIImage imageNamed:@"对症食疗.png"];
    
    //self.tabBar.barTintColor = [UIColor colorWithPatternImage: [UIImage imageWithColor: [UIColor colorWithRed:1./255. green:1./255. blue:1./255. alpha:1]]];
    //self.tabBar.barTintColor = [UIColor colorWithRed:61.0 green:159.0 blue:179.0 alpha:1.0];
    self.tabBar.barTintColor = [UIColor colorWithPatternImage:[UIImage imageWithColor:[UIColor colorWithRed:1/61. green:1/159. blue:1/179. alpha:1]]];
    self.viewControllers = @[rvcNav,afNav,tNav];
    
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
