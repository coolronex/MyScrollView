//
//  ViewController.m
//  MyScrollView
//
//  Created by Aaron Chong on 1/29/18.
//  Copyright © 2018 Aaron Chong. All rights reserved.
//

#import "ViewController.h"
#import "MyScrollView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // https://oleb.net/blog/2014/04/understanding-uiscrollview/ // Helpful guide and reference to this exercise
    
    MyScrollView *mainView = [[MyScrollView alloc] initWithFrame:self.view.frame];
    [self.view addSubview:mainView];
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(20, 20, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    [mainView addSubview:redView];
    
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(150, 150, 150, 200)];
    greenView.backgroundColor = [UIColor greenColor];
    [mainView addSubview:greenView];
    
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(40, 400, 200, 150)];
    blueView.backgroundColor = [UIColor blueColor];
    [mainView addSubview:blueView];
    
    UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(100, 600, 180, 150)];
    yellowView.backgroundColor = [UIColor yellowColor];
    [mainView addSubview:yellowView];
    
    CGSize newContent = CGSizeMake(self.view.frame.size.width, 750.0);
    mainView.contentSize = newContent;
}




@end
