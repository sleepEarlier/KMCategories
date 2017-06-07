//
//  ViewController.m
//  KMCategory
//
//  Created by kimiLin on 2017/6/7.
//  Copyright © 2017年 KimiLin. All rights reserved.
//

#import "ViewController.h"
#import "NSString+KMExtension.h"
#import "UIDevice+KMExtension.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [UIDevice vibrate];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
