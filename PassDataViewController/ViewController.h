//
//  ViewController.h
//  PassDataViewController
//
//  Created by Mobile C&C on 3/4/15.
//  Copyright (c) 2015 XcodeBeginner. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController<SecondViewControllerDelegate>

@property (strong, nonatomic) IBOutlet UITextField *txtFirstView;
@property (strong, nonatomic) IBOutlet UILabel *lblFirstView;

- (IBAction)btnSecondViewController:(id)sender;

@end

