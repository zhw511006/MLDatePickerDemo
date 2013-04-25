//
//  MLDatePicker.m
//  NewPeek2
//
//  Created by Tyler on 13-4-18.
//  Copyright (c) 2013年 Delaware consulting. All rights reserved.
//

#import "MLDatePicker.h"

@interface MLDatePicker ()
{
	UIDatePicker *_dpCurrent;
}

@end

@implementation MLDatePicker

- (id)initWithDefaultDate:(NSDate *)pDefaultDate
           datePickerMode:(UIDatePickerMode)pDatePickerMode
{
    if (self = [super init]) {
        self.title = @" ";
		
		_dpCurrent = [[UIDatePicker alloc] initWithFrame:CGRectMake(0.0, 44.0, 0.0, 0.0)];
        _dpCurrent.maximumDate = [NSDate date];
        _dpCurrent.date = pDefaultDate != nil ? pDefaultDate : [NSDate date];
        _dpCurrent.datePickerMode = pDatePickerMode;
		
		UIToolbar *tooDate = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, 320, 44)];
		tooDate.barStyle = UIBarStyleBlackTranslucent;
		[tooDate sizeToFit];
		
		NSMutableArray *maBarItems = [[NSMutableArray alloc] init];
        
        UIBarButtonItem *bbiCancel = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel
                                                                                   target:self
                                                                                   action:@selector(handleHide:)];
        
		[maBarItems addObject:bbiCancel];
		
		UIBarButtonItem *bbiFlexSpace = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace
																					  target:self
																					  action:nil];
		[maBarItems addObject:bbiFlexSpace];
        
        UIBarButtonItem *bbiDone = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone
                                                                                 target:self
                                                                                 action:@selector(handleDone:)];
		[maBarItems addObject:bbiDone];
		
		[tooDate setItems:maBarItems animated:YES];
		
		[self addSubview:tooDate];
		[self addSubview:_dpCurrent];
    }
    
    return self;
}

- (void)showInView:(UIView *)view
{
    [super showInView:view];
    
    [self setBounds:CGRectMake(0, 0, 320, 475)];
}

- (void)handleDone:(id)sender
{
    if (self.delegateForML != nil && [self.delegateForML respondsToSelector:@selector(handleCompletionForMLDatePicker:)]) {
        [self.delegateForML handleCompletionForMLDatePicker:_dpCurrent.date];
    }
    
    [self dismissWithClickedButtonIndex:0 animated:YES];
}

- (void)handleHide:(id)sender
{
	[self dismissWithClickedButtonIndex:0 animated:YES];
}

@end
