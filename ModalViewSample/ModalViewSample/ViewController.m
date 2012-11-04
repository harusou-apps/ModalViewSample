//
//  ViewController.m
//  ModalViewSample
//
//  Created by okada yuichi on 12/11/04.
//  Copyright (c) 2012年 harusou apps. All rights reserved.
//

#import "ViewController.h"
#import "ModalViewController.h"

@interface ViewController ()<ModalViewControllerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
- (void)loadView
{
    [super loadView];
    
    self.view.backgroundColor = [UIColor greenColor];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [btn setTitle:@"openModalView" forState:UIControlStateNormal];
    [btn sizeToFit];
    [btn addTarget:self action:@selector(openModalView) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:btn];
    

}
-(void)openModalView{

    ModalViewController* modalView = [[[ModalViewController alloc] init] autorelease];
    
    modalView.delegate = self;
    
    UINavigationController* nav = [[[UINavigationController alloc] initWithRootViewController:modalView] autorelease];
    
    //[self presentModalViewController:nav animated:YES];
    [self presentViewController:nav animated:YES completion: nil];
    
}
-(void)didCancel{

    [self dismissViewControllerAnimated:YES completion: nil];
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
