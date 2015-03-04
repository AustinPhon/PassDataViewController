//
//  ViewController.m
//  PassDataViewController
//
//  Created by Mobile C&C on 3/4/15.
//  Copyright (c) 2015 XcodeBeginner. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController () 

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [_txtFirstView setText:@""];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)btnSecondViewController:(id)sender {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    SecondViewController *secondview = [storyboard instantiateViewControllerWithIdentifier:@"SecondView"];
    [secondview setDelegate:self]; //it is import without it your data can not send back
    [secondview setData:_txtFirstView.text];
    [_txtFirstView resignFirstResponder];
    [self.navigationController pushViewController:secondview animated:YES];
}

-(void)dataFromController:(NSString *)data
{
    _lblFirstView.text = data;
}
@end
