//
//  ViewController.m
//  图片加水印
//
//  Created by SethYin on 2017/1/10.
//  Copyright © 2017年 yanhuihui. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *image;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImage *image = [UIImage imageNamed:@"3"];
    //开启一个和图片原始大小的上下文
    UIGraphicsBeginImageContextWithOptions(image.size, NO, 0);
    //把图片绘制到上下文中
    [image drawAtPoint:CGPointZero ];
    //把文字绘制到上下文中
    NSString *str = @"huihui";
    [str drawAtPoint:CGPointMake(image.size.width-50, image.size.height-30 ) withAttributes:nil];
    //从上下文当中生成一张图片
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    //关闭上下文
    UIGraphicsEndImageContext();
    
    self.image.image = newImage;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
