//
//  SecondViewController.h
//  PassDataViewController
//
//  Created by Mobile C&C on 3/4/15.
//  Copyright (c) 2015 XcodeBeginner. All rights reserved.
//

#import <UIKit/UIKit.h>
@protocol SecondViewControllerDelegate <NSObject>
@required
- (void)dataFromController:(NSString *)data;
@end

@interface SecondViewController : UIViewController 
@property (nonatomic, retain) NSString *data;
@property (retain) id<SecondViewControllerDelegate> delegate;
@property (strong, nonatomic) IBOutlet UITextField *txtsecondview;
@property (strong, nonatomic) IBOutlet UILabel *lblSecondView;

- (IBAction)FirstViewController:(id)sender;

@end
