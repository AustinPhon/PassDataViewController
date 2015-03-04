//
//  SecondViewController.m
//  PassDataViewController
//
//  Created by Mobile C&C on 3/4/15.
//  Copyright (c) 2015 XcodeBeginner. All rights reserved.
//

#import "SecondViewController.h"
#import "ViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize data, delegate=_delegate;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.hidesBackButton = YES;
    [_lblSecondView setText:data];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)FirstViewController:(id)sender {
    [[self delegate] dataFromController:_txtsecondview.text];
    [self.navigationController popViewControllerAnimated:YES];
}
@end
