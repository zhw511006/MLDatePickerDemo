//
//  ViewController.m
//  MLDatePickerDemo
//
//  Created by Tyler on 4/25/13.
//  Copyright (c) 2013 Tyler. All rights reserved.
//

#import "ViewController.h"

#import "MLDatePicker.h"

@interface ViewController () <MLDatePickerDelegate>
{
    
}

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}
- (IBAction)actionForDatePikcer:(id)sender
{
    MLDatePicker *dp = [[MLDatePicker alloc] initWithDefaultDate:[NSDate date]
                                                  datePickerMode:UIDatePickerModeDate];
    dp.delegateForML = self;
    
    [dp showInView:self.view];
}

#pragma mark - MLDatePickerDelegate

- (void)handleCompletionForMLDatePicker:(NSDate *)pDate
{
    NSLog(@"%@", pDate);
}

@end
